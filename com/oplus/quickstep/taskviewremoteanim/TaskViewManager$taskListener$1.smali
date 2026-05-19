.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onBackPressedOnTaskRoot(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onLandScapeSceneExit(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onLandScapeSceneExit(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Z)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getLaunchCookie$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Landroid/os/Binder;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewCommonUtils;->isCookieInLaunchCookies(Landroid/os/Binder;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    if-nez p2, :cond_d

    return-void

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskAppeared: info="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    invoke-static {v0, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object p2

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result p2

    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$isTaskViewReleased$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result p2

    if-eqz p2, :cond_3e

    goto :goto_4a

    :cond_3e
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    if-eqz p1, :cond_45

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_46

    :cond_45
    const/4 p1, -0x1

    :goto_46
    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$setTmpTaskId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;I)V

    goto :goto_5a

    :cond_4a
    :goto_4a
    const-string p0, "onTaskAppeared: taskview may released, so remove the task-view task"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5a

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->rmTask(I)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getVirtualDisplayId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_55

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v2, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getVirtualDisplayId$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)I

    move-result v2

    if-ne v1, v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->getTaskView()Lcom/oplus/quickstep/taskviewremoteanim/view/LauncherTaskView;

    move-result-object v0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result v0

    if-nez v0, :cond_55

    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$taskListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$isTaskViewReleased$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result p0

    if-eqz p0, :cond_55

    const-string p0, "onTaskInfoChanged: taskview has been released, so remove the task["

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in the virtual display"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TaskView"

    const-string v1, "TaskViewManager"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->rmTask(I)V

    :cond_55
    return-void
.end method

.method public onTaskListenerReleased()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTaskListenerReleased(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public onTransitionFinish(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTransitionFinish(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Z)V

    return-void
.end method
