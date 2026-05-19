.class public interface abstract Lcom/android/wm/shell/recents/RecentTasks;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ExternalThread;
.end annotation


# virtual methods
.method public getRecentTasks(IIILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 6
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

    return-void
.end method
