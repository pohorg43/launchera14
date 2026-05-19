.class public Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;
.super Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;
.source ""


# instance fields
.field public final a:[I

.field public final b:[I

.field public c:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .registers 4
    .param p2  # Landroidx/preference/PreferenceScreen;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->a:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->b:[I

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->c:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->c:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetEnd(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v1, :cond_71

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_71

    instance-of v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    if-eqz v2, :cond_71

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move p2, v2

    :goto_2f
    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerEndAlignView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6c

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->a:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->b:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz p2, :cond_52

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->b:[I

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    add-int/2addr p1, p2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->a:[I

    aget p0, p0, v2

    sub-int/2addr p1, p0

    goto :goto_6b

    :cond_52
    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->a:[I

    aget p2, p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->b:[I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    sub-int/2addr p2, p0

    sub-int p1, v0, p2

    :goto_6b
    return p1

    :cond_6c
    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerEndInset()I

    move-result p0

    return p0

    :cond_71
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0
.end method

.method public getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->c:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_9

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v1, :cond_71

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_71

    instance-of v2, v0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    if-eqz v2, :cond_71

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_2e

    goto :goto_2f

    :cond_2e
    move p2, v2

    :goto_2f
    check-cast v0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerStartAlignView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6c

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->a:[I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->b:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    if-eqz p2, :cond_5c

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->a:[I

    aget p2, p2, v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->b:[I

    aget p0, p0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    sub-int/2addr p2, p0

    sub-int/2addr v0, p2

    goto :goto_6b

    :cond_5c
    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->b:[I

    aget p2, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    add-int/2addr p1, p2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->a:[I

    aget p0, p0, v2

    sub-int v0, p1, p0

    :goto_6b
    return v0

    :cond_6c
    invoke-interface {v0}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->getDividerStartInset()I

    move-result p0

    return p0

    :cond_71
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView$COUIDividerItemDecoration;->getDividerInsetStart(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p0

    return p0
.end method

.method public shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;I)Z
    .registers 5

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceItemDecoration;->c:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v1, p0, Landroidx/preference/PreferenceGroupAdapter;

    if-eqz v1, :cond_29

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p0, Landroidx/preference/PreferenceGroupAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_29

    instance-of p1, p0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    if-eqz p1, :cond_29

    check-cast p0, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;

    invoke-interface {p0}, Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;->drawDivider()Z

    move-result p0

    return p0

    :cond_29
    return v0
.end method
