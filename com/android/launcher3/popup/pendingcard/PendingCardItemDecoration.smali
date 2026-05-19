.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration$WhenMappings;
    }
.end annotation


# instance fields
.field private final cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

.field private final context:Landroid/content/Context;

.field private final verticalSpaceCompensate:I

.field private final verticalSpaceHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070cd6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070cd4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f070cd5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float p1, p2

    const/high16 p2, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceCompensate:I

    return-void
.end method


# virtual methods
.method public final getCardViewContainer()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 11

    const-string/jumbo v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getMinCardSize()Landroid/graphics/Point;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getOriginMaxCardSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne p4, v0, :cond_2b

    return-void

    :cond_2b
    move-object p4, p2

    check-cast p4, Lcom/android/launcher3/popup/pendingcard/PendingCardView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.popup.pendingcard.PendingCardAdapter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardAdapter;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->cardViewContainer:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->getInnerAlignStateVertical()Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$InnerVerticalAlignState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v1, v4, :cond_e2

    if-eq v1, v5, :cond_bb

    if-eq v1, v3, :cond_58

    goto/16 :goto_13d

    :cond_58
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_68

    iget p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceCompensate:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_13d

    :cond_68
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p2, v1, :cond_b5

    invoke-virtual {p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getMType()I

    move-result p2

    if-ne p2, v3, :cond_93

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v5

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p2

    goto :goto_a9

    :cond_93
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p2

    :goto_a9
    if-le p2, v5, :cond_af

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13d

    :cond_af
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceCompensate:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13d

    :cond_b5
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13d

    :cond_bb
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_cc

    iget p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceCompensate:I

    mul-int/2addr p0, v5

    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto/16 :goto_13d

    :cond_cc
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v4

    if-ne p2, p3, :cond_dd

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_13d

    :cond_dd
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_13d

    :cond_e2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_ed

    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_13d

    :cond_ed
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p2, v1, :cond_139

    invoke-virtual {p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardView;->getMType()I

    move-result p2

    if-ne p2, v3, :cond_118

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v5

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p2

    goto :goto_12e

    :cond_118
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/card/config/domain/model/CardConfigInfo;

    invoke-virtual {p2}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getSize()I

    move-result p2

    :goto_12e
    if-le p2, v5, :cond_133

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_13d

    :cond_133
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceCompensate:I

    mul-int/2addr p0, v5

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_13d

    :cond_139
    iget p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardItemDecoration;->verticalSpaceHeight:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_13d
    return-void
.end method
