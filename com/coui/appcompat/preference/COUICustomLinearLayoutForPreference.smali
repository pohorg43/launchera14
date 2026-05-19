.class public Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;
.super Landroid/widget/LinearLayout;
.source ""


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/list/R$dimen;->assignment_in_right_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/list/R$dimen;->support_preference_text_content_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/list/R$dimen;->support_preference_text_content_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/list/R$dimen;->support_preference_reddot_margin_end_in_right_noassignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->g:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/list/R$dimen;->support_preference_reddot_margin_end_in_right_hasassignment:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->h:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/list/R$dimen;->support_preference_title_margin_end_in_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->i:I

    sget-object v1, Lcom/support/list/R$styleable;->COUICustomLinearLayoutForPreference:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/support/list/R$styleable;->COUICustomLinearLayoutForPreference_couiMessageLayoutMarginEnd:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->j:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final b(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public final c(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public final d(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public final e(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public final f(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public final g(Landroid/view/View;I)V
    .registers 4

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    sub-int/2addr p4, p3

    iget-object p5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result p5

    sub-int p5, p4, p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p5, p3

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, p4, v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    if-nez v1, :cond_56

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result p3

    sub-int p3, p2, p3

    goto :goto_67

    :cond_56
    iget-object p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result p3

    add-int/2addr p3, p1

    move v5, p2

    move p2, p1

    move p1, v5

    :goto_67
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, p5

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, p1

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result p1

    add-int/2addr p1, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p1, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, p5

    iget-object p5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result p5

    add-int/2addr p5, v4

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a(Landroid/view/View;)I

    move-result v4

    sub-int/2addr p5, v4

    invoke-virtual {v1, v2, v3, p1, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b(Landroid/view/View;)I

    move-result p5

    add-int/2addr p5, p2

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, p2

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result p2

    add-int/2addr p2, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1, p5, v1, p2, v0}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b(Landroid/view/View;)I

    move-result p2

    add-int/2addr p2, p3

    iget-object p5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c(Landroid/view/View;)I

    move-result p5

    add-int/2addr p5, p4

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p3

    iget-object p3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result p3

    add-int/2addr p3, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, p4

    iget-object p4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, p4}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result p4

    add-int/2addr p4, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a(Landroid/view/View;)I

    move-result p0

    sub-int/2addr p4, p0

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 16

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    if-eqz v3, :cond_58

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_58

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    if-eqz v4, :cond_46

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_46

    :cond_35
    invoke-virtual {v3}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->h:I

    if-eq v4, v5, :cond_58

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_56

    :cond_46
    :goto_46
    invoke-virtual {v3}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->g:I

    if-eq v4, v5, :cond_58

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_56
    move v3, v1

    goto :goto_59

    :cond_58
    move v3, v0

    :goto_59
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    if-eqz v4, :cond_aa

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_aa

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    if-eqz v4, :cond_6d

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_78

    :cond_6d
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    if-eqz v4, :cond_91

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_78

    goto :goto_91

    :cond_78
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->i:I

    if-eq v5, v6, :cond_aa

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ab

    :cond_91
    :goto_91
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->j:I

    if-eq v5, v6, :cond_aa

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ab

    :cond_aa
    move v1, v3

    :goto_ab
    if-eqz v1, :cond_b0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_b0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/high16 v10, 0x40000000  # 2.0f

    const/16 v11, 0x8

    if-eq v4, v11, :cond_fe

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, v1

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v12, v4

    goto :goto_10c

    :cond_fe
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    move v12, v0

    :goto_10c
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_129

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, v1

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_136

    :cond_129
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    :goto_136
    iget-object v4, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v11, :cond_153

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v6, v1

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_160

    :cond_153
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, v1, v3, v0}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    :goto_160
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v5

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v5

    add-int/2addr v5, v6

    sub-int v6, v1, v0

    if-le v5, v6, :cond_266

    sub-int/2addr v4, v3

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result v3

    sub-int v3, v4, v3

    div-int/2addr v3, v2

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v3

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d:I

    if-ge v3, v5, :cond_1ae

    goto :goto_1af

    :cond_1ae
    move v3, v5

    :goto_1af
    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v5

    iget-object v7, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v3

    sub-int/2addr v6, v7

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v5

    sub-int v5, v1, v5

    add-int/2addr v0, v3

    iget-object v6, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v5, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result v5

    sub-int v5, v4, v5

    div-int/2addr v5, v2

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->e(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v4, v0

    div-int/2addr v4, v2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->f(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_215

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->g(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_215
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_231

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->g(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_231
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v11, :cond_24d

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->d(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->g(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUICustomLinearLayoutForPreference;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_24d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_266
    return-void
.end method
