.class public final Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->createTaskDismissAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;ZZJ)Lcom/android/launcher3/anim/PendingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private gpuBoostFd:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    return-void
.end method


# virtual methods
.method public final getGpuBoostFd()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    return-wide v0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    const-string v0, "TaskDismissAnimation onAnimationEnd animate="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RecentsViewAnimUtil"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-wide v2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_31

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p1

    iget-wide v2, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    invoke-virtual {p1, v2, v3}, Lcom/android/common/util/LauncherBooster$GpuBoost;->closeAction(J)V

    :cond_31
    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setTaskDismissAnimRunning(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "TaskDismissAnimation animate="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsViewAnimUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object v0

    const/16 v1, 0x1388

    const-string v2, "OSENSE_ACTION_CLEAN_RECENT"

    invoke-virtual {v0, v2, v1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->openWithType(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setTaskDismissAnimRunning(Z)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method

.method public final setGpuBoostFd(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil$createTaskDismissAnimation$3;->gpuBoostFd:J

    return-void
.end method
