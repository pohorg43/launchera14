.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;,
        Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;,
        Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
        ">;",
        "Lcom/android/wm/shell/transition/Transitions$TransitionHandler;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDesktopTasksController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DesktopTasksController.kt\ncom/android/wm/shell/desktopmode/DesktopTasksController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,699:1\n1#2:700\n1#2:716\n286#3,2:701\n286#3,2:703\n1052#3:705\n1601#3,9:706\n1849#3:715\n1850#3:717\n1610#3:718\n1849#3,2:719\n286#3,2:721\n1741#3,3:723\n2468#3,3:726\n*S KotlinDebug\n*F\n+ 1 DesktopTasksController.kt\ncom/android/wm/shell/desktopmode/DesktopTasksController\n*L\n356#1:716\n293#1:701,2\n296#1:703,2\n355#1:705\n356#1:706,9\n356#1:715\n356#1:717\n356#1:718\n357#1:719,2\n363#1:721,2\n426#1:723,3\n443#1:726,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;

.field private static final DESKTOP_DENSITY_ALLOWED_RANGE:Ly4/d;

.field private static final DESKTOP_DENSITY_OVERRIDE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

.field private final desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

.field private final displayController:Lcom/android/wm/shell/common/DisplayController;

.field private final enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

.field private final exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

.field private final mOnAnimationFinishedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private final mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field private final shellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final transitions:Lcom/android/wm/shell/transition/Transitions;

