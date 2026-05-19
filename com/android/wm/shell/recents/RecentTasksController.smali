.class public Lcom/android/wm/shell/recents/RecentTasksController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;,
        Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/wm/shell/common/TaskStackListenerCallback;",
        "Lcom/android/wm/shell/common/RemoteCallable<",
        "Lcom/android/wm/shell/recents/RecentTasksController;",
        ">;",
        "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecentTasksController"


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private final mDesktopModeTaskRepository:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

.field private final mIsDesktopMode:Z

.field private mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field private final mSplitTasks:Landroid/util/SparseIntArray;

.field private final mTaskSplitBoundsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/wm/shell/util/SplitBounds;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field private mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 11
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
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/recents/RecentTasksController$1;)V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    iput-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p3, "android.hardware.type.pc"

    invoke-virtual {p1, p3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsDesktopMode:Z

    iput-object p5, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iput-object p7, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    iput-object p8, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/draganddrop/b;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/draganddrop/b;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/recents/RecentsTransitionHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    return-object p0
.end method

.method public static synthetic access$400()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/recents/RecentTasksController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->onInit()V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->lambda$onInit$0(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)Lcom/android/wm/shell/recents/RecentTasksController;
    .registers 18
    .param p7  # Lcom/android/wm/shell/common/ShellExecutor;
        .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
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
            "Lcom/android/wm/shell/recents/RecentTasksController;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/internal/R$bool;->config_hasRecents:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/recents/RecentTasksController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/app/ActivityTaskManager;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-object v0
.end method

.method private createExternalInterface()Lcom/android/wm/shell/common/ExternalInterfaceBinder;
    .registers 2

    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-object v0
.end method

.method private synthetic lambda$onInit$0(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addActiveTaskListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;)V

    return-void
.end method

.method private notifyRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz v0, :cond_19

    iget-boolean p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsDesktopMode:Z

    if-eqz p0, :cond_19

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_d

    goto :goto_19

    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/recents/RecentTasksController;->TAG:Ljava/lang/String;

    const-string v0, "Failed call onRunningTaskAppeared"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method private notifyRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz v0, :cond_19

    iget-boolean p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mIsDesktopMode:Z

    if-eqz p0, :cond_19

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-nez p0, :cond_d

    goto :goto_19

    :cond_d
    :try_start_d
    invoke-interface {v0, p1}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_19

    :catch_11
    move-exception p0

    sget-object p1, Lcom/android/wm/shell/recents/RecentTasksController;->TAG:Ljava/lang/String;

    const-string v0, "Failed call onRunningTaskVanished"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_19
    return-void
.end method

.method private onInit()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v1, Lcom/android/launcher3/q1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/q1;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    const-string v2, "extra_shell_recent_tasks"

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/wm/shell/sysui/ShellController;->addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/launcher/badge/k;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/k;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/TaskStackListenerImpl;->addListener(Lcom/android/wm/shell/common/TaskStackListenerCallback;)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    new-instance v1, Lcom/android/wm/shell/bubbles/j;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/j;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public addSplitPair(IILcom/android/wm/shell/util/SplitBounds;)V
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_f

    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-eq v3, p2, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    invoke-static {v3}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->setShouldUpdateRecommendAppList(Z)V

    if-ne p1, p2, :cond_16

    return-void

    :cond_16
    iget-object v3, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, p2, :cond_31

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/SplitBounds;

    invoke-virtual {v0, p3}, Lcom/android/wm/shell/util/SplitBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    return-void

    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    invoke-static {p1, p2, v2}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitTasksState(IIZ)V

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    if-eqz p0, :cond_91

    int-to-long p0, p1

    int-to-long v3, p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x54dcf69b

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v7, v2

    const/4 p0, 0x2

    aput-object p2, v7, p0

    invoke-static {p3, v0, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_91
    return-void
.end method

.method public asRecentTasks()Lcom/android/wm/shell/recents/RecentTasks;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mImpl:Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/recents/RecentTasksController;->TAG:Ljava/lang/String;

    const-string v3, " mListener="

    invoke-static {v1, v2, p1, p2, v3}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Tasks:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    const v1, 0x7fffffff

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p2}, Lcom/android/wm/shell/recents/RecentTasksController;->getRecentTasks(III)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p2, 0x0

    :goto_3f
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_5a

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3f

    :cond_5a
    return-void
.end method

.method public findTaskInBackground(Landroid/content/ComponentName;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const v1, 0x7fffffff

    const/4 v2, 0x2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    :goto_13
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-boolean v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v3, :cond_24

    goto :goto_35

    :cond_24
    iget-object v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    iget v3, v2, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    if-ne p2, v3, :cond_35

    return-object v2

    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_38
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getRecentTasks(III)Ljava/util/ArrayList;
    .registers 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object p1

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    const/4 p3, 0x0

    move v0, p3

    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p2, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, p3

    :goto_2c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v4

    if-nez v4, :cond_41

    goto :goto_98

    :cond_41
    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->isProto2Enabled()Z

    move-result v4

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mDesktopModeTaskRepository:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isActiveTask(I)Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_63
    iget-object v4, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    iget v5, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_91

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_91

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v6, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/util/SplitBounds;

    invoke-static {v3, v5, v4}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSplitTasks(Landroid/app/ActivityManager$RecentTaskInfo;Landroid/app/ActivityManager$RecentTaskInfo;Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_98

    :cond_91
    invoke-static {v3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forSingleTask(Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_9b
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b0

    new-array p0, p3, [Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-static {p0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->forFreeformTasks([Landroid/app/ActivityManager$RecentTaskInfo;)Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    move-result-object p0

    invoke-virtual {v1, p3, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b0
    return-object v1
.end method

.method public getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public getTopRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    goto :goto_16

    :cond_10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_16
    return-object p0
.end method

.method public hasRecentTasksListener()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public notifyRecentTasksChanged()V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x3f98868e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    if-nez p0, :cond_13

    return-void

    :cond_13
    :try_start_13
    invoke-interface {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRecentTasksChanged()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception p0

    sget-object v0, Lcom/android/wm/shell/recents/RecentTasksController;->TAG:Ljava/lang/String;

    const-string v1, "Failed call notifyRecentTasksChanged"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method

.method public onActiveTasksChanged(I)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    return-void
.end method

.method public onRecentTaskListUpdated()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    return-void
.end method

.method public onTaskAdded(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskRemoved(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    return-void
.end method

.method public onTaskWindowingModeChanged(Landroid/app/TaskInfo;)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    return-void
.end method

.method public registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    return-void
.end method

.method public removeSplitPair(I)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_4c

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mSplitTasks:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTaskSplitBoundsMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->notifyRecentTasksChanged()V

    const/4 p0, 0x0

    invoke-static {p1, v0, p0}, Lcom/oplus/splitscreen/ReflectionHelper;->OplusSplitScreenManager_setSplitTasksState(IIZ)V

    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_RECENT_TASKS_enabled:Z

    if-eqz v1, :cond_4c

    int-to-long v1, p1

    int-to-long v3, v0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_RECENT_TASKS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v0, 0x374d9bf2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, p0

    const/4 p0, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, p0

    invoke-static {p1, v0, v5, v6, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4c
    return-void
.end method

.method public setTransitionHandler(Lcom/android/wm/shell/recents/RecentsTransitionHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    return-void
.end method

.method public unregisterRecentTasksListener()V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController;->mListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    return-void
.end method
