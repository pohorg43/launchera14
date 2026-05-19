.class Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iput-object p1, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateTransitionComplete finalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Taskbar"

    invoke-static {v1, v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    :cond_2d
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$300(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z

    move-result p1

    if-nez p1, :cond_53

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getInPreStageOfGestureRecentsAnimation()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_53

    :cond_3c
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/OplusHotseat;->runTaskBarIconAlignCallBackIfNeed()V

    return-void

    :cond_53
    :goto_53
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onStateTransitionComplete skip, mSkipApplyState:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$300(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",InPreStageOfGestureRecentsAnimation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getInPreStageOfGestureRecentsAnimation()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$302(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)Z

    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$002(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/launcher3/LauncherState;)Lcom/android/launcher3/LauncherState;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v1, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    if-eq p1, v1, :cond_22

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$100(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$102(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Ljava/lang/Integer;)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iput-object p1, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncherState:Lcom/android/launcher3/LauncherState;

    :cond_22
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStateTransitionStart toState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Taskbar"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->resetReverseAnimationStateIfNeed(Lcom/android/launcher3/LauncherState;)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$300(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z

    move-result p1

    if-nez p1, :cond_64

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getInPreStageOfGestureRecentsAnimation()Z

    move-result p1

    if-eqz p1, :cond_4f

    goto :goto_64

    :cond_4f
    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$400(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z

    move-result p1

    if-nez p1, :cond_63

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    :cond_63
    return-void

    :cond_64
    :goto_64
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onStateTransitionStart skip, mSkipApplyState:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$300(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ",InPreStageOfGestureRecentsAnimation="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getInPreStageOfGestureRecentsAnimation()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
