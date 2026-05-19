.class public final Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;
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

.field private final pipMenuControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
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

.field private final pipTransitionStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
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

.field private final transitionsProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
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


# direct methods
.method public constructor <init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V
    .registers 12
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
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
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
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->shellInitProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->shellTaskOrganizerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->transitionsProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->tvPipBoundsStateProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipTransitionStateProvider:Lg4/a;

    iput-object p8, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipMenuControllerProvider:Lg4/a;

    iput-object p9, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->tvPipBoundsAlgorithmProvider:Lg4/a;

    iput-object p10, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipAnimationControllerProvider:Lg4/a;

    iput-object p11, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipSurfaceTransactionHelperProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;
    .registers 24
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
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/transition/Transitions;",
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
            "Lcom/android/wm/shell/pip/tv/TvPipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;",
            ">;)",
            "Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;"
        }
    .end annotation

    new-instance v12, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v12
.end method

.method public static provideTvPipTransition(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipTransitionController;
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/wm/shell/dagger/TvPipModule;->provideTvPipTransition(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipTransitionController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/PipTransitionController;
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->shellTaskOrganizerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->transitionsProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/transition/Transitions;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->tvPipBoundsStateProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipDisplayLayoutStateProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipTransitionStateProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/pip/PipTransitionState;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipMenuControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/pip/tv/TvPipMenuController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->tvPipBoundsAlgorithmProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipAnimationControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->pipSurfaceTransactionHelperProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-static/range {v1 .. v11}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->provideTvPipTransition(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/pip/tv/TvPipBoundsState;Lcom/android/wm/shell/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/tv/TvPipMenuController;Lcom/android/wm/shell/pip/tv/TvPipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;)Lcom/android/wm/shell/pip/PipTransitionController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/TvPipModule_ProvideTvPipTransitionFactory;->get()Lcom/android/wm/shell/pip/PipTransitionController;

    move-result-object p0

    return-object p0
.end method
