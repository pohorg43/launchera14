.class public final Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method

.method private final getAppListSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMRecyclerView$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "mRecyclerView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_e
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_f

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    const/16 p1, 0x7d0

    invoke-static {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$resetHideDelay(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;I)V

    goto :goto_14

    :cond_f
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$cancelHide(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)V

    :goto_14
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMRealDy$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {p2, v0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$setMRealDy$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;I)V

    iget-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-static {p2}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->access$getMState$p(Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2f

    if-eqz p3, :cond_2f

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->getAppListSize()I

    move-result p2

    const/16 p3, 0x10

    if-le p2, p3, :cond_2f

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller$mOnScrollListener$1;->this$0:Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/oplus/quickstep/locksetting/ui/COUIAppListFastScroller;->updateScrollPosition(II)V

    :cond_2f
    return-void
.end method
