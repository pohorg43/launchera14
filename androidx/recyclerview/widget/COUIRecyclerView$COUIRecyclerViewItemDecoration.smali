.class public Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;
.super Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/COUIRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUIRecyclerViewItemDecoration"
.end annotation


# instance fields
.field private final mChildLocation:[I

.field private final mItemLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mItemLocation:[I

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mChildLocation:[I

    return-void
.end method


# virtual methods
.method public getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    if-eqz v2, :cond_5a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_17

    goto :goto_18

    :cond_17
    move p2, v2

    :goto_18
    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    invoke-interface {v1}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerEndAlignView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_55

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mItemLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mChildLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz p2, :cond_3b

    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mChildLocation:[I

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    add-int/2addr p1, p2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mItemLocation:[I

    aget p0, p0, v2

    sub-int/2addr p1, p0

    goto :goto_54

    :cond_3b
    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mItemLocation:[I

    aget p2, p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mChildLocation:[I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr p2, p0

    sub-int p1, v0, p2

    :goto_54
    return p1

    :cond_55
    invoke-interface {v1}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerEndInset()I

    move-result p0

    return p0

    :cond_5a
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0
.end method

.method public getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 6

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    instance-of v2, v1, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    if-eqz v2, :cond_5a

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_17

    goto :goto_18

    :cond_17
    move p2, v2

    :goto_18
    check-cast v1, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    invoke-interface {v1}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerStartAlignView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_55

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mItemLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mChildLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz p2, :cond_45

    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mItemLocation:[I

    aget p2, p2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mChildLocation:[I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    sub-int/2addr p2, p0

    sub-int/2addr v0, p2

    goto :goto_54

    :cond_45
    iget-object p2, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mChildLocation:[I

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    add-int/2addr p1, p2

    iget-object p0, p0, Landroidx/recyclerview/widget/COUIRecyclerView$COUIRecyclerViewItemDecoration;->mItemLocation:[I

    aget p0, p0, v2

    sub-int v0, p1, p0

    :goto_54
    return v0

    :cond_55
    invoke-interface {v1}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerStartInset()I

    move-result p0

    return p0

    :cond_5a
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0
.end method

.method public shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    instance-of p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    if-eqz p1, :cond_15

    check-cast p0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    invoke-interface {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->drawDivider()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x1

    return p0
.end method
