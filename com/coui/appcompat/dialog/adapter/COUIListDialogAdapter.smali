.class public Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public final a:I

.field public b:Landroid/content/Context;

.field public c:[Ljava/lang/CharSequence;

.field public d:[I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget v0, Lcom/support/appcompat/R$layout;->coui_list_dialog_item:I

    iput v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->e:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->f:Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->d:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    array-length p0, p0

    :goto_7
    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_8

    :cond_6
    aget-object p0, p0, p1

    :goto_8
    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v0, 0x0

    if-nez p2, :cond_35

    iget-object p2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->a:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;)V

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    sget v1, Lcom/support/appcompat/R$id;->item_divider:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    sget v1, Lcom/support/appcompat/R$id;->main_layout:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_3b

    :cond_35
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;

    :goto_3b
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->c:[Ljava/lang/CharSequence;

    if-nez v2, :cond_43

    const/4 v2, 0x0

    goto :goto_45

    :cond_43
    aget-object v2, v2, p1

    :goto_45
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->d:[I

    if-eqz v1, :cond_61

    aget v1, v1, p1

    if-lez v1, :cond_58

    iget-object v2, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    goto :goto_61

    :cond_58
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    sget v3, Lcom/support/appcompat/R$style;->DefaultDialogItemTextStyle:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_61
    :goto_61
    iget-object v1, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_81

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_7a

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ne p1, v1, :cond_74

    goto :goto_7a

    :cond_74
    iget-object p3, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_81

    :cond_7a
    :goto_7a
    iget-object p3, p3, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter$ViewHolder;->b:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_81
    :goto_81
    sget p3, Lcom/support/appcompat/R$id;->main_layout:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical_new:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_padding_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_padding_right:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->alert_dialog_list_item_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_dd

    iget-boolean v5, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->f:Z

    if-eqz v5, :cond_dd

    add-int/2addr v2, v0

    invoke-virtual {p3, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_eb

    :cond_dd
    if-nez p1, :cond_e8

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->e:Z

    if-eqz p0, :cond_e8

    add-int/2addr v1, v0

    invoke-virtual {p3, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_eb

    :cond_e8
    invoke-virtual {p3, v3, v1, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    :goto_eb
    return-object p2
.end method
