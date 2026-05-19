.class public Lcom/coui/appcompat/preference/COUIPreference;
.super Landroidx/preference/Preference;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUICardSupportInterface;
.implements Landroidx/recyclerview/widget/COUIRecyclerView$ICOUIDividerDecorationInterface;


# static fields
.field public static final CIRCLE:I = 0x0

.field public static final DEFAULT_RADIUS:I = 0xe

.field public static final DEFAULT_SCALE:I = 0x3

.field public static final FORCE_CLICK:I = 0x1

.field public static final FORCE_UNCLICK:I = 0x2

.field public static final MAX_RADIUS:I = 0x24

.field public static final MIN_RADIUS:I = 0xe

.field public static final NORMAL:I = 0x0

.field public static final NO_ICON_HEIGHT:I = 0x0

.field public static final ROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "COUIPreference-"

.field public static final ratio:I = 0x6


# instance fields
.field private endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private iconRedDot:Landroid/view/View;

.field private mAssignment:Ljava/lang/CharSequence;

.field private mAssignmentColor:I

.field private mAssignmentInRightMinWidth:I

.field private mAssignmentMarginStartInRightHasReddot:I

.field private mClickStyle:I

.field private mContext:Landroid/content/Context;

.field private mCouiAssignmentInRight:Z

.field private mCouiSetDefaultColor:Z

.field private mDividerDefaultHorizontalPadding:I

.field private mEndRedDotMode:I

.field private mEndRedDotNum:I

.field private mHasBorder:Z

.field private mIconRedDotMode:I

.field private mIconStyle:I

.field private mIsBackgroundAnimationEnabled:Z

.field private mIsCustom:Z

.field private mIsEnableClickSpan:Z

.field private mIsSelected:Z

.field private mIsSupportCardUse:Z

.field private mItemView:Landroid/view/View;

.field public mJumpRes:Landroid/graphics/drawable/Drawable;

.field private mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

.field public mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

.field private mPreferenceImgMarginTopMultiline:I

.field private mPreferenceImgMarginTopSingleline:I

.field private mRadius:I

.field private mRedDotMarginEndAssignmentIsRight:I

.field private mReddotMarginEndInRightHasAssignment:I

.field private mReddotMarginEndInRightNoAssignment:I

.field private mShowDivider:Z

.field public mStatusText1:Ljava/lang/CharSequence;

.field private mSummaryTextColor:Landroid/content/res/ColorStateList;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleMarginEndInRight:I

