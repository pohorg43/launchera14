.class public interface abstract Lcom/android/quickstep/ITopTaskTrackerWrapper;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract getOrderedTaskList()Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStagePosition(Z)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;
.end method

.method public abstract setCachedTaskInfoTopTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method
