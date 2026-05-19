.class public Lcom/oplus/quickstep/gesture/touchcontroller/TwoButtonPortraitStatesTouchController;
.super Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;
.source ""


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method


# virtual methods
.method public canInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->TWO_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/android/launcher3/uioverrides/touchcontrollers/PortraitStatesTouchController;->isTouchOverHotseat(Lcom/android/launcher3/Launcher;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->isHandlingTouch()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    if-eqz v0, :cond_6b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAlwayson()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/common/TouchLogger;->Companion:Lcom/android/common/TouchLogger$Companion;

    invoke-virtual {v2}, Lcom/android/common/TouchLogger$Companion;->getINSTANCE()Lcom/android/common/TouchLogger;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v3, "TouchIntercept::"

    invoke-static {v3, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "canInterceptTouch had intercepted and scroll state is "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p0, p0, Lcom/android/launcher3/touch/AbstractStateChangeTouchController;->mDetector:Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/touch/BaseSwipeDetector;->getScrollState()Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, v1, p0}, Lcom/android/common/TouchLogger;->debug(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6b
    return v0
.end method

.method public getTargetState(Lcom/android/launcher3/LauncherState;Z)Lcom/android/launcher3/LauncherState;
    .registers 3

    sget-object p0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, p0, :cond_9

    if-eqz p2, :cond_9

    sget-object p0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    return-object p0

    :cond_9
    return-object p1
.end method
