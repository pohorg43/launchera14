.class public Lcom/android/quickstep/views/OplusTaskMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusTaskMenuAdapter"

.field private static final TEXT_SIZE_DP:F = 16.0f


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mAdapterFontSize:Z

.field private mContext:Landroid/content/Context;

.field private mIsFixedFontSize:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTextColor:Landroid/content/res/ColorStateList;

.field private mMaxLine:I

.field private mMinWidthWithCheckbox:I

.field private mPopupListItemMinHeight:I

.field private mPopupListItemPaddingVertical:I

.field private mPopupListPaddingVertical:I

.field private mSelectedTextColor:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextScale:F

.field private mTextSize:F

.field private mTitleMarginStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mAdapterFontSize:Z

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mMaxLine:I

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mIsFixedFontSize:Z

    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070578

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListPaddingVertical:I

    const v0, 0x7f070586

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListItemPaddingVertical:I

    const v0, 0x7f070585

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListItemMinHeight:I

    const v0, 0x7f07057e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mMinWidthWithCheckbox:I

    const v0, 0x7f070587

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTitleMarginStart:I

    const v0, 0x7f07058a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTextSize:F

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTextScale:F

    new-instance p2, Lcom/android/quickstep/views/OplusTaskMenuAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/views/OplusTaskMenuAdapter$1;-><init>(Lcom/android/quickstep/views/OplusTaskMenuAdapter;)V

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_86

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f060387

    invoke-static {p2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06037e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mSelectedTextColor:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    nop

    :array_86
    .array-data 4
        0x7f0402d7
        0x7f04021f
    .end array-data
.end method

.method public static synthetic access$000(Lcom/android/quickstep/views/OplusTaskMenuAdapter;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private setHoverListenerForTablet(Landroid/view/View;)V
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_22

    if-nez p1, :cond_11

    return-void

    :cond_11
    const v0, 0x7f0a05bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_22

    new-instance v0, Lcom/android/quickstep/views/OplusTaskMenuAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/OplusTaskMenuAdapter$2;-><init>(Lcom/android/quickstep/views/OplusTaskMenuAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_22
    return-void
.end method

.method private setIcon(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;Z)V
    .registers 6

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p3, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    if-nez v0, :cond_14

    iget-object v0, p3, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_14

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_30

    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTitleMarginStart:I

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v0, p3, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2d

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p3, p3, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_30
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTitle(Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;Z)V
    .registers 4

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    const p3, 0x7f1306d9

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p3, p2, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p3, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemTextColor:Landroid/content/res/ColorStateList;

    if-eqz p3, :cond_1b

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2a

    :cond_1b
    iget-object p3, p2, Lcom/coui/appcompat/poplist/PopupListItem;->i:Landroid/content/res/ColorStateList;

    if-eqz p3, :cond_23

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2a

    :cond_23
    iget p2, p2, Lcom/coui/appcompat/poplist/PopupListItem;->j:I

    if-ltz p2, :cond_2a

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2a
    :goto_2a
    iget-boolean p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mIsFixedFontSize:Z

    if-eqz p2, :cond_35

    const/4 p0, 0x1

    const/high16 p2, 0x41800000  # 16.0f

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_42

    :cond_35
    iget p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTextSize:F

    iget p0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mTextScale:F

    const/4 p3, 0x5

    invoke-static {p2, p0, p3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_42
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean p2, p2, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_23

    iget-object p0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d01d2

    invoke-virtual {p0, p1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;

    invoke-direct {p1}, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0

    :cond_23
    new-instance v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;-><init>()V

    iget-object v2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d01d3

    invoke-virtual {v2, v3, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a048f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0490

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mMaxLine:I

    if-lez v2, :cond_52

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_52
    const v0, 0x7f0a01bc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;->mContent:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mAdapterFontSize:Z

    const/4 v2, 0x4

    if-eqz v0, :cond_67

    iget-object v0, v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    :cond_67
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->getCount()I

    move-result v0

    const v3, 0x7f0a023e

    const/4 v4, 0x1

    if-ne v0, v4, :cond_94

    iget v0, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListItemMinHeight:I

    iget v5, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListPaddingVertical:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    invoke-virtual {p3, v5}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p3}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget v5, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListItemPaddingVertical:I

    iget v6, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v5, v6

    invoke-virtual {p3}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    iget v7, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListItemPaddingVertical:I

    iget v8, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mPopupListPaddingVertical:I

    add-int/2addr v7, v8

    invoke-virtual {p3, v0, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_ae

    :cond_94
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->getCount()I

    move-result v5

    sub-int/2addr v5, v4

    if-ne p1, v5, :cond_ae

    if-eqz v0, :cond_a7

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_ae

    :cond_a7
    const-string v0, "divider is null, position = "

    const-string v5, "OplusTaskMenuAdapter"

    invoke-static {v0, p1, v5}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_ae
    :goto_ae
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v5, v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-direct {p0, v0, v5, v6, p2}, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->setIcon(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;Z)V

    iget-object v0, v1, Lcom/android/quickstep/views/OplusTaskMenuAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->setTitle(Landroid/widget/TextView;Lcom/coui/appcompat/poplist/PopupListItem;Z)V

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    if-ge p1, p2, :cond_ea

    iget-object p2, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemList:Ljava/util/List;

    add-int/2addr p1, v4

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean p1, p1, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    if-eqz p1, :cond_ea

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_ea
    invoke-direct {p0, p3}, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->setHoverListenerForTablet(Landroid/view/View;)V

    return-object p3
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/quickstep/views/OplusTaskMenuAdapter;->mItemTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method
