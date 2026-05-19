.class Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

.field public final synthetic b:I

.field public final synthetic c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->a:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2d

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->a:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget v0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->a:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->c:Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$1;->b:I

    iput p0, p1, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;->a:I

    throw v1

    :cond_2d
    throw v1
.end method
