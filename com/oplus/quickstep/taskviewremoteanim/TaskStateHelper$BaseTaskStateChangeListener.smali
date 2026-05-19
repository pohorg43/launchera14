.class public abstract Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$BaseTaskStateChangeListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseTaskStateChangeListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

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
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener$DefaultImpls;->onTransitionFinish(Lcom/oplus/quickstep/taskviewremoteanim/TaskStateHelper$TaskStateChangeListener;Z)V

    return-void
.end method
