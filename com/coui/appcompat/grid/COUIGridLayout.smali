.class public Lcom/coui/appcompat/grid/COUIGridLayout;
.super Landroid/widget/GridLayout;
.source ""


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:[I

.field public m:[I

.field public n:[I

.field public o:[I

.field public p:[I

.field public q:[I

.field public r:[F

.field public s:I

.field public t:Z

.field public u:Lcom/coui/component/responsiveui/ResponsiveUIModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/COUIGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_18

    new-instance p3, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1, v0, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->u:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    :cond_18
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_7c

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIGridLayout:[I

    invoke-virtual {p3, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_couiHorizontalGap:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_minHorizontalGap:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->b:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_couiVerticalGap:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->c:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_childMinWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->d:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_childMinHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->e:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_childHeight:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_childWidth:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_childGridNumber:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->i:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIGridLayout_gridMarginType:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->j:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUIGridLayout_specificType:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->k:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_7c
    return-void
.end method

.method private getVisibleChildCount()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_19

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_16

    add-int/lit8 v1, v1, 0x1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_19
    return v1
.end method

.method private getWidthWithoutPadding()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingEnd()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final a()I
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->q:[I

    move v0, v1

    :goto_f
    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    if-gt v1, v2, :cond_4a

    move v2, v1

    :goto_14
    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->o:[I

    array-length v4, v3

    if-ge v2, v4, :cond_42

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    if-ge v1, v4, :cond_29

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->q:[I

    aget v6, v5, v1

    aget v7, v3, v2

    if-ge v6, v7, :cond_29

    aget v3, v3, v2

    aput v3, v5, v1

    :cond_29
    if-lez v1, :cond_40

    if-lez v2, :cond_40

    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->p:[I

    array-length v5, v3

    if-gt v2, v5, :cond_40

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->q:[I

    aget v6, v5, v1

    add-int/lit8 v7, v2, -0x1

    aget v8, v3, v7

    if-ge v6, v8, :cond_40

    aget v3, v3, v7

    aput v3, v5, v1

    :cond_40
    add-int/2addr v2, v4

    goto :goto_14

    :cond_42
    iget-object v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->q:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_4a
    return v0
.end method

.method public final b()I
    .registers 10

    iget-boolean v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    move v2, v0

    :goto_8
    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    if-gt v0, v3, :cond_34

    move v3, v0

    move v4, v1

    :goto_e
    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->o:[I

    array-length v6, v5

    if-ge v3, v6, :cond_30

    iget v6, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    if-ge v0, v6, :cond_1d

    aget v7, v5, v3

    if-ge v4, v7, :cond_1d

    aget v4, v5, v3

    :cond_1d
    if-lez v0, :cond_2e

    if-lez v3, :cond_2e

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->p:[I

    array-length v7, v5

    if-gt v3, v7, :cond_2e

    add-int/lit8 v7, v3, -0x1

    aget v8, v5, v7

    if-ge v4, v8, :cond_2e

    aget v4, v5, v7

    :cond_2e
    add-int/2addr v3, v6

    goto :goto_e

    :cond_30
    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_34
    return v2
.end method

.method public onLayout(ZIIII)V
    .registers 15

    invoke-super/range {p0 .. p5}, Landroid/widget/GridLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingStart()I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->s:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    :goto_11
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-ge p4, v0, :cond_a0

    invoke-virtual {p0, p4}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->k:I

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->r:[F

    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    rem-int v2, p4, v2

    aget v1, v1, v2

    goto :goto_2a

    :cond_28
    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    :goto_2a
    iget-boolean v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    if-eqz v2, :cond_30

    move v2, p3

    goto :goto_3c

    :cond_30
    iget-object v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->q:[I

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    rem-int v3, p5, v3

    aget v2, v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_3c
    iget-boolean v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    if-eqz v3, :cond_42

    move v3, p3

    goto :goto_4e

    :cond_42
    iget-object v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->n:[I

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    div-int v4, p5, v4

    aget v3, v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_4e
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_9c

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5e

    goto :goto_5f

    :cond_5e
    move v5, p3

    :goto_5f
    if-eqz v5, :cond_6b

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    sub-int/2addr v4, v2

    int-to-float v5, v4

    sub-float/2addr v5, v1

    float-to-int v5, v5

    goto :goto_70

    :cond_6b
    add-int v5, p1, v2

    int-to-float v4, v5

    add-float/2addr v4, v1

    float-to-int v4, v4

    :goto_70
    add-int v6, p2, v3

    int-to-float v7, v6

    iget v8, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p5, p5, 0x1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    rem-int v0, p5, v0

    if-nez v0, :cond_94

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getPaddingStart()I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->s:I

    add-int/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    add-float/2addr p2, v0

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->c:F

    add-float/2addr p2, v0

    int-to-float v0, v3

    add-float/2addr p2, v0

    float-to-int p2, p2

    goto :goto_9c

    :cond_94
    int-to-float p1, p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    add-float/2addr p1, v0

    add-float/2addr p1, v1

    int-to-float v0, v2

    add-float/2addr p1, v0

    float-to-int p1, p1

    :cond_9c
    :goto_9c
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_11

    :cond_a0
    return-void
.end method

.method public onMeasure(II)V
    .registers 15

    invoke-super {p0, p1, p2}, Landroid/widget/GridLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->l:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->m:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->o:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->p:[I

    iget-boolean v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    goto :goto_54

    :cond_1d
    move v1, v2

    move v3, v1

    :goto_1f
    if-ge v1, v0, :cond_54

    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-eq v4, v6, :cond_51

    iget-object v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->l:[I

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    aput v6, v4, v3

    iget-object v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->m:[I

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    aput v6, v4, v3

    iget-object v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->o:[I

    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v6

    aput v6, v4, v3

    iget-object v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->p:[I

    invoke-virtual {v5}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_54
    :goto_54
    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->k:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_103

    if-eq v0, v3, :cond_a8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_61

    goto/16 :goto_16e

    :cond_61
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->b:F

    add-float/2addr v0, v4

    iget v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    add-float/2addr v4, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->b:F

    add-float/2addr v0, v4

    iget v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    add-float/2addr v4, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->a()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    iget v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    int-to-float v6, v5

    mul-float/2addr v4, v6

    sub-float/2addr v0, v4

    sub-int/2addr v5, v3

    int-to-float v3, v5

    div-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    goto/16 :goto_16e

    :cond_a8
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    add-float/2addr v0, v4

    iget v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->d:F

    add-float/2addr v4, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->b()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v0, v4

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    add-float/2addr v0, v4

    iget v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->d:F

    add-float/2addr v4, v5

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->a()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getWidthWithoutPadding()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v0, v3

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    add-int/lit8 v5, v4, -0x1

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    int-to-float v3, v4

    div-float/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    cmpl-float v4, v3, v1

    if-nez v4, :cond_100

    iget v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->e:F

    cmpl-float v4, v3, v1

    if-nez v4, :cond_fc

    move v3, v1

    goto :goto_100

    :cond_fc
    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->d:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v0

    :cond_100
    :goto_100
    iput v3, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    goto :goto_16e

    :cond_103
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_16e

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->j:I

    if-ne v0, v3, :cond_110

    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    goto :goto_112

    :cond_110
    sget-object v0, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_LARGE:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    :goto_112
    iget-object v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->u:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->u:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->s:I

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->u:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->u:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->columnCount()I

    move-result v0

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->i:I

    div-int/2addr v0, v4

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->u:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    iget v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->i:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->r:[F

    move v0, v2

    :goto_150
    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    if-ge v0, v4, :cond_169

    iget-object v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->r:[F

    iget-object v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->u:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget v6, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->i:I

    mul-int v7, v0, v6

    add-int/lit8 v8, v0, 0x1

    mul-int/2addr v6, v8

    sub-int/2addr v6, v3

    invoke-virtual {v5, v7, v6}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->width(II)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v0

    move v0, v8

    goto :goto_150

    :cond_169
    add-int/2addr v4, v3

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->q:[I

    :cond_16e
    :goto_16e
    move v0, v2

    :goto_16f
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_19a

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_186

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    :cond_186
    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    float-to-int v4, v4

    invoke-static {p1, v2, v4}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    float-to-int v5, v5

    invoke-static {p2, v2, v5}, Landroid/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Landroid/widget/GridLayout;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16f

    :cond_19a
    invoke-direct {p0}, Lcom/coui/appcompat/grid/COUIGridLayout;->getVisibleChildCount()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, p1, v2}, Landroid/widget/GridLayout;->resolveSizeAndState(III)I

    move-result p1

    double-to-int v3, v0

    iget-boolean v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    if-eqz v4, :cond_1b7

    move v5, v2

    goto :goto_1fe

    :cond_1b7
    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->n:[I

    move v4, v2

    move v5, v4

    :goto_1bf
    if-gt v4, v3, :cond_1fe

    iget v6, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    mul-int/2addr v6, v4

    :goto_1c4
    add-int/lit8 v7, v4, 0x1

    iget v8, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->h:I

    mul-int v9, v7, v8

    if-ge v6, v9, :cond_1f7

    iget-object v7, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->l:[I

    array-length v9, v7

    if-ge v6, v9, :cond_1dd

    iget-object v9, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->n:[I

    aget v10, v9, v4

    aget v11, v7, v6

    if-ge v10, v11, :cond_1dd

    aget v7, v7, v6

    aput v7, v9, v4

    :cond_1dd
    if-lez v4, :cond_1f4

    if-lez v6, :cond_1f4

    sub-int v7, v6, v8

    iget-object v8, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->m:[I

    array-length v9, v8

    if-ge v7, v9, :cond_1f4

    iget-object v9, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->n:[I

    aget v10, v9, v4

    aget v11, v8, v7

    if-ge v10, v11, :cond_1f4

    aget v7, v8, v7

    aput v7, v9, v4

    :cond_1f4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c4

    :cond_1f7
    iget-object v6, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->n:[I

    aget v4, v6, v4

    add-int/2addr v5, v4

    move v4, v7

    goto :goto_1bf

    :cond_1fe
    :goto_1fe
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, -0x80000000

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    if-eq v3, v4, :cond_223

    if-eqz v3, :cond_215

    const/high16 v0, 0x40000000  # 2.0f

    if-eq v3, v0, :cond_213

    goto :goto_234

    :cond_213
    move v2, p2

    goto :goto_234

    :cond_215
    iget p2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    float-to-double v2, p2

    mul-double/2addr v2, v0

    sub-double/2addr v0, v6

    iget p2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->c:F

    float-to-double v6, p2

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    int-to-double v2, v5

    add-double/2addr v0, v2

    double-to-int v2, v0

    goto :goto_234

    :cond_223
    iget v2, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    float-to-double v2, v2

    mul-double/2addr v2, v0

    sub-double/2addr v0, v6

    iget v4, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->c:F

    float-to-double v6, v4

    mul-double/2addr v0, v6

    add-double/2addr v0, v2

    int-to-double v2, v5

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_234
    invoke-virtual {p0, p1, v2}, Landroid/widget/GridLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setChildGridNumber(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->i:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setChildHeight(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->f:F

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setChildMinHeight(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->e:F

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setChildMinWidth(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->d:F

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setChildWidth(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->g:F

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setGridMarginType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->j:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->a:F

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setIsIgnoreChildMargin(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->t:Z

    return-void
.end method

.method public setMinHorizontalGap(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->b:F

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->k:I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIGridLayout;->c:F

    invoke-virtual {p0}, Landroid/widget/GridLayout;->requestLayout()V

    return-void
.end method
