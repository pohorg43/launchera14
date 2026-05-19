.class public final Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 6

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_12

    const/4 v2, 0x2

    if-ne p2, v2, :cond_11

    goto :goto_12

    :cond_11
    move v1, v0

    :cond_12
    :goto_12
    if-eqz v1, :cond_43

    iget-object p2, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p2

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p2

    check-cast p2, Lcom/android/launcher3/LauncherState;

    goto :goto_2a

    :cond_29
    const/4 p2, 0x0

    :goto_2a
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-ne p2, v1, :cond_43

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->getMIsLaunchToRecent()Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->showCouiToolTips()V

    goto :goto_48

    :cond_43
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;->this$0:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->dismissCouiToolTips(Z)V

    :goto_48
    return-void
.end method
