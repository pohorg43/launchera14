.class public Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final g:I


# instance fields
.field public a:Z

.field public b:Z

.field public c:Landroid/content/Context;

.field public d:[Ljava/lang/CharSequence;

.field public e:[Ljava/lang/CharSequence;

.field public f:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget v0, Lcom/support/appcompat/R$layout;->coui_alert_dialog_summary_item:I

    sput v0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V
    .registers 7

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->a:Z

    iput-boolean p3, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->b:Z

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->e:[Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->f:[I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

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

    iget-object p0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

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
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_42

    iget-object p2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v2, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->g:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;

    invoke-direct {p3, p0, v0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;-><init>(Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$1;)V

    const v2, 0x1020014

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    sget v2, Lcom/support/appcompat/R$id;->summary_text2:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget v2, Lcom/support/appcompat/R$id;->item_divider:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    sget v2, Lcom/support/appcompat/R$id;->main_layout:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_48

    :cond_42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;

    :goto_48
    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->d:[Ljava/lang/CharSequence;

    if-nez v2, :cond_4e

    move-object v2, v0

    goto :goto_50

    :cond_4e
    aget-object v2, v2, p1

    :goto_50
    iget-object v3, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->e:[Ljava/lang/CharSequence;

    if-nez v3, :cond_55

    goto :goto_5b

    :cond_55
    array-length v4, v3

    if-lt p1, v4, :cond_59

    goto :goto_5b

    :cond_59
    aget-object v0, v3, p1

    :goto_5b
    iget-object v3, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_6e

    iget-object v0, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_78

    :cond_6e
    iget-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_78
    iget-object v0, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->d:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_bottom_extra_new:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_bottom_alert_dialog_vertical_button_padding_vertical_new:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_ab

    iget-boolean v7, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->b:Z

    if-eqz v7, :cond_ab

    add-int/2addr v2, v4

    invoke-virtual {v0, v5, v4, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b9

    :cond_ab
    if-nez p1, :cond_b6

    iget-boolean v7, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->a:Z

    if-eqz v7, :cond_b6

    add-int/2addr v2, v4

    invoke-virtual {v0, v5, v2, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b9

    :cond_b6
    invoke-virtual {v0, v5, v4, v6, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_b9
    iget-object v0, p0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->f:[I

    if-eqz v0, :cond_c9

    if-ltz p1, :cond_c9

    array-length v2, v0

    if-ge p1, v2, :cond_c9

    iget-object v2, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    aget v0, v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c9
    iget-object v0, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_e7

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_e2

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;->getCount()I

    move-result p0

    sub-int/2addr p0, v2

    if-ne p1, p0, :cond_dc

    goto :goto_e2

    :cond_dc
    iget-object p0, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e7

    :cond_e2
    :goto_e2
    iget-object p0, p3, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter$ViewHolder;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e7
    :goto_e7
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-object p2
.end method

.method public hasStableIds()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
