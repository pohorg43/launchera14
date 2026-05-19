.class Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_27

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_9

    goto :goto_27

    :cond_9
    sget-object v1, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$002(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;I)I

    goto :goto_61

    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_44
    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {v1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_61
    :goto_61
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    const/4 v2, 0x0

    if-eq p1, v1, :cond_75

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    iget-object v1, v1, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->reset()V

    if-ne p1, v0, :cond_96

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p0, v2}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$002(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;I)I

    goto :goto_96

    :cond_75
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)I

    move-result p1

    if-lez p1, :cond_96

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_96

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)I

    move-result p0

    invoke-virtual {p1, p0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_96
    :goto_96
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_8

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v1, :cond_4a

    :cond_8
    if-ne p1, v0, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$002(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;I)I

    :cond_10
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_2d
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_4a
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
