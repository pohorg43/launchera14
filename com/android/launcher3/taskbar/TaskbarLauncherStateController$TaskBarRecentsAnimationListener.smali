.class public final Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TaskBarRecentsAnimationListener"
.end annotation


# instance fields
.field private final mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->mCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    return-void
.end method

.method public static synthetic access$900(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->endGestureStateOverride(Z)V

    return-void
.end method

.method private endGestureStateOverride(Z)V
    .registers 6

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "endGestureStateOverride, finishedToApp = "

    invoke-static {v1, p1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$702(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;Z)Z

    xor-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->updateStateForFlag(IZ)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->applyState()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$800(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/AnimatedFloat;->cancelAnimation()V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$800(Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object v1

    if-eqz v0, :cond_36

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_37

    :cond_36
    const/4 v0, 0x0

    :goto_37
    invoke-virtual {v1, v0}, Lcom/android/quickstep/AnimatedFloat;->updateValue(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarFunctionConfig;->getTASKBAR_AUTO_HIDE_IN_APP_ON_GESTURE_NAV()Z

    move-result v0

    if-eqz v0, :cond_54

    if-nez p1, :cond_54

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result p1

    if-eqz p1, :cond_54

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    :cond_54
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_22

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    if-ne v2, v3, :cond_2e

    :cond_22
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v2}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v4

    goto :goto_2f

    :cond_2e
    move v2, v5

    :goto_2f
    sget-boolean v3, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v3, :cond_5d

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v6, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v3, v6, :cond_5d

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    if-ne v1, v6, :cond_5d

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getWillFinishToHome()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getWillFinishToHome()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5d

    :cond_5b
    move v1, v4

    goto :goto_5e

    :cond_5d
    move v1, v5

    :goto_5e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "onRecentsAnimationCanceled, InOverView="

    const-string v7, ",InBackGround="

    const-string v8, ",toHome="

    invoke-static {v6, v0, v7, v2, v8}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",getWillFinishToHome="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getWillFinishToHome()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez v0, :cond_8b

    if-nez v2, :cond_8b

    if-nez v1, :cond_8b

    goto :goto_8c

    :cond_8b
    move v4, v5

    :goto_8c
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;Lcom/android/quickstep/RecentsAnimationController;Z)V

    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;Lcom/android/quickstep/RecentsAnimationController;Z)V
    .registers 4
    .param p1  # Ljava/util/HashMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Lcom/android/quickstep/RecentsAnimationController;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;",
            "Lcom/android/quickstep/RecentsAnimationController;",
            "Z)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object p1, p1, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Launcher;->setEndGestureCallback(Ljava/lang/Runnable;)V

    invoke-direct {p0, p3}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->endGestureStateOverride(Z)V

    return-void
.end method

.method public onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->this$0:Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setEndGestureCallback(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationController;->getFinishTargetIsLauncher()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController$TaskBarRecentsAnimationListener;->endGestureStateOverride(Z)V

    return-void
.end method

.method public onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarLauncherStateController;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onRecentsAnimationStart"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
