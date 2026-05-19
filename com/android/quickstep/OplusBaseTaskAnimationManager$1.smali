.class public final Lcom/android/quickstep/OplusBaseTaskAnimationManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/OplusBaseTaskAnimationManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/OplusBaseTaskAnimationManager;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/OplusBaseTaskAnimationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager$1;->this$0:Lcom/android/quickstep/OplusBaseTaskAnimationManager;

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
    .registers 4

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTransitionFinish(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTransitionFinish isRecent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseTaskAnimationManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager$1;->this$0:Lcom/android/quickstep/OplusBaseTaskAnimationManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    :cond_21
    return-void
.end method
