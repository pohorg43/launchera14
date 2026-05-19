.class public Lcom/android/wm/shell/ShellTaskOrganizer;
.super Landroid/window/TaskOrganizer;
.source ""

# interfaces
.implements Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;,
        Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;,
        Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;,
        Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final OPLUS_EVENT_APPEARED:I = 0x0

.field private static final OPLUS_EVENT_INFO_CHANGED:I = 0x2

.field private static final OPLUS_EVENT_ROOT_BACK_PRESSED:I = 0x3

.field private static final OPLUS_EVENT_VANISHED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ShellTaskOrganizer"

.field public static final TASK_LISTENER_TYPE_FREEFORM:I = -0x5

.field public static final TASK_LISTENER_TYPE_FULLSCREEN:I = -0x2

.field public static final TASK_LISTENER_TYPE_MULTI_WINDOW:I = -0x3

.field public static final TASK_LISTENER_TYPE_PIP:I = -0x4

.field public static final TASK_LISTENER_TYPE_UNDEFINED:I = -0x1

.field public static final TASK_LISTENER_TYPE_ZOOM:I = -0x64

.field private static final WINDOWING_MODE_BRACKET:I = 0x73

.field private static final WINDOWING_MODE_COMPACT:I = 0x78


# instance fields
.field private final mClientTaskListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/wm/shell/transition/IOplusTaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

.field public mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

.field private final mFocusListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private final mLaunchCookieToListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLocusIdListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentTasks:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field private mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

.field private mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

.field private final mTaskListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

.field private final mVisibleTasksWithLocusId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/LocusId;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomTaskSurface:Landroid/view/SurfaceControl;

