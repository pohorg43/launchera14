.class Lcom/android/wm/shell/splitscreen/MainStage;
.super Lcom/android/wm/shell/splitscreen/StageTaskListener;
.source ""


# instance fields
.field private mIsActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/splitscreen/StageTaskListener;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    return-void
.end method


# virtual methods
.method public activate(Landroid/window/WindowContainerTransaction;Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->reparentTopTask(Landroid/window/WindowContainerTransaction;)V

    :cond_a
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "activate mainStage, includingTopTask="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MainStage"

    invoke-static {p2, p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public deactivate(Landroid/window/WindowContainerTransaction;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/splitscreen/MainStage;->deactivate(Landroid/window/WindowContainerTransaction;Z)V

    return-void
.end method

.method public deactivate(Landroid/window/WindowContainerTransaction;Z)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez p0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZ)Landroid/window/WindowContainerTransaction;

    const/4 p0, 0x1

    const-string p1, "MainStage"

    const-string p2, "deactivate mainStage"

    invoke-static {p1, p2, p0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public isActive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/MainStage;->mIsActive:Z

    return p0
.end method
