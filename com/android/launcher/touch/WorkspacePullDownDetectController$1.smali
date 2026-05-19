.class Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/touch/WorkspacePullDownDetectController;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;


# direct methods
.method public constructor <init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "shelf_or_search_quite_action_call_time"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "mActionQuiteObserver onChange callTime: "

    const-string v4, "  currentTime"

    invoke-static {p1, v0, v1, v4}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "WorkspacePullDownDetectController"

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result p1

    if-nez p1, :cond_8a

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarUIController()Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;

    move-result-object p1

    if-eqz p1, :cond_44

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/taskbar/LauncherTaskbarUIController;->onLauncherResumedOrPaused(Z)V

    :cond_44
    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v4, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p1, v4, :cond_8a

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->getCurrentBlur()F

    move-result p1

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$000(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setBlurWithoutAnim(F)V

    :cond_8a
    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    cmp-long p1, v2, v0

    if-gez p1, :cond_ce

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$100(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/touch/PullDownAnimator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/touch/PullDownAnimator;->ismIsNewSearch()Z

    move-result p1

    if-eqz p1, :cond_c5

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$202(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$100(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/touch/PullDownAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {v0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$300(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher/touch/PullDownAnimator;->setmIsResetStatus(Z)V

    iget-object p1, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$300(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Z

    move-result p1

    if-eqz p1, :cond_ce

    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$100(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/touch/PullDownAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    goto :goto_ce

    :cond_c5
    iget-object p0, p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController$1;->this$0:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p0}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->access$100(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)Lcom/android/launcher/touch/PullDownAnimator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/touch/PullDownAnimator;->destroyAnimatorIfNeeded()V

    :cond_ce
    :goto_ce
    return-void
.end method
