.class Lcom/android/quickstep/AppToOverviewAnimationProvider$1;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AppToOverviewAnimationProvider;->createWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

.field public final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/AppToOverviewAnimationProvider;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    iput-object p2, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onButtonToOverviewAnimationEnd(Landroid/animation/Animator;)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setLaunchFromButtonRunning(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeSf()V

    :cond_42
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    sget-boolean v0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_23

    new-instance v0, Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {v0}, Lcom/android/quickstep/util/SurfaceTransaction;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v0, v2, v1, v2}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->restoreTaskLayer(Lcom/android/quickstep/util/SurfaceTransaction;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->setVsyncId()V

    invoke-virtual {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_23
    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$200(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$200(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getPullDownDetectController()Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->pullCancelForHomeGesture()V

    :cond_3e
    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {v0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->onButtonToOverviewAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {p1}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const-string v0, "createWindowAnimation"

    invoke-virtual {p1, v2, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setLaunchFromButtonRunning(Z)V

    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p0

    invoke-static {}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->getRecentsLaunchDuration()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf(I)V

    :cond_79
    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {p1}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$000(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/OplusBaseActivityInterface;

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {p1}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$000(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/OplusBaseActivityInterface;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseActivityInterface;->onSwipeUpToRecentsComplete()V

    :cond_15
    iget-object p0, p0, Lcom/android/quickstep/AppToOverviewAnimationProvider$1;->this$0:Lcom/android/quickstep/AppToOverviewAnimationProvider;

    invoke-static {p0}, Lcom/android/quickstep/AppToOverviewAnimationProvider;->access$100(Lcom/android/quickstep/AppToOverviewAnimationProvider;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->animateUpTaskIconScale()V

    return-void
.end method
