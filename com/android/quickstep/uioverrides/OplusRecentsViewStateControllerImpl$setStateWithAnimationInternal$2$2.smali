.class public final Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->setStateWithAnimationInternal(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $fromState:Lcom/android/launcher3/LauncherState;

.field public final synthetic $navMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

.field public final synthetic $this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

.field public final synthetic $toState:Lcom/android/launcher3/LauncherState;

.field private isCancel:Z

.field public final synthetic this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherState;Lcom/android/quickstep/views/LauncherRecentsView;Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Lcom/android/launcher3/util/DisplayController$NavigationMode;Lcom/android/launcher3/LauncherState;)V
    .registers 6

    iput-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    iput-object p2, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    iput-object p3, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    iput-object p4, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$navMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iput-object p5, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$fromState:Lcom/android/launcher3/LauncherState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCancel()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->isCancel:Z

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->isCancel:Z

    const-string/jumbo p1, "setStateWithAnimationInternal(), onAnimationCancel, toState="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string v0, "OplusRecentsViewStateController"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-static {p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$getMLauncher$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p1

    const-string/jumbo v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    invoke-static {}, Lcom/android/launcher3/states/OPlusBaseState;->getTargetLauncherState()Lcom/android/launcher3/states/OPlusBaseState;

    move-result-object v0

    const-string/jumbo v1, "setStateWithAnimationInternal(), onAnimationEnd, toState="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentStableState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", targetState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cancel="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->isCancel:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isRecentInTransition="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-static {p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$getMRecentsView$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->isPageInTransition()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsViewStateController"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$fromState:Lcom/android/launcher3/LauncherState;

    const-string v1, "fromState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0, v1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$resetRencentScroll(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_c5

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    sput-boolean v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    iget-object v1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    const-string/jumbo v2, "this@apply"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->showLightningAnimation(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_125

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->openCpu()V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeSf()V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$navMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p1, v1, :cond_125

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    goto :goto_125

    :cond_c5
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setExitStateAnimRunning(Z)V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->resetTaskVisuals()V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockViewVisible(Z)V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/RecentsBooster;->closeCpu()V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_111

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-static {p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$getMLauncher$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p1

    if-eqz p1, :cond_10c

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-static {p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$getMLauncher$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_10c

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-static {p1}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$getMLauncher$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_10c
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_111
    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$fromState:Lcom/android/launcher3/LauncherState;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_125

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_125
    :goto_125
    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-static {v0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$getMLauncher$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    const-string/jumbo v1, "mLauncher.stateManager.currentStableState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget-object p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0, p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onEnterOverviewByStateAnimChange(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setStateWithAnimationInternal(), onAnimationStart, toState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "OplusRecentsViewStateController"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->isCancel:Z

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setLogLoadVisibleTaskData(Z)V

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    iget-boolean v0, v0, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    const/4 v2, 0x0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->this$0:Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;

    invoke-static {v0}, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;->access$getMRecentsView$p$s1267919897(Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl;)Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getDockView()Lcom/oplus/quickstep/dock/DockView;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/oplus/quickstep/dock/DockView;->getmLastState()Lcom/android/launcher3/LauncherState;

    move-result-object v0

    goto :goto_4a

    :cond_49
    move-object v0, v2

    :goto_4a
    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    goto :goto_55

    :cond_53
    move v0, p1

    goto :goto_56

    :cond_55
    :goto_55
    move v0, v1

    :goto_56
    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$this_apply:Lcom/android/quickstep/views/LauncherRecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object v0

    invoke-static {v0, p1, v1, v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->openSf$default(Lcom/oplus/quickstep/utils/RecentsBooster;IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$navMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    sget-object p1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p0, p1, :cond_76

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_76
    sput-boolean v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isEnterStateAnimRunning:Z

    goto :goto_a1

    :cond_79
    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setExitStateAnimRunning(Z)V

    iget-object p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$toState:Lcom/android/launcher3/LauncherState;

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_8d
    iget-object p0, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->$fromState:Lcom/android/launcher3/LauncherState;

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a1

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->updateAppSceneAndAction(IZ)V

    :cond_a1
    :goto_a1
    return-void
.end method

.method public final setCancel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/uioverrides/OplusRecentsViewStateControllerImpl$setStateWithAnimationInternal$2$2;->isCancel:Z

    return-void
.end method
