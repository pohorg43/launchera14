.class public Lcom/android/launcher3/testing/TestInformationHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

.field public mLauncherAppState:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/Launcher;)[I
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$10(Lcom/android/launcher3/Launcher;)[I

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/app/Activity;)Landroid/graphics/Insets;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e()Ljava/lang/Boolean;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$2()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic f(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/app/Activity;)Landroid/graphics/Insets;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$7(Landroid/app/Activity;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .registers 13

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    const/4 p2, 0x2

    new-array p3, p2, [I

    iget p4, v6, Landroid/graphics/Rect;->left:I

    const/4 p5, 0x0

    aput p4, p3, p5

    iget p4, v6, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x1

    aput p4, p3, v0

    new-array p2, p2, [I

    iget p4, v6, Landroid/graphics/Rect;->right:I

    aput p4, p2, p5

    iget p4, v6, Landroid/graphics/Rect;->bottom:I

    aput p4, p2, v0

    invoke-virtual {p0, p1, p3}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    aget p0, p3, p5

    aget p1, p3, v0

    aget p3, p2, p5

    aget p2, p2, v0

    invoke-virtual {v6, p0, p1, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object v6
.end method

.method public static getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Lcom/android/launcher3/Launcher;",
            "TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher/folder/download/model/a;

    invoke-direct {v1, v0}, Lcom/android/launcher/folder/download/model/a;-><init>(Lcom/android/launcher3/util/ActivityTracker;)V

    invoke-static {p0, p1, v1}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TS;TT;>;",
            "Ljava/util/function/Supplier<",
            "TS;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/testing/l;

    invoke-direct {v1, p2, p1, p0}, Lcom/android/launcher3/testing/l;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_11
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_12
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic h(Lcom/android/launcher3/testing/TestInformationHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$getUIProperty$12(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$11(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherState;->getVerticalProgress(Lcom/android/launcher3/Launcher;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAllAppsController()Lcom/android/launcher3/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsTransitionController;->getShiftRange()F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$call$1(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->isLauncherInitialized()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$10(Lcom/android/launcher3/Launcher;)[I
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result p0

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method private static synthetic lambda$call$11(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;Lcom/android/launcher3/Launcher;)Landroid/graphics/Point;
    .registers 9

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget v3, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellX:I

    iget v4, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->cellY:I

    iget v5, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanX:I

    iget v6, p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;->spanY:I

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/testing/TestInformationHandler;->getDescendantRectRelativeToDragLayerForCell(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object p0

    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method private static synthetic lambda$call$2()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static synthetic lambda$call$3(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->enableDeferUpdates(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$call$4(Lcom/android/launcher3/Launcher;)Ljava/lang/Boolean;
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->disableDeferUpdates(I)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$call$5(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$6(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet;->getWidgetsView(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/picker/WidgetsRecyclerView;->getCurrentScrollY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$7(Landroid/app/Activity;)Landroid/graphics/Insets;
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$8(Landroid/app/Activity;)Landroid/graphics/Insets;
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$call$9(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/states/RotationHelper;->forceAllowRotationForTesting(Z)V

    return-void
.end method

.method private static synthetic lambda$getUIProperty$12(Ljava/util/function/Supplier;Ljava/util/function/Function;Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;)Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "response"

    invoke-interface {p2, p1, v0, p0}, Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;->set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic m(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/testing/TestInformationHandler;->lambda$call$0(Lcom/android/launcher3/Launcher;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/android/launcher3/testing/TestInformationHandler;
    .registers 3

    const-class v0, Lcom/android/launcher3/testing/TestInformationHandler;

    const v1, 0x7f120622

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_18

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "has-touch-interaction-service"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_1f2

    goto/16 :goto_121

    :sswitch_29
    const-string/jumbo v2, "start-drag-threshold"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_34

    goto/16 :goto_121

    :cond_34
    const/16 v1, 0x12

    goto/16 :goto_121

    :sswitch_38
    const-string v2, "icon-height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto/16 :goto_121

    :cond_42
    const/16 v1, 0x11

    goto/16 :goto_121

    :sswitch_46
    const-string v2, "freeze-app-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    goto/16 :goto_121

    :cond_50
    const/16 v1, 0x10

    goto/16 :goto_121

    :sswitch_54
    const-string/jumbo v2, "target-insets"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto/16 :goto_121

    :cond_5f
    const/16 v1, 0xf

    goto/16 :goto_121

    :sswitch_63
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto/16 :goto_121

    :cond_6b
    const/16 v1, 0xe

    goto/16 :goto_121

    :sswitch_6f
    const-string/jumbo v2, "workspace-cell-center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    goto/16 :goto_121

    :cond_7a
    const/16 v1, 0xd

    goto/16 :goto_121

    :sswitch_7e
    const-string/jumbo v2, "widgets-scroll-y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_89

    goto/16 :goto_121

    :cond_89
    const/16 v1, 0xc

    goto/16 :goto_121

    :sswitch_8d
    const-string v2, "home-to-all-apps-swipe-height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_97

    goto/16 :goto_121

    :cond_97
    const/16 v1, 0xb

    goto/16 :goto_121

    :sswitch_9b
    const-string/jumbo v2, "window-insets"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a6

    goto/16 :goto_121

    :cond_a6
    const/16 v1, 0xa

    goto/16 :goto_121

    :sswitch_aa
    const-string v2, "enable_rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b4

    goto/16 :goto_121

    :cond_b4
    const/16 v1, 0x9

    goto/16 :goto_121

    :sswitch_b8
    const-string/jumbo v2, "mock-sensor-rotation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c3

    goto/16 :goto_121

    :cond_c3
    const/16 v1, 0x8

    goto/16 :goto_121

    :sswitch_c7
    const-string/jumbo v2, "unfreeze-app-list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d1

    goto :goto_121

    :cond_d1
    const/4 v1, 0x7

    goto :goto_121

    :sswitch_d3
    const-string v2, "is-launcher-initialized"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_dc

    goto :goto_121

    :cond_dc
    const/4 v1, 0x6

    goto :goto_121

    :sswitch_de
    const-string v2, "apps-list-scroll-y"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e7

    goto :goto_121

    :cond_e7
    const/4 v1, 0x5

    goto :goto_121

    :sswitch_e9
    const-string v2, "get-had-nontest-events"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f2

    goto :goto_121

    :cond_f2
    const/4 v1, 0x4

    goto :goto_121

    :sswitch_f4
    const-string/jumbo v2, "set-force-pause-timeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fe

    goto :goto_121

    :cond_fe
    const/4 v1, 0x3

    goto :goto_121

    :sswitch_100
    const-string/jumbo v2, "workspace-cell-layout-size"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10a

    goto :goto_121

    :cond_10a
    const/4 v1, 0x2

    goto :goto_121

    :sswitch_10c
    const-string v2, "is-two-panel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_115

    goto :goto_121

    :cond_115
    move v1, v4

    goto :goto_121

    :sswitch_117
    const-string v2, "is-tablet"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_120

    goto :goto_121

    :cond_120
    move v1, v5

    :goto_121
    const/4 p1, 0x0

    const-string/jumbo v2, "response"

    packed-switch v1, :pswitch_data_240

    return-object p1

    :pswitch_129  #0x12
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07071a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    const p2, 0x7f070d1d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_142  #0x11
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :pswitch_14a  #0x10
    sget-object p0, Lcom/android/launcher3/model/b2;->b:Lcom/android/launcher3/model/b2;

    sget-object p1, Lcom/android/launcher3/testing/e;->b:Lcom/android/launcher3/testing/e;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_153  #0xf
    sget-object p1, Lcom/android/launcher3/testing/i;->a:Lcom/android/launcher3/testing/i;

    sget-object p2, Lcom/android/launcher3/testing/b;->b:Lcom/android/launcher3/testing/b;

    new-instance p3, Lcom/android/launcher/layout/f;

    invoke-direct {p3, p0}, Lcom/android/launcher/layout/f;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_161  #0xe
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_165  #0xd
    const-string/jumbo p0, "request"

    invoke-virtual {p3, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;

    sget-object p1, Lk0/a;->b:Lk0/a;

    new-instance p2, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {p2, p0}, Lcom/android/launcher3/dragndrop/f;-><init>(Lcom/android/launcher3/testing/WorkspaceCellCenterRequest;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_17a  #0xc
    sget-object p0, Lcom/android/launcher3/testing/a;->a:Lcom/android/launcher3/testing/a;

    sget-object p1, Lcom/android/launcher3/testing/n;->a:Lcom/android/launcher3/testing/n;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_183  #0xb
    sget-object p0, Lcom/android/launcher3/model/w0;->b:Lcom/android/launcher3/model/w0;

    sget-object p1, Lcom/android/launcher3/testing/c;->b:Lcom/android/launcher3/testing/c;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_18c  #0xa
    sget-object p1, Lcom/android/launcher3/t2;->b:Lcom/android/launcher3/t2;

    sget-object p2, Lcom/android/launcher3/model/m1;->c:Lcom/android/launcher3/model/m1;

    new-instance p3, Lcom/android/launcher/layout/e;

    invoke-direct {p3, p0}, Lcom/android/launcher/layout/e;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_19a  #0x9
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance p3, Lcom/android/launcher3/model/b1;

    invoke-direct {p3, p2}, Lcom/android/launcher3/model/b1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p1

    :pswitch_1a5  #0x8
    sput-boolean v4, Lcom/android/launcher3/testing/TestProtocol;->sDisableSensorRotation:Z

    return-object v0

    :pswitch_1a8  #0x7
    sget-object p0, Lcom/android/launcher3/testing/h;->a:Lcom/android/launcher3/testing/h;

    sget-object p1, Lcom/android/launcher3/allapps/e;->e:Lcom/android/launcher3/allapps/e;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1b1  #0x6
    sget-object p1, Lcom/android/launcher3/testing/g;->b:Lcom/android/launcher3/testing/g;

    new-instance p2, Lcom/android/launcher3/testing/m;

    invoke-direct {p2, p0}, Lcom/android/launcher3/testing/m;-><init>(Lcom/android/launcher3/testing/TestInformationHandler;)V

    sget-object p0, Lcom/android/launcher3/testing/f;->a:Lcom/android/launcher3/testing/f;

    invoke-static {p1, p2, p0}, Lcom/android/launcher3/testing/TestInformationHandler;->getUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;Ljava/util/function/Supplier;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1bf  #0x5
    sget-object p0, Lcom/android/launcher3/testing/k;->a:Lcom/android/launcher3/testing/k;

    sget-object p1, Lcom/android/launcher3/testing/o;->a:Lcom/android/launcher3/testing/o;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1c8  #0x4
    sget-boolean p0, Lcom/android/launcher3/testing/TestLogging;->sHadEventsNotFromTest:Z

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_1ce  #0x3
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/android/launcher3/testing/TestProtocol;->sForcePauseTimeout:Ljava/lang/Long;

    return-object v0

    :pswitch_1d9  #0x2
    sget-object p0, Lcom/android/launcher3/testing/j;->a:Lcom/android/launcher3/testing/j;

    sget-object p1, Lcom/android/launcher3/testing/d;->b:Lcom/android/launcher3/testing/d;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->getLauncherUIProperty(Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;Ljava/util/function/Function;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1e2  #0x1
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :pswitch_1ea  #0x0
    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :sswitch_data_1f2
    .sparse-switch
        -0x6dd7a797 -> :sswitch_117
        -0x48da05a0 -> :sswitch_10c
        -0x36ccc0ef -> :sswitch_100
        -0x300a94c3 -> :sswitch_f4
        -0x2c10c6e0 -> :sswitch_e9
        -0x25d3e253 -> :sswitch_de
        -0x1405cf16 -> :sswitch_d3
        -0x7e26c79 -> :sswitch_c7
        -0x7f4a12 -> :sswitch_b8
        0x6f79eba -> :sswitch_aa
        0x6fb0373 -> :sswitch_9b
        0x11da58c5 -> :sswitch_8d
        0x1ceb16d7 -> :sswitch_7e
        0x1e8681e8 -> :sswitch_6f
        0x23b480f9 -> :sswitch_63
        0x2c0406b2 -> :sswitch_54
        0x2dcdc740 -> :sswitch_46
        0x7a5274fb -> :sswitch_38
        0x7f975bdd -> :sswitch_29
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_1ea  #00000000
        :pswitch_1e2  #00000001
        :pswitch_1d9  #00000002
        :pswitch_1ce  #00000003
        :pswitch_1c8  #00000004
        :pswitch_1bf  #00000005
        :pswitch_1b1  #00000006
        :pswitch_1a8  #00000007
        :pswitch_1a5  #00000008
        :pswitch_19a  #00000009
        :pswitch_18c  #0000000a
        :pswitch_183  #0000000b
        :pswitch_17a  #0000000c
        :pswitch_165  #0000000d
        :pswitch_161  #0000000e
        :pswitch_153  #0000000f
        :pswitch_14a  #00000010
        :pswitch_142  #00000011
        :pswitch_129  #00000012
    .end packed-switch
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .registers 1

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mLauncherAppState:Lcom/android/launcher3/LauncherAppState;

    return-void
.end method

.method public isLauncherInitialized()Z
    .registers 2

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/launcher3/testing/TestInformationHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->isModelLoaded()Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method
