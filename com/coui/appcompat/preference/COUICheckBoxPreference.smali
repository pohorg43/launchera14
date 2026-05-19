.class public final Lcom/coui/appcompat/preference/COUICheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/view/View;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/list/R$attr;->couiCheckBoxPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUICheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    sget v0, Lcom/support/list/R$style;->Preference_COUI_COUICheckBoxPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->c:I

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->b:Landroid/view/View;

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

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->c:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->c:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_a

    :cond_9
    move-object v1, v0

    :goto_a
    iput-object v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->b:Landroid/view/View;

    if-eqz p1, :cond_16

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1e

    check-cast v1, Landroid/widget/TextView;

    goto :goto_1f

    :cond_1e
    move-object v1, v0

    :goto_1f
    iput-object v1, p0, Lcom/coui/appcompat/preference/COUICheckBoxPreference;->a:Landroid/widget/TextView;

    if-eqz p1, :cond_2b

    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_2c

    :cond_2b
    move-object v1, v0

    :goto_2c
    instance-of v2, v1, Lcom/coui/appcompat/checkbox/COUICheckBox;

    if-eqz v2, :cond_33

    move-object v0, v1

    check-cast v0, Lcom/coui/appcompat/checkbox/COUICheckBox;

    :cond_33
    if-nez v0, :cond_36

    goto :goto_40

    :cond_36
    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x2

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    invoke-virtual {v0, v1}, Lcom/coui/appcompat/checkbox/COUICheckBox;->setState(I)V

    :goto_40
    if-eqz p1, :cond_4b

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v0, :cond_4b

    sget-object v1, Lcom/coui/appcompat/preference/a;->a:Lcom/coui/appcompat/preference/a;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4b
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    return-void
.end method
