.class public Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;
.super Lcom/coui/appcompat/preference/COUISwitchPreference;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/LinearLayout;

.field public b:Landroid/widget/LinearLayout;

.field public c:Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$OnMainLayoutClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/list/R$attr;->couiSwitchWithDividerPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    sget v0, Lcom/support/list/R$style;->Preference_COUI_COUISwitchWithDividerPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V
    .registers 1

    invoke-super {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->onClick()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/support/list/R$id;->main_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->a:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_22

    new-instance v1, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$1;-><init>(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_22
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/support/list/R$id;->switch_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_41

    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference$2;-><init>(Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchWithDividerPreference;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    :cond_41
    return-void
.end method
