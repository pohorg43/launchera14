.class Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;
.super Lcom/android/wm/shell/recents/IRecentTasks$Stub;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/ExternalInterfaceBinder;


# annotations
.annotation build Landroidx/annotation/BinderThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/recents/RecentTasksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IRecentTasksImpl"
.end annotation


# instance fields
.field private mController:Lcom/android/wm/shell/recents/RecentTasksController;

.field private final mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/wm/shell/common/SingleInstanceRemoteListener<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            "Lcom/android/wm/shell/recents/IRecentTasksListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/wm/shell/recents/IRecentTasks$Stub;-><init>()V

    new-instance v0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl$1;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance v0, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    new-instance v1, Lcom/android/wm/shell/recents/b;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/recents/b;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)V

    sget-object v2, Lcom/android/wm/shell/recents/g;->a:Lcom/android/wm/shell/recents/g;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;-><init>(Lcom/android/wm/shell/common/RemoteCallable;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-void
.end method

.method public static synthetic a([[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;IIILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->lambda$getRecentTasks$4([[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;IIILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)Lcom/android/wm/shell/common/SingleInstanceRemoteListener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->lambda$new$0(Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->lambda$unregisterRecentTasksListener$3(Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/IRecentTasksListener;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->lambda$registerRecentTasksListener$2(Lcom/android/wm/shell/recents/IRecentTasksListener;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->lambda$new$1(Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic f(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->lambda$startRecentsTransition$6(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic g([[Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->lambda$getRunningTasks$5([[Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method private static synthetic lambda$getRecentTasks$4([[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;IIILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 5

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/wm/shell/recents/RecentTasksController;->getRecentTasks(III)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    new-array p3, p2, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    aput-object p1, p0, p2

    return-void
.end method

.method private static synthetic lambda$getRunningTasks$5([[Landroid/app/ActivityManager$RunningTaskInfo;ILcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 4

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    new-array v0, p2, [Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/app/ActivityManager$RunningTaskInfo;

    aput-object p1, p0, p2

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mRecentTasksListener:Lcom/android/wm/shell/recents/IRecentTasksListener;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/wm/shell/recents/RecentTasksController;->unregisterRecentTasksListener()V

    return-void
.end method

.method private synthetic lambda$registerRecentTasksListener$2(Lcom/android/wm/shell/recents/IRecentTasksListener;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->register(Landroid/os/IInterface;)V

    return-void
.end method

.method private static synthetic lambda$startRecentsTransition$6(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 12

    invoke-static {p5}, Lcom/android/wm/shell/recents/RecentTasksController;->access$300(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/recents/RecentsTransitionHandler;->startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)Landroid/os/IBinder;

    return-void
.end method

.method private synthetic lambda$unregisterRecentTasksListener$3(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method


# virtual methods
.method public getRecentTasks(III)[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    const/4 v0, 0x0

    if-nez p0, :cond_8

    new-array p0, v0, [Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    return-object p0

    :cond_8
    const/4 v1, 0x1

    new-array v2, v1, [[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    new-instance v3, Lcom/android/wm/shell/recents/f;

    invoke-direct {v3, v2, p1, p2, p3}, Lcom/android/wm/shell/recents/f;-><init>([[Lcom/android/wm/shell/util/GroupedRecentTaskInfo;III)V

    const-string p1, "getRecentTasks"

    invoke-static {p0, p1, v3, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object p0, v2, v0

    return-object p0
.end method

.method public getRunningTasks(I)[Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [[Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance v2, Lcom/android/wm/shell/recents/e;

    invoke-direct {v2, v1, p1}, Lcom/android/wm/shell/recents/e;-><init>([[Landroid/app/ActivityManager$RunningTaskInfo;I)V

    const-string p1, "getRunningTasks"

    invoke-static {p0, p1, v2, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;Z)V

    aget-object p0, v1, v3

    return-object p0
.end method

.method public invalidate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mListener:Lcom/android/wm/shell/common/SingleInstanceRemoteListener;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/SingleInstanceRemoteListener;->unregister()V

    return-void
.end method

.method public registerRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance v1, Lcom/android/wm/shell/recents/d;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/recents/d;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;Lcom/android/wm/shell/recents/IRecentTasksListener;)V

    const-string/jumbo p0, "registerRecentTasksListener"

    invoke-static {v0, p0, v1}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public startRecentsTransition(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {v0}, Lcom/android/wm/shell/recents/RecentTasksController;->access$300(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {}, Lcom/android/wm/shell/recents/RecentTasksController;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Used shell-transitions startRecentsTransition without shell-transitions"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance v6, Lcom/android/wm/shell/recents/a;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/recents/a;-><init>(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IApplicationThread;Landroid/view/IRecentsAnimationRunner;)V

    const-string/jumbo p1, "startRecentsTransition"

    invoke-static {p0, p1, v6}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unregisterRecentTasksListener(Lcom/android/wm/shell/recents/IRecentTasksListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;->mController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance v0, Lcom/android/wm/shell/recents/c;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/recents/c;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$IRecentTasksImpl;)V

    const-string/jumbo p0, "unregisterRecentTasksListener"

    invoke-static {p1, p0, v0}, Lcom/android/wm/shell/common/ExecutorUtils;->executeRemoteCallWithTaskPermission(Lcom/android/wm/shell/common/RemoteCallable;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
