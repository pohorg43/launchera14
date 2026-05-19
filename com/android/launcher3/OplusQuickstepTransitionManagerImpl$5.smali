.class Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;->getFallbackClosingWindowAnimators([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

.field public final synthetic val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

.field public final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/views/FloatingIconView;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iput-object p2, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p3, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->val$floatingView:Lcom/android/launcher3/views/FloatingIconView;

    instance-of v0, p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/launcher3/views/OplusFloatingIconView;

    invoke-virtual {p1}, Lcom/android/launcher3/views/OplusFloatingIconView;->resetIconToVisible()V

    :cond_b
    const-string p1, "HM_APP_GAP"

    const-string v0, "launcher"

    const-string v1, ".activity_exit_normal"

    const-string v2, " end"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setRemoteInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const-string v0, "HM_APP_GAP"

    const-string v1, "launcher"

    const-string v2, ".activity_exit_normal"

    const-string v3, " begin"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/LauncherState;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getClosingWindowAnimators, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusQuickstepTransitionManagerImpl"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_63
    iget-boolean p1, p1, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    instance-of v0, p1, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_96

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p1, v0, :cond_96

    const-string/jumbo p1, "the state isn\'t NORMAL, so we must change state to NORMAL"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->this$0:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl;

    iget-object p1, p1, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_96
    iget-object p1, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$5;->val$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x1

    invoke-static {v0, p0, v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
