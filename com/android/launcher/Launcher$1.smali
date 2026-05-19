.class Lcom/android/launcher/Launcher$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_25

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_9

    goto :goto_25

    :cond_9
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-eq p1, v1, :cond_30

    iget-object v1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v2, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/utils/SystemBarHelper;->showStatusBar(Landroid/view/Window;)V

    goto :goto_30

    :cond_25
    :goto_25
    sget-object v1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    iget-object v2, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/utils/SystemBarHelper;->hideStatusBar(Landroid/view/Window;)V

    :cond_30
    :goto_30
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3b

    if-eq p1, v0, :cond_3b

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_44

    :cond_3b
    iget-object v0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/states/RotationHelper;->setCurrentStateRequest(I)V

    :cond_44
    iget-object v0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_59

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_59

    iget-object v0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getRotationHelper()Lcom/android/launcher3/states/RotationHelper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/states/RotationHelper;->setCurrentTransitionRequest(I)V

    :cond_59
    iget-object v0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/OplusWorkspace;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_ab

    if-eq p1, v1, :cond_79

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_ab

    iget-object p1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->access$000(Lcom/android/launcher/Launcher;)Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_ab

    :cond_79
    sget-object p1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-nez p1, :cond_ab

    iget-object p1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    if-eqz p1, :cond_97

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/state/ToggleBarLayoutState;

    if-nez p1, :cond_a0

    :cond_97
    iget-object p1, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/OplusWorkspace;->showPageIndicator()V

    :cond_a0
    iget-object p0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusHotseat;->setAnimAlpha(F)V

    :cond_ab
    return-void
.end method

.method public onStateTransitionStart(Ljava/lang/Object;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/statemanager/StateManager$StateListener;->onStateTransitionStart(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_22

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_22

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p0, p0, Lcom/android/launcher/Launcher$1;->this$0:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    if-eqz p0, :cond_22

    sget-object p0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {p0}, Lcom/android/launcher/guide/DrawerGuideManager;->cancelAllAnim()V

    :cond_22
    return-void
.end method
