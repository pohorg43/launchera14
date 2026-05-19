.class Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/recents/RecentTasks;


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/recents/RecentTasksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentTasksImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/recents/RecentTasksController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/recents/RecentTasksController;Lcom/android/wm/shell/recents/RecentTasksController$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;-><init>(Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->lambda$getRecentTasks$0(Ljava/util/function/Consumer;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;IIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->lambda$getRecentTasks$1(IIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$getRecentTasks$0(Ljava/util/function/Consumer;Ljava/util/List;)V
    .registers 2

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$getRecentTasks$1(IIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6

    iget-object p0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/recents/RecentTasksController;->getRecentTasks(III)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Lcom/android/wm/shell/recents/l;

    invoke-direct {p1, p5, p0}, Lcom/android/wm/shell/recents/l;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    invoke-interface {p4, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getRecentTasks(IIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;->this$0:Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {v0}, Lcom/android/wm/shell/recents/RecentTasksController;->access$100(Lcom/android/wm/shell/recents/RecentTasksController;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v8, Lcom/android/wm/shell/recents/k;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/recents/k;-><init>(Lcom/android/wm/shell/recents/RecentTasksController$RecentTasksImpl;IIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v8}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
