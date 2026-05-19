.class public Lcom/coui/appcompat/preference/COUIEditTextPreference;
.super Landroidx/preference/EditTextPreference;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Z

.field public f:Z

.field public g:Landroid/graphics/Point;

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroidx/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->g:Landroid/graphics/Point;

    sget-object v0, Lcom/support/list/R$styleable;->COUIPreference:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->d:Ljava/lang/CharSequence;

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_coui_jump_mark:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->c:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_coui_jump_status1:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->b:Ljava/lang/CharSequence;

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_isSupportCardUse:I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->f:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v0, Lcom/support/list/R$styleable;->couiEditTextPreference:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->couiEditTextPreference_couiSupportEmptyInput:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->e:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->a:I

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->i:Landroid/view/View;

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

    iget p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->a:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->a:I

    return p0
.end method

.method public isSupportCardUse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->f:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 6

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->b:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->d:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->a(Landroidx/preference/PreferenceViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->j:Landroid/widget/TextView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIEditTextPreference;->h:Landroid/view/View;

    new-instance v0, Lcom/coui/appcompat/preference/COUIEditTextPreference$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIEditTextPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIEditTextPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
