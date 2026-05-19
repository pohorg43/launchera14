.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskGoingDownAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;J)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $this_run:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field

.field public final synthetic $tv:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/TaskView;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;->$tv:Lcom/android/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;->$this_run:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "createTaskGoingDownAnimation: anim cancel, taskId="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;->$tv:Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_1b

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "RecentsViewAnimUtil"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 p1, 0x0

    sput-boolean p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setPendingLaunchTask(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "createTaskGoingDownAnimation: anim end, taskId="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;->$tv:Lcom/android/quickstep/views/TaskView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_1c

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v2, "RecentsViewAnimUtil"

    invoke-static {v0, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setPendingLaunchTask(Z)V

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;->$this_run:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setPendingAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "createTaskGoingDownAnimation: anim start, taskId="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskGoingDownAnimation$1$1;->$tv:Lcom/android/quickstep/views/TaskView;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    if-eqz p0, :cond_1b

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_1b

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "RecentsViewAnimUtil"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskLaunchAnimRunning:Z

    return-void
.end method
