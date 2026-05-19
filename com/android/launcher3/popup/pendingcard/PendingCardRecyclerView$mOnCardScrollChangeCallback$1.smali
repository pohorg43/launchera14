.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;
.super Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-direct {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardScrolled(I)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMScrolled$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findFirstVisibleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setMFirstVisibleView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findLastVisibleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setMLastVisibleView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    sget-object v1, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;->SCROLL_DIRECTION_DOWN:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCompletelyVisibleView(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$ScrollDirection;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->setMCompletelyVisibleView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMCompletelyVisibleView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMLastVisibleView()Landroid/view/View;

    move-result-object v0

    :cond_30
    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMCompletelyVisibleView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_3e

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisibleView()Landroid/view/View;

    move-result-object v1

    :cond_3e
    if-eqz v0, :cond_97

    if-eqz v1, :cond_97

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v3

    if-eq v2, v3, :cond_97

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMCardTransformer$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    move-result-object v4

    if-eqz v4, :cond_87

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v4, v0, v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->transformPage(Landroid/view/View;F)V

    :cond_87
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMCardTransformer$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    move-result-object v2

    if-eqz v2, :cond_97

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->transformPage(Landroid/view/View;F)V

    :cond_97
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMTotalScrollDistance$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)I

    move-result v2

    if-nez v2, :cond_a6

    if-eqz p1, :cond_a6

    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$onCardChanged(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    :cond_a6
    iget-object v2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {v2}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMTotalScrollDistance$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v2, v3}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMTotalScrollDistance$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f000000  # 0.5f

    const/4 v4, 0x1

    if-eqz v1, :cond_129

    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->setMPosition(I)V

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->setMOffsetPx(I)V

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffsetPx()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v7, v1

    invoke-static {v7, p1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->setMOffset(F)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_102

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    invoke-static {v6, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$onCardSettled(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    goto :goto_122

    :cond_102
    invoke-static {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMFirstVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F

    move-result v1

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v7

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_122

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_122

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    invoke-static {v6, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$onCardSettled(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    :cond_122
    :goto_122
    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v1

    invoke-static {v6, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMFirstVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;F)V

    :cond_129
    const/4 v1, -0x1

    if-eqz v0, :cond_1b4

    iget-object v5, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMLastVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->setMPosition(I)V

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getClipPathRect()Landroid/graphics/RectF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->setMOffsetPx(I)V

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffsetPx()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v7, v0

    invoke-static {v7, p1, v2}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p1

    invoke-virtual {v5, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->setMOffset(F)V

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_178

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_178

    invoke-static {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMIsRedirectedToCardStore$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_178

    invoke-static {v6, v4}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMIsRedirectedToCardStore$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V

    :cond_178
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_18d

    invoke-virtual {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->findCenterView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {v6, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$onCardSettled(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    goto :goto_1ad

    :cond_18d
    invoke-static {v6}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMLastVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)F

    move-result p1

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1ad

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1ad

    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result p1

    invoke-static {v6, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$onCardSettled(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    :cond_1ad
    :goto_1ad
    invoke-virtual {v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result p1

    invoke-static {v6, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMLastVisualCardOldOffset$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;F)V

    :cond_1b4
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$locatePinY(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-static {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$locateIndicatorY(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v3

    const/4 v5, 0x0

    if-eq v3, v1, :cond_1fd

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    const/16 v3, 0x9

    if-ge v1, v3, :cond_1fd

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_1de

    goto :goto_1df

    :cond_1de
    move v4, v5

    :goto_1df
    if-nez v4, :cond_1fd

    invoke-static {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMCardContainer$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getIndicator()Lcom/coui/appcompat/indicator/COUIPageIndicator2;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffsetPx()I

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator2;->a(IF)V

    :cond_1fd
    iget-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMLastVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView$mOnCardScrollChangeCallback$1;->this$0:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMOffset()F

    move-result p1

    const/16 v0, 0xff

    int-to-float v1, v0

    mul-float/2addr p1, v1

    float-to-int p1, p1

    rsub-int p1, p1, 0xff

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMIsStartFakeAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_23d

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getMFirstVisualCardScrollEvent()Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;->getMPosition()I

    move-result v1

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMHorizontalSizeChangePosition$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)I

    move-result v2

    if-ne v1, v2, :cond_23d

    if-ne p1, v0, :cond_231

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_231

    invoke-static {p0, v5}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMIsStartFakeAlphaAnim$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Z)V

    goto :goto_23d

    :cond_231
    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setMFourSpanXBgAlpha$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    invoke-static {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$getMIsOverSlide$p(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_23d

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->access$setFourSpanXBgAlpha(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;I)V

    :cond_23d
    :goto_23d
    return-void
.end method
