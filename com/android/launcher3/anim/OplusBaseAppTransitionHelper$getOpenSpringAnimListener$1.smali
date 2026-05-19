.class public final Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getOpenSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $canViewRunInAnimThread:Z

.field public final synthetic $onEndAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $onStartAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $remoteAnimationTargets:Lcom/android/quickstep/RemoteAnimationTargets;

.field public final synthetic $surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private isCanceled:Z

.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;ZLcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/functions/Function0;Lcom/android/quickstep/RemoteAnimationTargets;Lkotlin/jvm/functions/Function0;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;",
            "Z",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;",
            "Lcom/android/quickstep/RemoteAnimationTargets;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    iput-boolean p2, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$canViewRunInAnimThread:Z

    iput-object p3, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p4, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$onStartAction:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$remoteAnimationTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    iput-object p7, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$onEndAction:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCanceled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->isCanceled:Z

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "OplusBaseAppTransitionHelper"

    const-string v0, "Open app animation canceled"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 10

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getAnimState()Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOnceGestureProcessing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-static {v2}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v2

    if-eqz v2, :cond_25

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Open app animation end, animationState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isRecentAnimRunning = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", inOverviewState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusBaseAppTransitionHelper"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setNeedAnimateToCurrent(Z)V

    const-string v3, "HM_APP_GAP"

    const-string v5, "launcher"

    const-string v6, ".activity_start"

    const-string v7, " end"

    invoke-static {v3, v5, v6, v7}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->isCanceled:Z

    if-nez v3, :cond_82

    iget-object v3, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-static {v3}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher/Launcher;

    if-eqz v3, :cond_82

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    iget-object v2, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->updateWallPaperScrim(FZ)V

    :cond_82
    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p1

    if-nez p1, :cond_8e

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$remoteAnimationTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    goto :goto_99

    :cond_8e
    sget-object p1, Lcom/oplus/quickstep/utils/AnimationController$AnimationState;->OPEN:Lcom/oplus/quickstep/utils/AnimationController$AnimationState;

    if-ne v0, p1, :cond_99

    if-nez v1, :cond_99

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$remoteAnimationTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    :cond_99
    :goto_99
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLaunchAppAnimationEndTime(J)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->onLaunchAppAnimationEnd()V

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-static {p1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p1

    if-eqz p1, :cond_b7

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->showEdu()V

    :cond_b7
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$onEndAction:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_be

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_be
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 8

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->isCanceled:Z

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getSfEx()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->printLaunchAnimaTraceInfo()V

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getMAppTransitionManagerImpl()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getInterruptParam()Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$InterruptParam;->setNeedAnimateToCurrent(Z)V

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->LAUNCH_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const-string v0, "OplusBaseAppTransitionHelper"

    const-string v2, "Open app animation start"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "HM_APP_GAP"

    const-string v2, "launcher"

    const-string v3, ".activity_start"

    const-string v4, " begin"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x258

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setLaunchAppAnimationEndTime(J)V

    iget-boolean v0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$canViewRunInAnimThread:Z

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {p1, v2, v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_4d
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->$onStartAction:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_54

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_54
    return-void
.end method

.method public final setCanceled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getOpenSpringAnimListener$1;->isCanceled:Z

    return-void
.end method
