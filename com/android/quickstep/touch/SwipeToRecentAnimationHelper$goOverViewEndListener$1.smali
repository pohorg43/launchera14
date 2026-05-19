.class public final Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/dynamicanimation/animation/DynamicAnimation<",
            "*>;ZFF)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_96

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getTAG$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "goOverViewEndListener-onAnimationEnd: resumed="

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/Activity;->isResumed()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", isPaused="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", isTaskStarting="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", mLauncher.stateManager.state="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", canceled="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", mIsGoingHome="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMIsGoingHome$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", mIsGoingOverview="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMIsGoingOverview$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", isTaskLaunchWindowAnimationRunning="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTaskLaunchWindowAnimationRunning()Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    const/4 p1, 0x0

    if-nez p2, :cond_15c

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_ad

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/LauncherState;

    goto :goto_ae

    :cond_ad
    move-object p2, p3

    :goto_ae
    sget-object p4, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x1

    if-nez p2, :cond_12b

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_cf

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isTaskLaunchWindowAnimationRunning()Z

    move-result p2

    if-eqz p2, :cond_e7

    :cond_cf
    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->isPaused()Z

    move-result p2

    if-eqz p2, :cond_12b

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isWaitTaskAnimationStart()Z

    move-result p2

    if-eqz p2, :cond_12b

    :cond_e7
    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isRunningTaskTileHidden()Z

    move-result p2

    if-eqz p2, :cond_fc

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setRunningTaskHidden(Z)V

    :cond_fc
    sget-object p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p2, p4}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setForceNotResetTaskVisuals(Z)V

    iget-object p3, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p3}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMLauncher$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/launcher/Launcher;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p3

    sget-object p4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p3, p4, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setForceNotResetTaskVisuals(Z)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->disallowScrollByTouch(Z)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-static {p2}, Lcom/oplus/quickstep/dynamictask/DynamicTaskLogicInjector;->onEnterOverviewBySwipeToRecent(Lcom/android/quickstep/views/RecentsView;)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$displayWhenGoingOverview(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V

    goto :goto_15c

    :cond_12b
    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getTAG$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "launcher is not resumed, cancel overview animations mRecentsView.isGustureActive()："

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {v1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->isGustureActive()Z

    move-result p2

    if-nez p2, :cond_15c

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2, p1, p4, p3}, Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener$DefaultImpls;->onGoHome$default(Lcom/android/quickstep/views/OplusRecentsViewImpl$GoHomeListener;ZILjava/lang/Object;)V

    :cond_15c
    :goto_15c
    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setSpringAnimToRecent(Z)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setWaitTaskAnimationStart(Z)V

    iget-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p2}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentsView$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->requestLayoutIfNeeded()V

    sget-object p2, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p2, p1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setOverviewPeeking(Z)V

    iget-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper$goOverViewEndListener$1;->this$0:Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p1}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->access$getMRecentSpringX$p(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object p1

    if-eqz p1, :cond_187

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    :cond_187
    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->HOME_TO_RECENTS:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method
