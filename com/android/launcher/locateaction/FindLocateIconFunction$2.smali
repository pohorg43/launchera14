.class Lcom/android/launcher/locateaction/FindLocateIconFunction$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/locateaction/FindLocateIconFunction;->smoothScrollToPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

.field public final synthetic val$allAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field public final synthetic val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field public final synthetic val$pos:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;ILandroidx/recyclerview/widget/LinearLayoutManager;)V
    .registers 5

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iput-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$allAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput p3, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$pos:I

    iput-object p4, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4
    .param p1  # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_2d

    iget-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$allAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$pos:I

    invoke-static {p1, p2, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$000(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p1, p2, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$100(Lcom/android/launcher/locateaction/FindLocateIconFunction;ILandroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {p2, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$200(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_22

    iget-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-static {p2, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$300(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    goto :goto_27

    :cond_22
    iget-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->this$0:Lcom/android/launcher/locateaction/FindLocateIconFunction;

    invoke-static {p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->access$400(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V

    :goto_27
    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;->val$allAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_2d
    return-void
.end method
