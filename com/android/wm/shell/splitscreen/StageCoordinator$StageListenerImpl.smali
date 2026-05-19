.class Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StageListenerImpl"
.end annotation


# instance fields
.field public mHasChildren:Z

.field public mHasRootTask:Z

.field public mOplusHasChildren:Z

.field public mOplusVisible:Z

.field public mVisible:Z

.field public final synthetic this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusHasChildren:Z

    return-void
.end method

.method private reset()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusVisible:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusHasChildren:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    const-string v0, "mHasRootTask="

    invoke-static {p2, v0}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    const-string/jumbo v2, "mVisible="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    const-string v2, "mHasChildren="

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/launcher3/n;->a(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onChildTaskAppeared(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2000(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;I)V

    return-void
.end method

.method public onChildTaskStatusChanged(IZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2300(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;IZZ)V

    return-void
.end method

.method public onNoLongerSupportMultiWindow()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$800(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/MainStage;->isActive()Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2500(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2502(Lcom/android/wm/shell/splitscreen/StageCoordinator;Z)Z

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SPLIT_SCREEN_enabled:Z

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$700()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, -0x32be1360

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const-string v0, "%s:   while onNoLongerSupportMultiWindow mIsDividerRemoteAnimating is true,set false."

    invoke-static {v3, v4, v2, v0, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-result-object v0

    if-ne v0, p0, :cond_3f

    move v0, v1

    goto :goto_40

    :cond_3f
    move v0, v2

    :goto_40
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->isExitFromSafeCenter()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/splitscreen/SplitToggleHelper;->getEnterMinimizedType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_57

    if-eqz v0, :cond_5f

    :cond_57
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitFromSafeCenter(Z)V

    move v3, v2

    :cond_5f
    sget-boolean v4, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v4, :cond_8f

    if-eqz v3, :cond_66

    goto :goto_8f

    :cond_66
    xor-int/2addr v0, v1

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, v0, v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->prepareExitSplitScreen(ILandroid/window/WindowContainerTransaction;)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$800(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->relaeseSplitControlBar()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->relaeseSplitControlBar()V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v3}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2700(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    move-result-object v3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {v3, v2, p0, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;II)Landroid/os/IBinder;

    goto :goto_b3

    :cond_8f
    :goto_8f
    if-eqz v3, :cond_98

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->setExitFromSafeCenter(Z)V

    :cond_98
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eqz v0, :cond_a1

    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$800(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/MainStage;

    move-result-object v0

    goto :goto_a5

    :cond_a1
    invoke-static {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/SideStage;

    move-result-object v0

    :goto_a5
    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->exitSplitScreen(Lcom/android/wm/shell/splitscreen/StageTaskListener;I)V

    if-nez v3, :cond_b3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public onRootTaskAppeared()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRootTaskAppeared()V

    return-void
.end method

.method public onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$1000(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2600(Lcom/android/wm/shell/splitscreen/StageCoordinator;)Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;

    move-result-object v1

    if-ne p0, v1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->onStageTaskInfoChanged(ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1c
    return-void
.end method

.method public onRootTaskVanished()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->reset()V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2400(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    return-void
.end method

.method public onStatusChanged(ZZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasRootTask:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusHasChildren:Z

    if-eq v0, p2, :cond_12

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusHasChildren:Z

    iput-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mHasChildren:Z

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p2, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2100(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    :cond_12
    iget-boolean p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusVisible:Z

    if-eq p2, p1, :cond_1f

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mOplusVisible:Z

    iput-boolean p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->mVisible:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;->this$0:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p1, p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->access$2200(Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/splitscreen/StageCoordinator$StageListenerImpl;)V

    :cond_1f
    return-void
.end method
