.class public final Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;
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

.field private final floatingContentCoordinatorProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
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

.field private final menuPhoneControllerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;"
        }
    .end annotation
.end field

.field private final pipBoundsAlgorithmProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final pipBoundsStateProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;"
        }
    .end annotation
.end field

.field private final pipMotionHelperProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final pipSizeSpecHandlerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final pipTaskOrganizerProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
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

.field private final shellInitProvider:Lg4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg4/a<",
            "Lcom/android/wm/shell/sysui/ShellInit;",
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
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->contextProvider:Lg4/a;

    iput-object p2, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->shellInitProvider:Lg4/a;

    iput-object p3, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->menuPhoneControllerProvider:Lg4/a;

    iput-object p4, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipBoundsAlgorithmProvider:Lg4/a;

    iput-object p5, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipBoundsStateProvider:Lg4/a;

    iput-object p6, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    iput-object p7, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipTaskOrganizerProvider:Lg4/a;

    iput-object p8, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipMotionHelperProvider:Lg4/a;

    iput-object p9, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->floatingContentCoordinatorProvider:Lg4/a;

    iput-object p10, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipUiEventLoggerProvider:Lg4/a;

    iput-object p11, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->mainExecutorProvider:Lg4/a;

    return-void
.end method

.method public static create(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;
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
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsAlgorithm;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipBoundsState;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/FloatingContentCoordinator;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/pip/PipUiEventLogger;",
            ">;",
            "Lg4/a<",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ">;)",
            "Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;"
        }
    .end annotation

    new-instance v12, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;

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

    invoke-direct/range {v0 .. v11}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;-><init>(Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;Lg4/a;)V

    return-object v12
.end method

.method public static providePipTouchHandler(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/wm/shell/dagger/WMShellModule;->providePipTouchHandler(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/wm/shell/pip/phone/PipTouchHandler;
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->contextProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->shellInitProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/wm/shell/sysui/ShellInit;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->menuPhoneControllerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipBoundsAlgorithmProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipBoundsStateProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/wm/shell/pip/PipBoundsState;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipSizeSpecHandlerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipTaskOrganizerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipMotionHelperProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->floatingContentCoordinatorProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    iget-object v0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->pipUiEventLoggerProvider:Lg4/a;

    invoke-interface {v0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/wm/shell/pip/PipUiEventLogger;

    iget-object p0, p0, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->mainExecutorProvider:Lg4/a;

    invoke-interface {p0}, Lg4/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v11, p0

    check-cast v11, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static/range {v1 .. v11}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->providePipTouchHandler(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip/PipBoundsState;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/FloatingContentCoordinator;Lcom/android/wm/shell/pip/PipUiEventLogger;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/dagger/WMShellModule_ProvidePipTouchHandlerFactory;->get()Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-result-object p0

    return-object p0
.end method
