.class public final Lcom/android/quickstep/OplusBaseRecentsModel$2;
.super Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusBaseRecentsModel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/OplusBaseRecentsModel;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusBaseRecentsModel;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsModel$2;->this$0:Lcom/android/quickstep/OplusBaseRecentsModel;

    invoke-direct {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel$2;->onRunningTaskVanished$lambda$2(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseRecentsModel$2;->onRunningTaskAppeared$lambda$1(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/OplusBaseRecentsModel;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseRecentsModel$2;->onRecentTasksChanged$lambda$0(Lcom/android/quickstep/OplusBaseRecentsModel;)V

    return-void
.end method

.method private static final onRecentTasksChanged$lambda$0(Lcom/android/quickstep/OplusBaseRecentsModel;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentTasksList;->onRecentTasksChanged()V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskListTaskBar:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->onRecentTasksChanged()V

    return-void
.end method

.method private static final onRunningTaskAppeared$lambda$1(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentTasksList;->onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskListTaskBar:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static final onRunningTaskVanished$lambda$2(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskList:Lcom/android/quickstep/OplusRecentTasksListImpl;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/RecentTasksList;->onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel;->mTaskListTaskBar:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method public onRecentTasksChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel$2;->this$0:Lcom/android/quickstep/OplusBaseRecentsModel;

    new-instance v1, Lcom/android/quickstep/x0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/x0;-><init>(Lcom/android/quickstep/OplusBaseRecentsModel;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel$2;->this$0:Lcom/android/quickstep/OplusBaseRecentsModel;

    new-instance v1, Lcom/android/quickstep/r;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/r;-><init>(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsModel$2;->this$0:Lcom/android/quickstep/OplusBaseRecentsModel;

    new-instance v1, Lcom/android/quickstep/s;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/s;-><init>(Lcom/android/quickstep/OplusBaseRecentsModel;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
