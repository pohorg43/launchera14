.class public Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;
.super Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
.source ""


# instance fields
.field public x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->x:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v1, Lcom/support/list/R$styleable;->COUICustomListSelectedLinearLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->COUICustomListSelectedLinearLayout_couiPreferenceWithDividerItem:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->x:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 15

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    sget v0, Lcom/support/list/R$id;->img_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1ec

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1ec

    const v2, 0x1020006

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    if-nez v2, :cond_1f

    goto/16 :goto_1ec

    :cond_1f
    sget v3, Lcom/support/list/R$id;->messageLayout:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2a

    move v3, v4

    goto :goto_2b

    :cond_2a
    move v3, v1

    :goto_2b
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x1020010

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v5, :cond_6e

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6e

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    goto :goto_6f

    :cond_6e
    move v5, v1

    :goto_6f
    if-eqz v6, :cond_a5

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_a5

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    move v11, v6

    move v6, v5

    move v5, v11

    goto :goto_a6

    :cond_a5
    move v6, v1

    :goto_a6
    sget v7, Lcom/support/list/R$id;->assignment:I

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v3, :cond_bd

    if-eqz v7, :cond_bd

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_bd

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    goto :goto_be

    :cond_bd
    move v3, v1

    :goto_be
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_c9

    goto :goto_d1

    :cond_c9
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    :goto_d1
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x2

    const/16 v6, 0x32

    const/16 v7, 0x24

    const/16 v8, 0x20

    const/16 v9, 0x18

    if-le v5, v3, :cond_152

    const/16 v3, 0x30

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/list/R$dimen;->coui_preference_icon_margin_top:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eq v1, v9, :cond_13c

    if-eq v1, v8, :cond_12d

    if-eq v1, v7, :cond_11e

    if-eq v1, v6, :cond_10f

    goto :goto_14a

    :cond_10f
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_50icon_margin_top_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_14a

    :cond_11e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_36icon_margin_top_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_14a

    :cond_12d
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_32icon_margin_top_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_14a

    :cond_13c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_24icon_margin_top_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_14a
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-eq v1, v3, :cond_1e8

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1e8

    :cond_152
    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v10, Lcom/support/list/R$dimen;->coui_preference_icon_margin_top:I

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eq v1, v9, :cond_1bd

    if-eq v1, v8, :cond_19d

    if-eq v1, v7, :cond_17d

    if-eq v1, v6, :cond_16e

    goto/16 :goto_1dc

    :cond_16e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_50icon_margin_vertical_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1dc

    :cond_17d
    if-gt v5, v4, :cond_18e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_36icon_margin_vertical_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1dc

    :cond_18e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_36icon_margin_top_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1dc

    :cond_19d
    if-gt v5, v4, :cond_1ae

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_32icon_margin_vertical_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1dc

    :cond_1ae
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_32icon_margin_top_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1dc

    :cond_1bd
    if-gt v5, v4, :cond_1ce

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_24icon_margin_vertical_default:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1dc

    :cond_1ce
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/list/R$dimen;->coui_preference_24icon_margin_top_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_1dc
    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    if-ne v1, v3, :cond_1e4

    iget v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v3, :cond_1e8

    :cond_1e4
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_1e8
    :goto_1e8
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v1, v4

    :cond_1ec
    :goto_1ec
    if-eqz v1, :cond_1f1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_1f1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/coui/appcompat/preference/COUICustomListSelectedLinearLayout;->x:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