.field private visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->Companion:Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;

    const-string/jumbo v0, "persist.wm.debug.desktop_mode_density"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    new-instance v0, Ly4/d;

    const/16 v1, 0x64

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Ly4/d;-><init>(II)V

    sput-object v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_ALLOWED_RANGE:Ly4/d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 14
    .param p12  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shellInit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shellController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shellTaskOrganizer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "syncQueue"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rootTaskDisplayAreaOrganizer"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transitions"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enterDesktopTaskTransitionHandler"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitDesktopTaskTransitionHandler"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desktopModeTaskRepository"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mainExecutor"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p6, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p7, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iput-object p8, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p9, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    iput-object p10, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iput-object p11, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iput-object p12, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/launcher/guide/side/e;

    invoke-direct {p1, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    new-instance p1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result p1

    if-eqz p1, :cond_78

    new-instance p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_78
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->onInit()V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->onInit$lambda$2(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDESKTOP_DENSITY_ALLOWED_RANGE$cp()Ly4/d;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_ALLOWED_RANGE:Ly4/d;

    return-object v0
.end method

.method public static final synthetic access$getDESKTOP_DENSITY_OVERRIDE$cp()I
    .registers 1

    sget v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    return v0
.end method

.method public static final synthetic access$getMainExecutor$p(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method private final addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-object v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->Companion:Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;->isDesktopDensityOverrideSet()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getDesktopDensityDpi()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_17
    return-void
.end method

.method private final addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    sget-object v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->Companion:Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;->isDesktopDensityOverrideSet()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getFullscreenDensityDpi()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_17
    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->_init_$lambda$1(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-void
.end method

.method private final bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V
    .registers 7

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "DesktopTasksController: bringDesktopAppsToFront"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveTasks(I)Landroid/util/ArraySet;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getFreeformTasksInZOrder()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$bringDesktopAppsToFront$$inlined$sortedByDescending$1;-><init>(Ljava/util/List;)V

    invoke-static {p1, v1}, Li4/v;->b0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const-string/jumbo v3, "taskId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_53
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_53

    :cond_66
    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback$lambda$0(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private final createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$IDesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    return-object v0
.end method

.method public static synthetic d(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator$lambda$12(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private final getDesktopDensityDpi()I
    .registers 1

    sget p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_DENSITY_OVERRIDE:I

    return p0
.end method

.method private final getFreeformTransitionStatusBarDragThreshold(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private final getFullscreenDensityDpi()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    return p0
.end method

.method private final getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_13

    iget p0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public static final isDesktopDensityOverrideSet()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->Companion:Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;->isDesktopDensityOverrideSet()Z

    move-result v0

    return v0
.end method

.method private static final mOnAnimationFinishedCallback$lambda$0(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->releaseVisualIndicator(Landroid/view/SurfaceControl$Transaction;)V

    :cond_13
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    return-void
.end method

.method private final moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    move-result-object p0

    const-string/jumbo v0, "shellTaskOrganizer\n     …gTasks(context.displayId)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    move v2, v1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    if-eqz v2, :cond_16

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_3d
    return-void
.end method

.method private final moveToDesktopWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V
    .registers 8

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTasksController: moveToDesktop with animation taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    const-string/jumbo v2, "taskInfo.getToken()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    const/16 p2, 0x3f3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;Ljava/util/function/Consumer;)V

    goto :goto_47

    :cond_3f
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    :goto_47
    return-void
.end method

.method private final moveToDisplay(Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .registers 9

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "moveToDisplay: taskId=%d displayId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v2, p2, :cond_2a

    new-array p0, v4, [Ljava/lang/Object;

    const-string/jumbo p1, "moveToDisplay: task already on display"

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2a
    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v2, p2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayAreaInfo(I)Landroid/window/DisplayAreaInfo;

    move-result-object p2

    if-nez p2, :cond_3b

    new-array p0, v4, [Ljava/lang/Object;

    const-string/jumbo p1, "moveToDisplay: display not found"

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3b
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p2, p2, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2, v5}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_53

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x6

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_58

    :cond_53
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_58
    return-void
.end method

.method private final moveToFullscreenWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V
    .registers 8

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTasksController: moveToFullscreen with animation taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string/jumbo v1, "task.token"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_33

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    const/16 v1, 0x3f4

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1, v1, v0, p2, p0}, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    goto :goto_3b

    :cond_33
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    :goto_3b
    return-void
.end method

.method private final onInit()V
    .registers 5

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Initialize DesktopTasksController"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher/layout/d;

    invoke-direct {v1, p0}, Lcom/android/launcher/layout/d;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    const-string v2, "extra_shell_desktop_mode"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method private static final onInit$lambda$2(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method private final releaseVisualIndicator()V
    .registers 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->releaseVisualIndicator(Landroid/view/SurfaceControl$Transaction;)V

    :cond_c
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/desktopmode/g;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/desktopmode/g;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private static final releaseVisualIndicator$lambda$12(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const-string v0, "$t"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void
.end method


# virtual methods
.method public final addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final asDesktopMode()Lcom/android/wm/shell/desktopmode/DesktopMode;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    return-object p0
.end method

.method public final cancelMoveToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V
    .registers 8

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTasksController: cancelMoveToFreeform taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string/jumbo v1, "task.token"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_3d

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->startCancelMoveToDesktopMode(Landroid/window/WindowContainerTransaction;Landroid/graphics/Point;Ljava/util/function/Consumer;)V

    goto :goto_45

    :cond_3d
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    :goto_45
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final getTaskWindowingMode(I)I
    .registers 2
    .annotation runtime Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public final getVisibleTaskCount(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result p0

    return p0
.end method

.method public handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .registers 12

    const-string/jumbo v0, "transition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1d

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1d

    goto :goto_23

    :cond_1d
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-nez p1, :cond_25

    :goto_23
    move p1, v1

    goto :goto_46

    :cond_25
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p1

    if-eq p1, v2, :cond_30

    goto :goto_23

    :cond_30
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    if-eq p1, v2, :cond_45

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    if-eq p1, v0, :cond_45

    goto :goto_23

    :cond_45
    move p1, v2

    :goto_46
    const/4 v3, 0x0

    if-nez p1, :cond_4a

    return-object v3

    :cond_4a
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    const-string/jumbo p2, "request.triggerTask"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p2, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveTasks(I)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const-string/jumbo v5, "task.token"

    const-string v6, "it"

    if-ne v4, v2, :cond_b6

    instance-of v4, p2, Ljava/util/Collection;

    if-eqz v4, :cond_73

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_73

    :cond_71
    move v4, v1

    goto :goto_93

    :cond_73
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    iget-object v8, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isVisibleTask(I)Z

    move-result v7

    if-eqz v7, :cond_77

    move v4, v2

    :goto_93
    if-eqz v4, :cond_b6

    sget-object p2, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "DesktopTasksController: switch fullscreen task to freeform on transition taskId=%d"

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    return-object p2

    :cond_b6
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v0, :cond_10b

    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_c8

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c8

    :cond_c6
    move p2, v2

    goto :goto_e8

    :cond_c8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_cc
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isVisibleTask(I)Z

    move-result v0

    if-eqz v0, :cond_cc

    move p2, v1

    :goto_e8
    if-eqz p2, :cond_10b

    sget-object p2, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "DesktopTasksController: switch freeform task to fullscreen oon transition taskId=%d"

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    return-object p2

    :cond_10b
    return-object v3
.end method

.method public final moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 8

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "DesktopTasksController: moveTaskToFront taskId=%d"

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_31

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_36

    :cond_31
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_36
    return-void
.end method

.method public final moveToDesktop(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDesktop(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_b
    return-void
.end method

.method public final moveToDesktop(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 7

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTasksController: moveToDesktop taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string/jumbo v1, "task.token"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_3c

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_41

    :cond_3c
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_41
    return-void
.end method

.method public final moveToFreeform(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V
    .registers 8

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "startBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTasksController: moveToFreeform with bounds taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object v1

    const-string/jumbo v2, "taskInfo.getToken()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_49

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    const/16 p2, 0x3f2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1, p2, v0, p0}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->startTransition(ILandroid/window/WindowContainerTransaction;Ljava/util/function/Consumer;)V

    goto :goto_4e

    :cond_49
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_4e
    return-void
.end method

.method public final moveToFullscreen(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToFullscreen(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_b
    return-void
.end method

.method public final moveToFullscreen(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 7

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTasksController: moveToFullscreen taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const-string/jumbo v1, "task.token"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/window/WindowContainerToken;)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_37

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_3c

    :cond_37
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_3c
    return-void
.end method

.method public final moveToNextDisplay(I)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1d

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string/jumbo p1, "moveToNextDisplay: taskId=%d not found"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1d
    sget-object v3, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v2

    iget p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v1

    const-string/jumbo p1, "moveToNextDisplay: taskId=%d taskDisplayId=%d"

    invoke-virtual {v3, v4, p1, v5}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayIds()[I

    move-result-object p1

    const-string/jumbo v3, "rootTaskDisplayAreaOrganizer.displayIds"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "<this>"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v4, p1

    new-array v5, v4, [Ljava/lang/Integer;

    array-length v6, p1

    move v7, v2

    :goto_51
    if-ge v7, v6, :cond_5e

    aget v8, p1, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    :cond_5e
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-le v4, v1, :cond_66

    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_66
    invoke-static {v5}, Li4/j;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget v7, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-le v6, v7, :cond_86

    move v6, v1

    goto :goto_87

    :cond_86
    move v6, v2

    :goto_87
    if-eqz v6, :cond_6e

    goto :goto_8b

    :cond_8a
    move-object v4, v5

    :goto_8b
    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_b1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_93
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ge v4, v6, :cond_aa

    move v4, v1

    goto :goto_ab

    :cond_aa
    move v4, v2

    :goto_ab
    if-eqz v4, :cond_93

    move-object v5, v3

    :cond_ae
    move-object v4, v5

    check-cast v4, Ljava/lang/Integer;

    :cond_b1
    if-nez v4, :cond_c0

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v1, "moveToNextDisplay: next display not found"

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_c0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDisplay(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return-void
.end method

.method public final onDragPositioningEnd(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V
    .registers 5

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "position"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    if-gt v1, v0, :cond_1e

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1e

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToFullscreenWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V

    :cond_1e
    return-void
.end method

.method public final onDragPositioningEndThroughStatusBar(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V
    .registers 4

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "freeformBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDesktopWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onDragPositioningMove(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;F)V
    .registers 14

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_43

    invoke-direct {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_38

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-nez v1, :cond_38

    new-instance p3, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v6, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v9, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v2, p3

    move-object v4, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    invoke-virtual {p3}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->createFullscreenIndicatorWithAnimatedBounds()V

    goto :goto_43

    :cond_38
    cmpl-float p1, p3, v0

    if-lez p1, :cond_43

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-eqz p1, :cond_43

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    :cond_43
    :goto_43
    return-void
.end method

.method public final onDragPositioningMoveThroughStatusBar(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;F)V
    .registers 13

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getStatusBarHeight(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_16

    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-nez v0, :cond_31

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v8, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v1, v0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->createFullscreenIndicator()V

    :cond_31
    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-nez p2, :cond_36

    return-void

    :cond_36
    invoke-direct {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getFreeformTransitionStatusBarDragThreshold(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p3, p0

    if-ltz p0, :cond_49

    invoke-virtual {p2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->isFullscreen()Z

    move-result p0

    if-eqz p0, :cond_52

    invoke-virtual {p2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->transitionFullscreenIndicatorToFreeform()V

    goto :goto_52

    :cond_49
    invoke-virtual {p2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->isFullscreen()Z

    move-result p0

    if-nez p0, :cond_52

    invoke-virtual {p2}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->transitionFreeformIndicatorToFullscreen()V

    :cond_52
    :goto_52
    return-void
.end method

.method public final onTaskCornersChanged(ILandroid/graphics/Region;)V
    .registers 4

    const-string v0, "corner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateTaskCorners(ILandroid/graphics/Region;)V

    return-void
.end method

.method public final removeCornersForTask(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->removeTaskCorners(I)V

    return-void
.end method

.method public final setTaskCornerListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Region;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->setTaskCornerListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final showDesktopApps(I)V
    .registers 7

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DesktopTasksController: showDesktopApps"

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;)V

    invoke-virtual {v0}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2a

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_25

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p1, 0x0

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_2a

    :cond_25
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .registers 6

    const-string/jumbo p0, "transition"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "info"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "startTransaction"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "finishTransaction"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "finishCallback"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
