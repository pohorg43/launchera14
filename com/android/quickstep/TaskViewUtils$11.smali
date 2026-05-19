.class Lcom/android/quickstep/TaskViewUtils$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$pa:Lcom/android/launcher3/anim/PendingAnimation;

.field public final synthetic val$recentsView:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic val$stateManager:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PendingAnimation;Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 4

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$pa:Lcom/android/launcher3/anim/PendingAnimation;

    iput-object p3, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v0, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_16

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setTaskLaunchWindowAnimationRunning(Z)V

    :cond_16
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setForceNotScaleWallpaperByLaunchTask(Z)V

    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$pa:Lcom/android/launcher3/anim/PendingAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v3, v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_34

    check-cast v2, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v2

    if-eqz v2, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    :goto_35
    iget-object v2, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    iget-object v3, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->reapplyState()V

    iget-object v3, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TVU composeRecentsLaunchAnimator onAnimationEnd; isGustureActive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; stateBeforeRest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; stateAfterRest:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TaskViewUtils"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7e

    sget-object v0, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne v2, v0, :cond_7e

    if-eq v3, v0, :cond_7e

    iget-object p0, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$stateManager:Lcom/android/launcher3/statemanager/StateManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    :cond_7e
    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setForceNotScaleWallpaperByLaunchTask(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$11;->val$recentsView:Lcom/android/quickstep/views/RecentsView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setTaskLaunchWindowAnimationRunning(Z)V

    :cond_16
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
