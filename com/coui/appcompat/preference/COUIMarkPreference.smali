.class public Lcom/coui/appcompat/preference/COUIMarkPreference;
.super Landroidx/preference/CheckBoxPreference;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/CharSequence;

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Landroid/widget/TextView;

.field public k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/list/R$attr;->couiMarkPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    sget v0, Lcom/support/list/R$style;->Preference_COUI_COUIMarkPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIMarkPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->b:Z

    sget-object v2, Lcom/support/list/R$styleable;->COUIMarkPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/support/list/R$styleable;->COUIMarkPreference_couiMarkStyle:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->a:I

    sget v3, Lcom/support/list/R$styleable;->COUIMarkPreference_couiMarkAssignment:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->e:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Lcom/support/list/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean p3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->b:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->b:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->c:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_isSupportCardUse:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->d:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiIconStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->f:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->h:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->i:I

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->k:Landroid/view/View;

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

.method public getDividerEndAlignView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->i:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->i:I

    return p0
.end method

.method public isSupportCardUse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->d:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 12

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->k:Landroid/view/View;

    sget v0, Lcom/support/list/R$id;->coui_tail_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2a

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_2a

    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->a:I

    if-nez v3, :cond_27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_2a

    :cond_27
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2a
    :goto_2a
    sget v0, Lcom/support/list/R$id;->coui_head_mark:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    instance-of v3, v0, Landroid/widget/Checkable;

    if-eqz v3, :cond_4b

    iget v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->a:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_48

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_4b

    :cond_48
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->h:I

    iget-boolean v7, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->g:Z

    iget v8, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->f:I

    const/4 v9, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->b(Landroidx/preference/PreferenceViewHolder;Landroid/content/Context;IZIZ)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->j:Landroid/widget/TextView;

    sget v0, Lcom/support/list/R$id;->img_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v0, :cond_81

    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_81

    :cond_7e
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_81
    :goto_81
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->c:Z

    if-eqz v0, :cond_8c

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->c(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    :cond_8c
    sget v0, Lcom/support/list/R$id;->assignment:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_a8

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIMarkPreference;->e:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a8

    :cond_a5
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a8
    :goto_a8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    return-void
.end method
