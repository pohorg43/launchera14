.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getOpeningWindowAnimators(Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;ZI)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic val$anim:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

.field public final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->val$anim:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    iput-object p3, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p4, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->access$500(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setNeedAnimateToCurrent(Z)V

    const-string p1, "HM_APP_GAP"

    const-string v0, "launcher"

    const-string v1, ".activity_start"

    const-string v2, " end"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLaunchAppAnimationEndTime(J)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->onLaunchAppAnimationEnd()V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->showEdu()V

    :cond_31
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 7

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getSfEx()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->printLaunchAnimaTraceInfo()V

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const-string p1, "HM_APP_GAP"

    const-string v0, "launcher"

    const-string v1, ".activity_start"

    const-string v2, " begin"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    invoke-static {p1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->access$500(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;)Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setNeedAnimateToCurrent(Z)V

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->val$anim:Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;

    invoke-virtual {v3}, Lcom/android/launcher3/OplusLauncherAppTransitionValueAnimator;->getDuration()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p1, v3, v4}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLaunchAppAnimationEndTime(J)V

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$3;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
