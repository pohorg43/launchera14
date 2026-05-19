.class Lcom/android/quickstep/views/RecentsView$12;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/views/RecentsView$12;ILcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Boolean;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView$12;->lambda$onTaskRemoved$2(ILcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Boolean;
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView$12;->lambda$onTaskRemoved$0(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/quickstep/views/RecentsView$12;ILjava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView$12;->lambda$onTaskRemoved$1(ILjava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$onTaskRemoved$0(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onTaskRemoved$1(ILjava/lang/Boolean;)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTaskRemoved(), taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", realRemoved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_30

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->access$300(Lcom/android/quickstep/views/RecentsView;I)V

    :cond_30
    return-void
.end method

.method private synthetic lambda$onTaskRemoved$2(ILcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Boolean;)V
    .registers 5

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1a

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_14

    const-string p2, "RecentsView"

    const-string/jumbo p3, "onTaskRemoved(), apkRemoved."

    invoke-static {p2, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->access$300(Lcom/android/quickstep/views/RecentsView;I)V

    goto :goto_28

    :cond_1a
    iget-object p3, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-object p3, p3, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    iget p2, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    new-instance v0, Lcom/android/quickstep/views/a0;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/a0;-><init>(Lcom/android/quickstep/views/RecentsView$12;I)V

    invoke-virtual {p3, p2, v0}, Lcom/android/quickstep/RecentsModel;->isTaskRemoved(ILjava/util/function/Consumer;)V

    :goto_28
    return-void
.end method


# virtual methods
.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "onActivityPinned(), "

    const-string v1, "#"

    invoke-static {v0, p1, v1, p2, v1}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", "

    invoke-static {p1, p3, v1, p4, v0}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p4, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean p4, p4, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    const-string v0, "RecentsView"

    invoke-static {p1, p4, v0}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_1d
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/RecentsView;->onPinnedTaskChanged(I)V

    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean p4, p1, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-nez p4, :cond_29

    return-void

    :cond_29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/quickstep/TaskUtils;->checkCurrentOrManagedUserId(ILandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_34

    return-void

    :cond_34
    iget-object p1, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p1, p3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_41

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_41
    return-void
.end method

.method public onActivityUnpinned()V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "onActivityUnpinned(), "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v1, v1, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    const-string v2, "RecentsView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->onPinnedTaskChanged(I)V

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v1, v0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-nez v1, :cond_23

    return-void

    :cond_23
    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()Z

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->access$200(Lcom/android/quickstep/views/RecentsView;)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 11

    const-wide/16 v0, 0x8

    const-string v2, "RecentsView#onTaskRemoved"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    iget-boolean v2, v2, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-nez v2, :cond_11

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_11
    sget-object v2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getAllTaskDismissRunning()Z

    move-result v2

    const-string v3, "RecentsView"

    if-eqz v2, :cond_25

    const-string/jumbo p0, "onTaskRemoved: all task dismiss is running, so return"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_25
    const-string/jumbo v2, "onTaskRemoved(), taskId="

    invoke-static {v2, p1, v3}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$12;->this$0:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-nez v2, :cond_37

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_37
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    sget-object v3, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/quickstep/views/c0;

    invoke-direct {v6, v2}, Lcom/android/quickstep/views/c0;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    sget-object v7, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v8, Lcom/android/quickstep/views/b0;

    invoke-direct {v8, p0, p1, v2}, Lcom/android/quickstep/views/b0;-><init>(Lcom/android/quickstep/views/RecentsView$12;ILcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method
