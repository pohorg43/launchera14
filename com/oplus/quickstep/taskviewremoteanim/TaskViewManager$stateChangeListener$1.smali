.class public final Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;-><init>(Lcom/android/launcher/Launcher;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field public final synthetic this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateTransitionComplete: finalState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$isTaskViewStarted$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$isTaskViewReleased$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_40

    :cond_36
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    return-void

    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    const-string v0, "toState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateTransitionStart: toState is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "TaskViewManager"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$isTaskViewStarted$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$isTaskViewReleased$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    invoke-static {v0}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->access$getTaskViewReady$p(Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_40

    :cond_36
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    return-void

    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->this$0:Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager;->setTaskViewTouchable(Z)V

    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/taskviewremoteanim/TaskViewManager$stateChangeListener$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
