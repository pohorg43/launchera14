.class public Lcom/coui/appcompat/preference/COUISwitchPreference;
.super Landroidx/preference/SwitchPreference;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;
    }
.end annotation


# static fields
.field public static final CIRCLE:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0xe

.field public static final ROUND:I = 0x1


# instance fields
.field private mAssignment:Ljava/lang/CharSequence;

.field private mDividerDefaultHorizontalPadding:I

.field private mHasBorder:Z

.field private mHasRedDot:Z

.field private mIconStyle:I

.field private mIsCustom:Z

.field private mIsEnableClickSpan:Z

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field private final mListener:Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

.field private mRadius:I

.field private mRedDotDiameter:I

.field private mRedDotMarginStart:I

.field private mSwitchBarCheckedColor:I

.field private mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroidx/preference/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;-><init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference$1;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsCustom:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchBarCheckedColor:I

    sget-object v1, Lcom/support/list/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsEnableClickSpan:Z

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_isSupportCardUse:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsSupportCardUse:Z

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_couiIconStyle:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIconStyle:I

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mHasBorder:Z

    sget v2, Lcom/support/list/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v1, Lcom/support/list/R$styleable;->COUISwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/list/R$styleable;->COUISwitchPreference_hasTitleRedDot:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mHasRedDot:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/list/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mDividerDefaultHorizontalPadding:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_dot_diameter_small:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRedDotDiameter:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_switch_preference_dot_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRedDotMarginStart:I

    return-void
.end method

.method public static synthetic access$100(Lcom/coui/appcompat/preference/COUISwitchPreference;Ljava/lang/Object;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUISwitchPreference;->callCustomChangeListener(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private callCustomChangeListener(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    invoke-virtual {p0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public drawDivider()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mItemView:Landroid/view/View;

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

.method public getAssignment()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getBorderRectRadius(I)I
    .registers 3

    const/4 p0, 0x1

    const/16 v0, 0xe

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_e

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    goto :goto_e

    :cond_c
    const/16 v0, 0x10

    :cond_e
    :goto_e
    return v0
.end method

.method public getDividerEndAlignView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public isSupportCardUse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 11

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mItemView:Landroid/view/View;

    sget v0, Lcom/support/list/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    :cond_13
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/support/list/R$id;->jump_icon_red_dot:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz v3, :cond_38

    check-cast v0, Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mListener:Lcom/coui/appcompat/preference/COUISwitchPreference$Listener;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVerticalScrollBarEnabled(Z)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    iget v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchBarCheckedColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_38

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setBarCheckedColor(I)V

    :cond_38
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->c(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    :cond_46
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    iget-boolean v6, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mHasBorder:Z

    iget v7, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIconStyle:I

    iget-boolean v8, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsCustom:Z

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->b(Landroidx/preference/PreferenceViewHolder;Landroid/content/Context;IZIZ)V

    sget v0, Lcom/support/list/R$id;->img_layout:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v0, :cond_76

    if-eqz v3, :cond_73

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_76

    :cond_73
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_76
    :goto_76
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lcom/support/list/R$id;->assignment:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_96

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_93

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_96

    :cond_93
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_96
    :goto_96
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_bf

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mHasRedDot:Z

    if-eqz v0, :cond_b9

    move-object v0, v2

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    goto :goto_bc

    :cond_b9
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_bc
    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    :cond_bf
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    return-void
.end method

.method public onClick()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setPlaySound(Z)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setPerformFeedBack(Z)V

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    return-void
.end method

.method public refresh()V
    .registers 6

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz p0, :cond_4f

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUISwitch:[I

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_39

    :cond_25
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUISwitch:[I

    iget v4, p0, Lcom/coui/appcompat/couiswitch/COUISwitch;->w:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_39
    :goto_39
    if-eqz v3, :cond_4c

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->b(Landroid/content/res/TypedArray;Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/couiswitch/COUISwitch;->c(Landroid/content/Context;)V

    :cond_4c
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_4f
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_d
    return-void
.end method

.method public setBorderRectRadius(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mRadius:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setHasRedDot(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mHasRedDot:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIsCustomIconRadius(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsCustom:Z

    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsEnableClickSpan:Z

    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setPerformFeedBack(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setTactileFeedbackEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setPlaySound(Z)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchView:Lcom/coui/appcompat/couiswitch/COUISwitch;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/couiswitch/COUISwitch;->setShouldPlaySound(Z)V

    :cond_7
    return-void
.end method

.method public final setSwitchBarCheckedColor(I)V
    .registers 2
    .param p1  # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mSwitchBarCheckedColor:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUISwitchPreference;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method
