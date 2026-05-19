.class Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;Landroid/view/View;)V
    .registers 3
    .param p1  # Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x1020014

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget p1, Lcom/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    sget p1, Lcom/support/appcompat/R$id;->radio_button:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIBottomSheetChoiceListAdapter$ViewHolder;->c:Landroid/widget/RadioButton;

    const/4 p0, 0x0

    throw p0
.end method