.field private mTitleTextColor:Landroid/content/res/ColorStateList;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    iput-boolean v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSetDefaultColor:Z

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->coui_preference_divider_default_horizontal_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mDividerDefaultHorizontalPadding:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->support_preference_assignment_margin_start_has_endreddot_in_rightassignment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentMarginStartInRightHasReddot:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->assignment_in_right_min_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentInRightMinWidth:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->support_preference_red_dot_margin_end_assignment_is_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRedDotMarginEndAssignmentIsRight:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->preference_img_margin_top_multiline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreferenceImgMarginTopMultiline:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->coui_preference_icon_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreferenceImgMarginTopSingleline:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->support_preference_reddot_margin_end_in_right_noassignment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mReddotMarginEndInRightNoAssignment:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->support_preference_reddot_margin_end_in_right_hasassignment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mReddotMarginEndInRightHasAssignment:I

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/list/R$dimen;->support_preference_title_margin_end_in_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleMarginEndInRight:I

    sget-object v2, Lcom/support/list/R$styleable;->COUIPreference:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiShowDivider:I

    iget-boolean p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiEnalbeClickSpan:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_coui_jump_mark:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_coui_jump_status1:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiClickStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiAssignment:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiAssignmentColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiIconStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_hasBorder:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_preference_icon_radius:I

    const/16 p3, 0xe

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_iconRedDotMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_endRedDotMode:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_endRedDotNum:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_isBackgroundAnimationEnabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_isSupportCardUse:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiSetDefaultColor:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSetDefaultColor:Z

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mCouiSetDefaultColor:Z

    if-eqz p2, :cond_136

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_titleTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiSummaryColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    :cond_136
    sget p2, Lcom/support/list/R$styleable;->COUIPreference_couiIsCustomIcon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initPreciseHelper()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->removePreciseClickListener()V

    new-instance v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    new-instance v2, Lcom/coui/appcompat/preference/COUIPreference$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUIPreference$1;-><init>(Lcom/coui/appcompat/preference/COUIPreference;)V

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/PreciseClickHelper;-><init>(Landroid/view/View;Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    iget-object p0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->d:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public changeEndRedDotNumberWithAnim(I)V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_12

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->b(I)V

    if-lez p1, :cond_12

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    :cond_12
    return-void
.end method

.method public dismissEndRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_15
    return-void
.end method

.method public dismissIconRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_17
    return-void
.end method

.method public drawDivider()Z
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

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

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

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

.method public getClickStyle()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    return p0
.end method

.method public getDividerEndAlignView()Landroid/view/View;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDividerEndInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getDividerStartAlignView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getDividerStartInset()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mDividerDefaultHorizontalPadding:I

    return p0
.end method

.method public getEndRedDotMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    return p0
.end method

.method public getEndRedDotNum()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    return p0
.end method

.method public getIconRedDotMode()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    return p0
.end method

.method public getIconStyle()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    return p0
.end method

.method public getIsSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    return p0
.end method

.method public getStatusText1()Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isShowDivider()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    return p0
.end method

.method public isSupportCardUse()Z
    .registers 1

    iget-boolean p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 13

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->a(Landroidx/preference/Preference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/cardlist/COUICardListHelper;->c(Landroid/view/View;I)V

    sget v0, Lcom/support/list/R$id;->coui_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    if-eq v3, v2, :cond_22

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    goto :goto_25

    :cond_1e
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    goto :goto_25

    :cond_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_25
    :goto_25
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreference;->initPreciseHelper()V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_48

    instance-of v3, v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    if-eqz v3, :cond_3b

    check-cast v0, Lcom/coui/appcompat/preference/ListSelectedItemLayout;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setBackgroundAnimationEnabled(Z)V

    :cond_3b
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mItemView:Landroid/view/View;

    instance-of v3, v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    if-eqz v3, :cond_48

    check-cast v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    iget-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setIsSelected(Z)V

    :cond_48
    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p1, v0, v3, v4, v1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->a(Landroidx/preference/PreferenceViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    goto :goto_65

    :cond_58
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->getAssignment()Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    invoke-static {p1, v0, v3, v4, v5}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->a(Landroidx/preference/PreferenceViewHolder;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    :goto_65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_7a

    if-eqz v0, :cond_7a

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_7a
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    iget-boolean v8, p0, Lcom/coui/appcompat/preference/COUIPreference;->mHasBorder:Z

    iget v9, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    iget-boolean v10, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->b(Landroidx/preference/PreferenceViewHolder;Landroid/content/Context;IZIZ)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_9c

    if-eqz v0, :cond_9c

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9c
    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    if-eqz v0, :cond_a7

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceUtils;->c(Landroid/content/Context;Landroidx/preference/PreferenceViewHolder;)V

    :cond_a7
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryView:Landroid/widget/TextView;

    sget v0, Lcom/support/list/R$id;->img_red_dot:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    sget v0, Lcom/support/list/R$id;->jump_icon_red_dot:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/16 v3, 0x8

    if-eqz v0, :cond_ef

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    if-eqz v0, :cond_ec

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-boolean v2, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_ef

    :cond_ec
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_ef
    :goto_ef
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    instance-of v0, p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v0, :cond_115

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    if-eqz v0, :cond_112

    iput-boolean v2, p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;->a:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_115

    :cond_112
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_115
    :goto_115
    return-void
.end method

.method public onDetached()V
    .registers 1

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreference;->removePreciseClickListener()V

    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method

.method public removePreciseClickListener()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    if-eqz v0, :cond_11

    iget-object v1, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PreciseClickHelper;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseHelper:Lcom/coui/appcompat/poplist/PreciseClickHelper;

    :cond_11
    return-void
.end method

.method public setAssignment(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignment:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_d
    return-void
.end method

.method public setAssignmentColor(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mAssignmentColor:I

    return-void
.end method

.method public setBackgroundAnimationEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsBackgroundAnimationEnabled:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setBorderRectRadius(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mRadius:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setClickStyle(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mClickStyle:I

    return-void
.end method

.method public setEndRedDotMode(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotMode:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setEndRedDotNum(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mEndRedDotNum:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIconRedDotMode(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconRedDotMode:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setIconStyle(I)V
    .registers 3

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    :cond_5
    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIconStyle:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_a
    return-void
.end method

.method public setIsCustomIconRadius(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsCustom:Z

    return-void
.end method

.method public setIsEnableClickSpan(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsEnableClickSpan:Z

    return-void
.end method

.method public setIsSupportCardUse(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSupportCardUse:Z

    return-void
.end method

.method public setJump(I)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->setJump(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setJump(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mJumpRes:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setOnPreciseClickListener(Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mPreciseListener:Lcom/coui/appcompat/poplist/PreciseClickHelper$OnPreciseClickListener;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreference;->initPreciseHelper()V

    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setSelectedState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mIsSelected:Z

    return-void
.end method

.method public setShowDivider(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mShowDivider:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_9
    return-void
.end method

.method public setStatusText1(Ljava/lang/CharSequence;)V
    .registers 3

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    if-nez v0, :cond_10

    :cond_6
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_10
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mStatusText1:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_15
    return-void
.end method

.method public setSummaryTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mSummaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitleColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreference;->mTitleTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public showEndRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->endRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_d
    return-void
.end method

.method public showIconRedDot()V
    .registers 3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreference;->iconRedDot:Landroid/view/View;

    instance-of v1, v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->c(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_f
    return-void
.end method