.field private mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/ShellTaskOrganizer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 10

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Landroid/window/ITaskOrganizerController;",
            "Lcom/android/wm/shell/compatui/CompatUIController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/unfold/UnfoldAnimationController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3, p7}, Landroid/window/TaskOrganizer;-><init>(Landroid/window/ITaskOrganizerController;Ljava/util/concurrent/Executor;)V

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    new-instance p3, Landroid/util/ArraySet;

    invoke-direct {p3}, Landroid/util/ArraySet;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

    iput-object p6, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    const/4 p2, 0x0

    invoke-virtual {p5, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    iput-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz p1, :cond_54

    new-instance p2, Lcom/android/launcher3/taskbar/l;

    invoke-direct {p2, p0}, Lcom/android/launcher3/taskbar/l;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_54
    new-instance p1, Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/ShellTaskOrganizer;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/window/ITaskOrganizerController;Lcom/android/wm/shell/compatui/CompatUIController;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V

    return-void
.end method

.method public static synthetic a(Landroid/window/TaskAppearedInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->lambda$onTaskAppeared$0(Landroid/window/TaskAppearedInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->onInit()V

    return-void
.end method

.method public static synthetic c(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->lambda$onTaskVanished$3(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic d(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->lambda$onTaskInfoChanged$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method private dispatchTaskEventToClientIfNeed(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d1

    if-eqz p2, :cond_d1

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    goto/16 :goto_d1

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTaskEventToClientIfNeed, eventType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", leash:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShellTaskOrganizer"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_af

    if-eq p1, v1, :cond_8c

    const/4 p3, 0x2

    if-eq p1, p3, :cond_69

    const/4 p3, 0x3

    if-eq p1, p3, :cond_45

    goto/16 :goto_d1

    :cond_45
    :try_start_45
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    invoke-interface {p0, p2}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_50} :catch_52

    goto/16 :goto_d1

    :catch_52
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "remote onBackPressedOnTaskRoot e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    :cond_69
    :try_start_69
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    invoke-interface {p0, p2}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_74} :catch_75

    goto :goto_d1

    :catch_75
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "remote onTaskInfoChanged e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    :cond_8c
    :try_start_8c
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    invoke-interface {p0, p2}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_97} :catch_98

    goto :goto_d1

    :catch_98
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "remote onTaskVanished e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    :cond_af
    :try_start_af
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    invoke-interface {p0, p2, p3}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_ba} :catch_bb

    goto :goto_d1

    :catch_bb
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "remote onTaskAppeared e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    :goto_d1
    return-void
.end method

.method public static synthetic e(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method private getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    return-object p0
.end method

.method private getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;
    .registers 8

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-ltz v2, :cond_2c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-nez v4, :cond_1f

    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    :cond_1f
    if-eqz p2, :cond_2b

    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2b
    return-object v4

    :cond_2c
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-eqz p2, :cond_37

    return-object p2

    :cond_37
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result p2

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    if-eqz p2, :cond_4a

    return-object p2

    :cond_4a
    invoke-static {p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskInfoToTaskListenerType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    return-object p0
.end method

.method private holdZoomSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 7

    const/4 v0, 0x0

    const-string v1, "ShellTaskOrganizer"

    const/16 v2, 0x64

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_46

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasParentTask()Z

    move-result v3

    if-nez v3, :cond_46

    iget-boolean p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz p2, :cond_3d

    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskAppearedInfo;

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    const-string/jumbo p1, "zoomSurface:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_3d
    const-string/jumbo p1, "zoomSurface invisible"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    goto :goto_5e

    :cond_46
    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    if-eq p1, v2, :cond_5e

    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    if-ne p1, v2, :cond_5e

    const-string/jumbo p1, "zoomSurface change"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    :cond_5e
    :goto_5e
    return-void
.end method

.method private static synthetic lambda$onTaskAppeared$0(Landroid/window/TaskAppearedInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->onTaskAdded(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$onTaskInfoChanged$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->onTaskWindowingModeChanged(Landroid/app/TaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$onTaskInfoChanged$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    return-void
.end method

.method private static synthetic lambda$onTaskVanished$3(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->onTaskRemoved(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private logSizeCompatRestartButtonEventReported(Landroid/window/TaskAppearedInfo;I)V
    .registers 3

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/16 p1, 0x183

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, p0, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    return-void
.end method

.method private notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_1e

    invoke-interface {p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->supportCompatUI()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->hasCompatUI()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v0, :cond_18

    goto :goto_1e

    :cond_18
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void

    :cond_1e
    :goto_1e
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/compatui/CompatUIController;->onCompatInfoChanged(Landroid/app/TaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    return-void
.end method

.method private notifyLocusIdChange(ILandroid/content/LocusId;Z)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;->onVisibilityChanged(ILandroid/content/LocusId;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V
    .registers 8

    iget v0, p1, Landroid/app/TaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/LocusId;

    iget-object v2, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v1, :cond_26

    iget-object v1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    if-eqz v1, :cond_58

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-direct {p0, v0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_58

    :cond_26
    const/4 v4, 0x0

    if-eqz v2, :cond_38

    iget-boolean v5, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-nez v5, :cond_38

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-direct {p0, v0, p1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_58

    :cond_38
    if-nez v2, :cond_58

    iget-boolean v2, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    iget-object v5, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-virtual {v2, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v0, v1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    iget-object p1, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    invoke-direct {p0, v0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    goto :goto_58

    :cond_4e
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/TaskInfo;->taskId:I

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, v0, v1, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusIdChange(ILandroid/content/LocusId;Z)V

    :cond_58
    :goto_58
    return-void
.end method

.method private onInit()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    new-instance v1, Lcom/android/launcher3/model/m0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/model/m0;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/compatui/CompatUIController;->setCompatUICallback(Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;)V

    :cond_11
    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    return-void
.end method

.method private onTaskAppeared(Landroid/window/TaskAppearedInfo;)V
    .registers 13

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;Z)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v1

    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_32

    int-to-long v5, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v8, -0x4efd4dca

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v10, v4

    aput-object v3, v10, v2

    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    const-string v2, "Task appeared taskId="

    const-string v3, ", parentTaskId="

    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", taskVisibility="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ShellTaskOrganizer"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_72

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {p0, v4, v0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->dispatchTaskEventToClientIfNeed(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_72
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz v0, :cond_81

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_81
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v1, Lcom/android/launcher3/g;

    invoke-direct {v1, p1}, Lcom/android/launcher3/g;-><init>(Landroid/window/TaskAppearedInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static taskInfoToTaskListenerType(Landroid/app/ActivityManager$RunningTaskInfo;)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation build Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
    .end annotation

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x6

    if-eq p0, v0, :cond_19

    const/16 v0, 0x64

    if-eq p0, v0, :cond_16

    const/4 p0, -0x1

    return p0

    :cond_16
    const/16 p0, -0x64

    return p0

    :cond_19
    const/4 p0, -0x3

    return p0

    :cond_1b
    const/4 p0, -0x5

    return p0

    :cond_1d
    const/4 p0, -0x4

    return p0

    :cond_1f
    const/4 p0, -0x2

    return p0
.end method

.method public static taskListenerTypeToString(I)Ljava/lang/String;
    .registers 2
    .param p0  # I
        .annotation build Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
        .end annotation
    .end param

    const/4 v0, -0x5

    if-eq p0, v0, :cond_2a

    const/4 v0, -0x4

    if-eq p0, v0, :cond_27

    const/4 v0, -0x3

    if-eq p0, v0, :cond_24

    const/4 v0, -0x2

    if-eq p0, v0, :cond_21

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1b

    const-string/jumbo v0, "taskId#"

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p0, "TASK_LISTENER_TYPE_ZOOM"

    return-object p0

    :cond_1e
    const-string p0, "TASK_LISTENER_TYPE_UNDEFINED"

    return-object p0

    :cond_21
    const-string p0, "TASK_LISTENER_TYPE_FULLSCREEN"

    return-object p0

    :cond_24
    const-string p0, "TASK_LISTENER_TYPE_MULTI_WINDOW"

    return-object p0

    :cond_27
    const-string p0, "TASK_LISTENER_TYPE_PIP"

    return-object p0

    :cond_2a
    const-string p0, "TASK_LISTENER_TYPE_FREEFORM"

    return-object p0
.end method

.method private updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z
    .registers 7

    const/4 v0, 0x0

    if-ne p3, p4, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-eqz p3, :cond_d

    invoke-interface {p3, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->dispatchTaskEventToClientIfNeed(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_d
    if-eqz p4, :cond_15

    invoke-interface {p4, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->dispatchTaskEventToClientIfNeed(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_15
    return v1
.end method


# virtual methods
.method public addFocusListener(Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_f

    invoke-interface {p1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;->onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public addListenerForTaskId(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v1, :cond_1a

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, 0x1cb5c26b

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5d

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    monitor-exit v0

    return-void

    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListenerForTaskId unknown taskId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Listener for taskId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_79

    throw p0
.end method

.method public varargs addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V
    .registers 12
    .param p2  # [I
        .annotation build Lcom/android/wm/shell/ShellTaskOrganizer$TaskListenerType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, 0x76a8926f

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v3

    aput-object v4, v8, v2

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    array-length v1, p2

    :goto_26
    if-ge v3, v1, :cond_56

    aget v4, p2, v3

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3a

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Listener for listenerType="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " already exists"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    sub-int/2addr p2, v2

    :goto_5d
    if-ltz p2, :cond_80

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v2

    if-eq v2, p1, :cond_72

    goto :goto_7d

    :cond_72
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :goto_7d
    add-int/lit8 p2, p2, -0x1

    goto :goto_5d

    :cond_80
    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0
    :try_end_84
    .catchall {:try_start_3 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public addLocusIdListener(Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_9
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mVisibleTasksWithLocusId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/LocusId;

    const/4 v4, 0x1

    invoke-interface {p1, v2, v3, v4}, Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;->onVisibilityChanged(ILandroid/content/LocusId;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public addStartingWindow(Landroid/window/StartingWindowInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->addStartingWindow(Landroid/window/StartingWindowInfo;)V

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->onStartingWindowAdding(Landroid/window/StartingWindowInfo;)V

    return-void
.end method

.method public adjustChangeForFlexibleMinimizeIfNeed(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->adjustChangeForFlexibleMinimizeIfNeed(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z

    return-void
.end method

.method public applyTransactionWithLog(Landroid/window/WindowContainerTransaction;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->applyTransactionWithLog(Landroid/window/WindowContainerTransaction;Ljava/lang/String;I)V

    return-void
.end method

.method public applyTransactionWithLog(Landroid/window/WindowContainerTransaction;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyTransaction, wct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callsite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez p3, :cond_29

    const-string p2, ", caller="

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2b

    :cond_29
    const-string p2, ""

    :goto_2b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ShellTaskOrganizer"

    invoke-static {p3, p2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/window/WindowOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public copySplashScreenView(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->copySplashScreenView(I)V

    :cond_7
    return-void
.end method

.method public createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)V

    return-void
.end method

.method public createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Z)V
    .registers 16

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v0, :cond_2c

    int-to-long v0, p1

    int-to-long v2, p2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v6, -0x4e3908db

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-virtual {p0, v0, p3}, Lcom/android/wm/shell/ShellTaskOrganizer;->setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    invoke-super {p0, p1, p2, v0, p4}, Landroid/window/TaskOrganizer;->createRootTask(IILandroid/os/IBinder;Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ShellTaskOrganizer"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Listeners"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_5e
    if-ltz p2, :cond_97

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskListenerTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v4, p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_5e

    :cond_97
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Tasks"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_bf
    if-ltz p2, :cond_16e

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    const-string v6, ""

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_f3

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :cond_f3
    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget-boolean v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget-boolean v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " wmMode="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " running="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " visible="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " focused="

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_bf

    :cond_16e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Launch Cookies"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_196
    if-ltz p2, :cond_1d2

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " cookie="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " listener="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_196

    :cond_1d2
    monitor-exit v0

    return-void

    :catchall_1d4
    move-exception p0

    monitor-exit v0
    :try_end_1d6
    .catchall {:try_start_3 .. :try_end_1d6} :catchall_1d4

    throw p0
.end method

.method public getBracketModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_26

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_23

    monitor-exit v0

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_26
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public getCompactModeTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_26

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_23

    monitor-exit v0

    return-object v2

    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_26
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public getHomeOrRecentsTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const-string v3, "ShellTaskOrganizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHomeOrRecentsTaskInfo taskInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " visible:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ACTIVITY_TYPE_HOME:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ACTIVITY_TYPE_RECENTS:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v3, v5, :cond_5e

    if-ne v3, v6, :cond_5b

    goto :goto_5e

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5e
    :goto_5e
    monitor-exit v0

    return-object v2

    :cond_60
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_63
    move-exception p0

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_63

    throw p0
.end method

.method public getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    monitor-exit v0

    return-object p0

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public getRunningTasks(I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v2}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v3, p1, :cond_21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    return-object v0
.end method

.method public getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    return-object p0
.end method

.method public getTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getTasks()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getVisibleFlexibleTaskInfo()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->getVisibleFlexibleTaskInfo()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getVisibleStandardFullscreenTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_6c

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v4, v2, :cond_69

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-eq v4, v2, :cond_2b

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_69

    :cond_2b
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-nez v4, :cond_69

    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v4, :cond_69

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getRootTaskId()I

    move-result v5

    if-eq v4, v5, :cond_69

    const-string p0, "ShellTaskOrganizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVisibleStandardFullscreenTaskInfo taskInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-object v3

    :cond_69
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_6c
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_6f
    move-exception p0

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public getZoomTaskSurface()Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mZoomTaskSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public getZoomTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public initStartingWindow(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    return-void
.end method

.method public isOnCanvas()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isOnCanvas()Z

    move-result p0

    return p0
.end method

.method public isOnThreeFlexibleCanvas()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isOnThreeFlexibleCanvas()Z

    move-result p0

    return p0
.end method

.method public onAppSplashScreenViewRemoved(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->onAppSplashScreenViewRemoved(I)V

    :cond_7
    return-void
.end method

.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v3, v1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x3a782654

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v1, v5, v6, v2, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-interface {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->dispatchTaskEventToClientIfNeed(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_2a
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public onCameraControlStateUpdated(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskAppearedInfo;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_19

    if-nez p1, :cond_f

    return-void

    :cond_f
    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, p2}, Landroid/window/TaskOrganizer;->updateCameraCompatControlState(Landroid/window/WindowContainerToken;I)V

    return-void

    :catchall_19
    move-exception p0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onImeDrawnOnTask(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->onImeDrawnOnTask(I)V

    :cond_7
    return-void
.end method

.method public onLandScapeSceneExit(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4a

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLandScapeSceneExit, isRecent is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellTaskOrganizer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_28
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onLandScapeSceneExit(Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_34

    goto :goto_4a

    :catch_34
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "remote onLandScapeSceneExit e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-void
.end method

.method public onSizeCompatRestartButtonAppeared(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskAppearedInfo;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_14

    if-nez p1, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->logSizeCompatRestartButtonEventReported(Landroid/window/TaskAppearedInfo;I)V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onSizeCompatRestartButtonClicked(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/TaskAppearedInfo;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    if-nez p1, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->logSizeCompatRestartButtonEventReported(Landroid/window/TaskAppearedInfo;I)V

    invoke-virtual {p1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->restartTaskTopActivityProcessIfVisible(Landroid/window/WindowContainerToken;)V

    return-void

    :catchall_1d
    move-exception p0

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    if-eqz p2, :cond_7

    const-string v0, "ShellTaskOrganizer.onTaskAppeared"

    invoke-virtual {p2, v0}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    new-instance v1, Landroid/window/TaskAppearedInfo;

    invoke-direct {v1, p1, p2}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-direct {p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/window/TaskAppearedInfo;)V

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw p0
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1d

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v5, v1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, 0x966826d

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-static {v1, v7, v4, v2, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_24
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    if-nez v1, :cond_4a

    const-string p0, "ShellTaskOrganizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task info changed, not found taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_4a
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget v8, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    new-instance v9, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v10

    invoke-direct {v9, p1, v10}, Landroid/window/TaskAppearedInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v7, Lcom/android/wm/shell/ShellTaskOrganizer;->DEBUG:Z

    if-eqz v7, :cond_f5

    const-string v7, "ShellTaskOrganizer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTaskInfoChanged in shell\n    old --> taskId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " parentTaskId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " taskVisibility "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget-boolean v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " bounds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " oldListener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n    new --> taskId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " parentTaskId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " taskVisibility "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " bounds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v9, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " newListener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-direct {p0, p1, v7, v5, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    move-result v5

    const/4 v7, 0x2

    if-nez v5, :cond_108

    if-eqz v6, :cond_108

    invoke-interface {v6, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-direct {p0, v7, p1, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->dispatchTaskEventToClientIfNeed(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_108
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    if-nez v5, :cond_128

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActivityManager$RunningTaskInfo;->equalsForCompatUi(Landroid/app/TaskInfo;)Z

    move-result v2

    if-nez v2, :cond_118

    goto :goto_128

    :cond_118
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

    if-eqz v2, :cond_12b

    invoke-virtual {v2}, Lcom/android/wm/shell/compatui/CompatUIController;->getExtImpl()Lcom/android/wm/shell/compatui/CompatUIControllerExt;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v2, p1, v5}, Lcom/android/wm/shell/compatui/CompatUIControllerExt;->topActivityChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_12b

    :cond_128
    :goto_128
    invoke-direct {p0, p1, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    :cond_12b
    :goto_12b
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    if-eq v2, v5, :cond_143

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v5, Lcom/android/common/util/n;

    invoke-direct {v5, p1}, Lcom/android/common/util/n;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_143
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/16 v5, 0x78

    if-ne v2, v5, :cond_159

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_159

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v5, Lcom/android/common/util/m;

    invoke-direct {v5, p1}, Lcom/android/common/util/m;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v2, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_159
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez v2, :cond_168

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne v2, v7, :cond_166

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v2, :cond_166

    goto :goto_168

    :cond_166
    move v2, v3

    goto :goto_169

    :cond_168
    :goto_168
    move v2, v4

    :goto_169
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v5, :cond_17d

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v7, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v6, v7, :cond_17d

    invoke-virtual {v5}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v6

    if-eq v5, v6, :cond_180

    :cond_17d
    if-eqz v2, :cond_180

    goto :goto_181

    :cond_180
    move v4, v3

    :goto_181
    if-eqz v4, :cond_19b

    :goto_183
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v3, v2, :cond_199

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;->onFocusTaskChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_183

    :cond_199
    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLastFocusedTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_19b
    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->holdZoomSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    monitor-exit v0
    :try_end_1a8
    .catchall {:try_start_3 .. :try_end_1a8} :catchall_1b0

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    if-eqz p0, :cond_1af

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1af
    return-void

    :catchall_1b0
    move-exception p0

    :try_start_1b1
    monitor-exit v0
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_1b0

    throw p0
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1d

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v5, v1

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v7, -0x348034fb  # -1.6763653E7f

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v8, v2

    invoke-static {v1, v7, v4, v3, v8}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mUnfoldAnimationController:Lcom/android/wm/shell/unfold/UnfoldAnimationController;

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Lcom/android/wm/shell/unfold/UnfoldAnimationController;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_24
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v5, "ShellTaskOrganizer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task vanished taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5c

    const-string p0, "ShellTaskOrganizer"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task vanished, not found taskId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_5c
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v6

    iget-object v7, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v6, :cond_79

    invoke-interface {v6, p1}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-direct {p0, v4, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->dispatchTaskEventToClientIfNeed(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    :cond_79
    invoke-direct {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyLocusVisibilityIfNeeded(Landroid/app/TaskInfo;)V

    invoke-direct {p0, p1, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->notifyCompatUI(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mRecentTasks:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/b;

    invoke-direct {v3, p1, v2}, Lcom/android/wm/shell/b;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v1, :cond_9a

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_9a

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    :cond_9a
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    monitor-exit v0

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_3 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public onTransitionFinish(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4a

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransitionFinish, isRecent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellTaskOrganizer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_28
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/transition/IOplusTaskListener;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTransitionFinish(Z)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_33} :catch_34

    goto :goto_4a

    :catch_34
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "remote onTransitionFinish e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    :goto_4a
    return-void
.end method

.method public peekTaskLeash(I)Landroid/view/SurfaceControl;
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public registerOrganizer()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TaskAppearedInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x229b5522

    invoke-static {v1, v4, v3, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    invoke-super {p0}, Landroid/window/TaskOrganizer;->registerOrganizer()Ljava/util/List;

    move-result-object v1

    move v4, v3

    :goto_16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_51

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TaskAppearedInfo;

    sget-boolean v6, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v6, :cond_4b

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v6, v6

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v10, -0x6459ea3f

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v11, v3

    const/4 v6, 0x1

    aput-object v8, v11, v6

    invoke-static {v9, v10, v6, v2, v11}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4b
    invoke-direct {p0, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->onTaskAppeared(Landroid/window/TaskAppearedInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_51
    monitor-exit v0

    return-object v1

    :catchall_53
    move-exception p0

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_53

    throw p0
.end method

.method public registerRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ShellTaskOrganizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerRemoteTaskListener, listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1e

    monitor-exit v0

    return-void

    :cond_1e
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_2b
    if-ltz v1, :cond_68

    iget-object v3, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    if-eqz v3, :cond_65

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_6a

    if-ne v4, v2, :cond_65

    :try_start_41
    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-interface {p1, v4, v3}, Lcom/android/wm/shell/transition/IOplusTaskListener;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4c} :catch_4d
    .catchall {:try_start_41 .. :try_end_4c} :catchall_6a

    goto :goto_65

    :catch_4d
    move-exception v3

    :try_start_4e
    const-string v4, "ShellTaskOrganizer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remote onTaskAppeared e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_2b

    :cond_68
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public removeFocusListener(Lcom/android/wm/shell/ShellTaskOrganizer$FocusListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mFocusListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeListener(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, -0x4fe30a59

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2c

    const-string p0, "ShellTaskOrganizer"

    const-string p1, "No registered listener found"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_38
    if-ltz v4, :cond_53

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v5}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v6

    if-eq v6, p1, :cond_4d

    goto :goto_50

    :cond_4d
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_50
    add-int/lit8 v4, v4, -0x1

    goto :goto_38

    :cond_53
    iget-object v4, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_5a
    if-ltz v4, :cond_6c

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_69

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTaskListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_69
    add-int/lit8 v4, v4, -0x1

    goto :goto_5a

    :cond_6c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_71
    if-ltz p1, :cond_8f

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v3}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object v3

    invoke-direct {p0, v4, v5, v2, v3}, Lcom/android/wm/shell/ShellTaskOrganizer;->updateTaskListenerIfNeeded(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_71

    :cond_8f
    monitor-exit v0

    return-void

    :catchall_91
    move-exception p0

    monitor-exit v0
    :try_end_93
    .catchall {:try_start_3 .. :try_end_93} :catchall_91

    throw p0
.end method

.method public removeLocusIdListener(Lcom/android/wm/shell/ShellTaskOrganizer$LocusIdListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLocusIdListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->onStartingWindowRemoving(Landroid/window/StartingWindowRemovalInfo;)V

    return-void
.end method

.method public reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v1}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getTaskListener(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;

    move-result-object p0

    goto :goto_1e

    :cond_1d
    move-object p0, v2

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3d

    if-nez p0, :cond_39

    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz p0, :cond_38

    int-to-long p0, p1

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const p3, 0x398efdb3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-static {p2, p3, v0, v2, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    return-void

    :cond_39
    invoke-interface {p0, p1, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;->reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public screenshotTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/graphics/Rect;",
            "Ljava/util/function/Consumer<",
            "Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-nez p0, :cond_15

    const-string p0, "ShellTaskOrganizer"

    const-string/jumbo p1, "taskAppearedInfo is null, screenshotTask failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/android/wm/shell/common/ScreenshotUtils;->captureLayer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setPendingLaunchCookieListener(Landroid/os/IBinder;Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLaunchCookieToListener:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public setStageCoordinator(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStageCoordinatorExt:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mExt:Lcom/android/wm/shell/ShellTaskOrganizerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->addStartingWindowStateChangeListener(Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;)V

    return-void
.end method

.method public setSurfaceMetadata(III)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/TaskAppearedInfo;

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_25

    :cond_14
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit v0

    return-void

    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public setZoomToFlexibleController(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mZoomToFlexibleController:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    return-void
.end method

.method public unregisterOrganizer()V
    .registers 1

    invoke-super {p0}, Landroid/window/TaskOrganizer;->unregisterOrganizer()V

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mStartingWindow:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->clearAllWindows()V

    :cond_a
    return-void
.end method

.method public unregisterRemoteTaskListener(Lcom/android/wm/shell/transition/IOplusTaskListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "ShellTaskOrganizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterRemoteTaskListener, listener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mClientTaskListeners:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method
