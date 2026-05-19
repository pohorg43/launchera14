.class Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_c

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->updateFastScrollerVisibility()V

    goto :goto_1b

    :cond_c
    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_1b

    sget-object v1, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowUpArrow()V

    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->refreshBackgroundColor()V

    if-ne p1, v0, :cond_51

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object v0, p1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    instance-of v0, v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    if-eqz v0, :cond_51

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getMainAdapter()Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getAllAppsDividerItemView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needShowBranchSearchGuide(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    check-cast p0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->showBranchSearchGuide()V

    :cond_51
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_4f

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->getPopupContainer(Lcom/android/launcher3/views/ActivityContext;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainerImmediately(Lcom/android/launcher/Launcher;)V

    :cond_37
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->isSearchEditHasFocus()Z

    move-result p1

    if-eqz p1, :cond_48

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {p0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->clearSearchEditFocus()V

    :cond_48
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onPageBeginTransitionForUpArrow()V

    goto/16 :goto_c8

    :cond_4f
    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_5f

    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-eqz p1, :cond_c8

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->readyGoToToggleBarState()V

    goto :goto_c8

    :cond_5f
    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7d

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->isSearchEditHasFocus()Z

    move-result p1

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mActivityAppsSearchContainerLayout:Lcom/android/launcher3/allapps/OplusSearchUiManager;

    invoke-interface {p1}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->clearSearchEditFocus()V

    :cond_75
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    goto :goto_c8

    :cond_7d
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_8e

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iput-boolean v1, p1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updateWorkTabColor()V

    goto :goto_c8

    :cond_8e
    sget-object v2, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    if-ne p1, v2, :cond_c8

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    instance-of v2, p1, Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v2, :cond_bd

    check-cast p1, Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    if-eqz p1, :cond_bd

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/OplusStateManager;->getBackState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    if-ne p1, v0, :cond_bd

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mIsInTranslate:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidateOutline()V

    :cond_bd
    sget-object p0, Lcom/android/launcher3/uparrow/UpArrowHelper;->INSTANCE:Lcom/android/launcher3/uparrow/UpArrowHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->isEnableUpArrow()Z

    move-result p1

    if-eqz p1, :cond_c8

    invoke-virtual {p0}, Lcom/android/launcher3/uparrow/UpArrowHelper;->onShowPageIndicator()V

    :cond_c8
    :goto_c8
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$2;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
