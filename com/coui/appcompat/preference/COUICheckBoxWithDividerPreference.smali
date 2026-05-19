.class public Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;
.super Landroidx/preference/CheckBoxPreference;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$OnMainLayoutClickListener;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/widget/LinearLayout;

.field public e:Landroid/widget/LinearLayout;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/list/R$attr;->couiCheckBoxWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    sget v0, Lcom/support/list/R$style;->Preference_COUI_COUICheckBoxWithDividerPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/support/list/R$styleable;->COUICheckBoxPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/support/list/R$styleable;->COUICheckBoxPreference_couiCheckBoxAssignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/support/list/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_isSupportCardUse:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->a:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->b:I

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V
    .registers 1

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->g:Landroid/view/View;

    instance-of v0, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v2, 0x2

    if-ne p0, v2, :cond_12

    :cond_11
    move v1, v0

    :cond_12
    return v1
.end method

.method public getDividerEndInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->b:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->b:I

    return p0
.end method

.method public isSupportCardUse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->a:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 7

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->g:Landroid/view/View;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/support/list/R$id;->img_layout:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    if-eqz v2, :cond_2c

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2c

    :cond_29
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    if-eqz v0, :cond_41

    instance-of v2, v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-eqz v2, :cond_41

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x2

    goto :goto_3e

    :cond_3d
    move v2, v1

    :goto_3e
    invoke-virtual {v0, v2}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :cond_41
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->f:Landroid/widget/TextView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/support/list/R$id;->main_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->d:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6b

    new-instance v2, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$1;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_6b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/support/list/R$id;->check_box_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8a

    new-instance v2, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference$2;-><init>(Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->e:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_8a
    sget v0, Lcom/support/list/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a6

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICheckBoxWithDividerPreference;->c:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a6

    :cond_a3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a6
    :goto_a6
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    return-void
.end method
