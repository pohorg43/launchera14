.class public Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->a:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->d:Z

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->j:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_6e

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout:[I

    invoke-virtual {p3, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout_gridNumber:I

    sget v1, Lcom/support/appcompat/R$integer;->grid_guide_column_preference:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->c:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->b:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout_paddingType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->g:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout_paddingSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->h:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout_percentIndentEnabled:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->d:Z

    sget p1, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout_percentMode:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->a:I

    sget p1, Lcom/support/appcompat/R$styleable;->COUIPercentWidthLinearLayout_isParentChildHierarchy:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->i:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->e:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->f:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6e
    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    sget-boolean v1, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a:Z

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_18

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->b(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->j:I

    goto :goto_1b

    :cond_18
    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->j:I

    :cond_1b
    :goto_1b
    return-void
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    instance-of p0, p1, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    return p0
.end method

.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    new-instance p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    new-instance v0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 2

    new-instance p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_20

    iget p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->c:I

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->b:I

    invoke-virtual {p0}, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->a()V

    :cond_20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 22

    move-object/from16 v11, p0

    iget-boolean v0, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->d:Z

    if-eqz v0, :cond_4d

    iget v2, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->b:I

    iget v3, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->g:I

    iget v4, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->h:I

    iget v5, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->a:I

    iget v6, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->e:I

    iget v7, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->f:I

    iget v8, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->j:I

    iget-boolean v9, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->i:Z

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v10}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->h(Landroid/view/View;IIIIIIIIZZ)I

    move-result v0

    const/4 v1, 0x0

    :goto_20
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4f

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    iget v15, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->g:I

    iget v3, v11, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->h:I

    iget v4, v2, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;->a:I

    iget v2, v2, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout$LayoutParams;->b:I

    move v14, v0

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v2

    invoke-static/range {v12 .. v18}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->g(Landroid/content/Context;Landroid/view/View;IIIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_4d
    move/from16 v0, p1

    :cond_4f
    move/from16 v1, p2

    invoke-super {v11, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setIsParentChildHierarchy(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->i:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setPercentIndentEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/grid/COUIPercentWidthLinearLayout;->d:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
