.class public Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$OnItemClickListener;,
        Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I


# virtual methods
.method public getItemCount()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->a:I

    const/4 v1, 0x0

    if-ne p0, p2, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    move p0, v1

    :goto_c
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_23

    iget-object p0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2d

    :cond_23
    iget-object p0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2d
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5
    .param p1  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p2, 0x0

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Landroid/view/View;)V

    throw p2
.end method
