.class Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;
.super Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->this$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    invoke-direct {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->lambda$onRunningTaskAppeared$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->lambda$onRunningTaskVanished$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->lambda$onRecentTasksChanged$0(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method

.method private static synthetic lambda$onRecentTasksChanged$0(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRecentTasksChanged()V

    return-void
.end method

.method private static synthetic lambda$onRunningTaskAppeared$1(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static synthetic lambda$onRunningTaskVanished$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/wm/shell/recents/IRecentTasksListener;->onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method public onRecentTasksChanged()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->this$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->access$200(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/recents/j;->a:Lcom/android/wm/shell/recents/j;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method

.method public onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->this$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->access$200(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/recents/h;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/recents/h;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method

.method public onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;->this$0:Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->access$200(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/recents/i;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/recents/i;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->call(Lcom/android/wm/shell/common/SingleInstanceRemoteListener$RemoteCall;)V

    return-void
.end method
