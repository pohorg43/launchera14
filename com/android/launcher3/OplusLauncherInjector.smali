.class public Lcom/android/launcher3/OplusLauncherInjector;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final OVERVIEW_REBIND_DELAY:J = 0x1f4L

.field private static sFromSplitScreenShortcutChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/OplusLauncherInjector;->lambda$injectLauncherOnIdpChanged$0(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V

    return-void
.end method

.method public static injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/OplusLauncherInjector;->injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;Z)V

    return-void
.end method

.method public static injectLauncherOnIdpChanged(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/OplusLauncherModel;Landroid/os/Handler;Z)V
    .registers 8

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    const-string v1, "Launcher"

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v0, "injectLauncherOnIdpChanged GroupCardView markUnsubscribedOnDetach"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/groupcard/GroupCardView;->markUnsubscribedOnDetach()V

    :cond_1a
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne v2, v3, :cond_63

    sget-boolean v2, Lcom/android/launcher3/OplusLauncherInjector;->sFromSplitScreenShortcutChanged:Z

    if-nez v2, :cond_63

    const-string/jumbo p0, "onIdpChanged -- to rebind model! state = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/LauncherState;

    iget p3, p3, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {p3}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/OplusLauncherInjector$1;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/OplusLauncherInjector$1;-><init>(Landroid/os/Handler;Lcom/android/launcher3/OplusLauncherModel;)V

    new-instance p3, Lcom/android/launcher3/c1;

    invoke-direct {p3, p2, p0, p1}, Lcom/android/launcher3/c1;-><init>(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p3, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/16 :goto_f5

    :cond_63
    const-string/jumbo p2, "onIdpChanged -- direct to rebind model! state = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    iget v0, v0, Lcom/android/launcher3/LauncherState;->ordinal:I

    invoke-static {v0}, Lcom/android/launcher3/testing/TestProtocol;->stateOrdinalToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/model/ChildrenModeManager;->isEnteringChildrenMode()Z

    move-result p2

    if-nez p2, :cond_f2

    invoke-static {}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getFirstCardPreviewAfterEnterSimpleMode()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_f2

    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result p2

    if-eqz p2, :cond_e9

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result p2

    if-eqz p2, :cond_e9

    if-nez p3, :cond_e9

    invoke-virtual {p1}, Lcom/android/launcher3/OplusLauncherModel;->isLoaderTaskRunning()Z

    move-result p2

    if-nez p2, :cond_e9

    sget-object p2, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {p2}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->getLauncherOnBinding()Z

    move-result p2

    if-nez p2, :cond_e9

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->updatePageIndicatorCount()V

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusHotseat;->rebindHotseatForFoldStateChange()V

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_c9

    move-object p1, p0

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->tryAndUpdatePredictedApps()V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->updateCellLayoutBgRender()V

    :cond_c9
    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p1

    if-eqz p1, :cond_dd

    const-string p1, "finishBindingItems: tryRejectChildCardForPage for GroupCard"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V

    :cond_dd
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-static {p0}, Lcom/android/launcher/freeze/OplusFreezeManager;->updateVisibleWidgets(Lcom/android/launcher3/OplusWorkspace;)V

    const-string/jumbo p0, "onIdpChanged -- requestLayout "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    :cond_e9
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    const-string/jumbo p0, "onIdpChanged -- rebindCallbacks "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f2
    :goto_f2
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/OplusLauncherInjector;->sFromSplitScreenShortcutChanged:Z

    :goto_f5
    return-void
.end method

.method private static synthetic lambda$injectLauncherOnIdpChanged$0(Landroid/os/Handler;Landroid/os/MessageQueue$IdleHandler;Lcom/android/launcher3/OplusLauncherModel;)V
    .registers 5

    const-string v0, "Launcher"

    const-string/jumbo v1, "rebindCallbacks at postDelay"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherModel;->rebindCallbacks()V

    return-void
.end method

.method public static setFromSplitScreenShortcutChanged(Z)V
    .registers 3

    const-string/jumbo v0, "set fromSplitScreenShortcutChanged:"

    const-string v1, "Launcher"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sput-boolean p0, Lcom/android/launcher3/OplusLauncherInjector;->sFromSplitScreenShortcutChanged:Z

    return-void
.end method

.method public static startLauncherSettings(Landroid/view/View;)Z
    .registers 5

    const-string v0, "Main"

    const-string/jumbo v1, "start: startSettings"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.launcher3.settings.SettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method
