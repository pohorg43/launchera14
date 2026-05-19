.class public interface abstract Lcom/android/quickstep/ITopTaskTrackerExt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;,
        Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V
.end method

.method public abstract addOnTaskStageChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;)V
.end method

.method public abstract getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
.end method

.method public abstract getForceUpdateOrderedTaskList()Z
.end method

.method public abstract getUpdateOrderedTaskList()Z
.end method

.method public abstract isStagedSplitInTop()Z
.end method

.method public abstract isTaskInAnyStagePosition(III)Z
.end method

.method public abstract isTaskInStagedSplit(I)Z
.end method

.method public abstract notifyTaskStageChanged(I)V
.end method

.method public abstract onPinnedTaskChanged(I)V
.end method

.method public abstract onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)Z
.end method

.method public abstract onTaskStackChangedBackground()V
.end method

.method public abstract removeOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V
.end method

.method public abstract removeOnTaskStageChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;)V
.end method

.method public abstract setForceUpdateOrderedTaskList(Z)V
.end method

.method public abstract setUpdateOrderedTaskList(Z)V
.end method

.method public abstract updateOverviewTargets(Z)V
.end method
