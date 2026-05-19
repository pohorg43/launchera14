.class public Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;
.super Landroidx/preference/SwitchPreferenceCompat;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field public c:Landroid/widget/TextView;

.field public d:Landroid/view/View;

.field public e:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field public final f:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

.field public g:Z

.field public h:Z

.field public i:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/list/R$attr;->couiSwitchLoadPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    sget v0, Lcom/support/list/R$style;->Preference_COUI_SwitchPreference_Loading:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p4, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$1;)V

    iput-object p4, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->f:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    sget-object p4, Lcom/support/list/R$styleable;->COUIPreference:[I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->g:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_isSupportCardUse:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->h:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/list/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->b:I

    return-void
.end method


# virtual methods
.method public drawDivider()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->d:Landroid/view/View;

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

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->b:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->b:I

    return p0
.end method

.method public isSupportCardUse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->h:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->d:Landroid/view/View;

    sget v0, Lcom/support/list/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_13
    sget v0, Lcom/support/list/R$id;->switchWidget:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    instance-of v2, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v2, :cond_2a

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVerticalScrollBarEnabled(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->e:Lcom/coui/appcompat/couiswitch/COUISwitch;

    :cond_2a
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreferenceCompat;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->a:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v1, :cond_43

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setLoadingStyle(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->i:Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setOnLoadingStateChangedListener(Lcom/coui/appcompat/couiswitch/COUISwitch$OnLoadingStateChangedListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->f:Lcom/coui/appcompat/preference/COUISwitchLoadingPreference$Listener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_43
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->g:Z

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->c(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    :cond_4e
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->c:Landroid/widget/TextView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/support/list/R$id;->img_layout:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_79

    if-eqz v0, :cond_74

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_79

    :cond_74
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_79
    :goto_79
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    return-void
.end method

.method public onClick()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->e:Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setShouldPlaySound(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->e:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchLoadingPreference;->e:Lcom/coui/appcompat/couiswitch/COUISwitch;

    invoke-virtual {p0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->f()V

    :cond_12
    return-void
.end method
