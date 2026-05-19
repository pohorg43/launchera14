.class public final Lcom/android/quickstep/views/OplusTaskViewImpl$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskViewImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$1$1;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

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
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTaskAppeared(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTaskInfoChanged(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTaskListenerReleased()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTaskListenerReleased(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTaskVanished(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onTransitionFinish(Z)V
    .registers 5

    const-string/jumbo v0, "onClick(), onTransitionFinish, launchTaskAnimatedAsync, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$1$1;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    iget-object v1, v1, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRecent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusTaskView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_34

    iget-object p1, p0, Lcom/android/quickstep/views/OplusTaskViewImpl$1$1;->this$0:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->launchTaskAnimatedAsync()V

    :cond_34
    invoke-static {p0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;->removeGlobalTaskStateChangeListener(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;)V

    return-void
.end method
