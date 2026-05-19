.class public Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public a:I

.field public b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

.field public c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

.field public d:I

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    const/4 p2, 0x0

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->d:I

    const/4 p3, 0x3

    new-array v0, p3, [I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bars/R$dimen;->coui_tab_search_bar_padding_start_compat:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    aput v1, v0, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bars/R$dimen;->coui_tab_search_bar_padding_start_medium:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/bars/R$dimen;->coui_tab_search_bar_padding_start_expanded:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->e:[I

    new-array p3, p3, [I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tab_search_bar_padding_end_compat:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    aput v0, p3, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tab_search_bar_padding_end_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    aput v0, p3, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tab_search_bar_padding_end_expanded:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    aput v0, p3, v3

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->f:[I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_8b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/bars/R$dimen;->coui_tab_search_horizontal_padding:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    :cond_8b
    new-instance p3, Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-direct {p3, p1, p2, p2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;-><init>(Landroid/content/Context;II)V

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    sget-object p1, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 13

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    move v0, p2

    move-object p4, p3

    move-object p5, p4

    :goto_c
    const/4 v1, 0x2

    if-ge v0, p1, :cond_2a

    if-lt v0, v1, :cond_12

    goto :goto_2a

    :cond_12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v2, :cond_1c

    move-object p3, v1

    goto :goto_27

    :cond_1c
    instance-of v2, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v2, :cond_22

    move-object p4, v1

    goto :goto_27

    :cond_22
    instance-of v2, v1, Lcom/coui/appcompat/searchview/COUISearchBar;

    if-eqz v2, :cond_27

    move-object p5, v1

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2a
    :goto_2a
    const/16 p1, 0x8

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-nez p5, :cond_1c4

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p5

    if-ne p5, v2, :cond_37

    goto :goto_38

    :cond_37
    move v2, p2

    :goto_38
    iget-object p5, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object v3, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p5, v3, :cond_75

    if-eqz p3, :cond_64

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p2

    if-eqz v2, :cond_4f

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p3, p2, p2, p0, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_65

    :cond_4f
    iget-object p5, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p5}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p5

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, p0

    invoke-virtual {p3, p5, p2, v0, p1}, Landroid/view/View;->layout(IIII)V

    goto :goto_65

    :cond_64
    move p1, p2

    :goto_65
    if-eqz p4, :cond_337

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p0

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p4, p2, p1, p0, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_337

    :cond_75
    if-eqz v2, :cond_12a

    if-eqz p4, :cond_d6

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p5, v2, :cond_a7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v5, v4

    invoke-virtual {p4, p5, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_d6

    :cond_a7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p5, v2

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    sub-int/2addr p5, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v5, v4

    invoke-virtual {p4, p5, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    :cond_d6
    :goto_d6
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object p5, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p4, p5, :cond_f8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p1, v0, p2, p2, p4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p1

    goto :goto_113

    :cond_f8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p4, p1, p2, p2, p5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p1

    :goto_113
    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p1

    if-eqz p3, :cond_337

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p0, p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p3, p1, p2, p0, p4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_337

    :cond_12a
    if-eqz p4, :cond_176

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p5, v2, :cond_151

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr p5, v2

    div-int/2addr p5, v1

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {p4, p2, p5, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_176

    :cond_151
    iget p5, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    add-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v5, v4

    invoke-virtual {p4, p5, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    :cond_176
    :goto_176
    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object p5, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p4, p5, :cond_198

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p1, v0, p2, p2, p4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    goto :goto_1b3

    :cond_198
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p4, p1, p2, p2, p5}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p4}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p4

    add-int/2addr p4, p1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    :goto_1b3
    add-int/2addr p0, p4

    if-eqz p3, :cond_337

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p3, p0, p2, p1, p4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_337

    :cond_1c4
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    if-ne p3, v2, :cond_1cb

    goto :goto_1cc

    :cond_1cb
    move v2, p2

    :goto_1cc
    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object v3, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p3, v3, :cond_1ee

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p5, p2, p2, p1, p0}, Landroid/view/View;->layout(IIII)V

    if-eqz p4, :cond_337

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p0

    invoke-virtual {p4, p2, p0, p1, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_337

    :cond_1ee
    if-eqz v2, :cond_2a1

    if-eqz p4, :cond_24f

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p3, v2, :cond_220

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v5, v4

    invoke-virtual {p4, p3, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_24f

    :cond_220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr p3, v2

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    sub-int/2addr p3, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    sub-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v5, v4

    invoke-virtual {p4, p3, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    :cond_24f
    :goto_24f
    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object p4, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p3, p4, :cond_271

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1, v0, p2, p2, p3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p1

    goto :goto_28c

    :cond_271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p3, p1, p2, p2, p4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p1

    :goto_28c
    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p1

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int p1, p0, p1

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p5, p1, p2, p0, p3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_337

    :cond_2a1
    if-eqz p4, :cond_2ed

    sget-object v2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p3, v2, :cond_2c8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr p3, v2

    div-int/2addr p3, v1

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-virtual {p4, p2, p3, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_2ed

    :cond_2c8
    iget p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    add-int/2addr v3, v4

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v5, v4

    invoke-virtual {p4, p3, v2, v3, v5}, Landroid/view/View;->layout(IIII)V

    :cond_2ed
    :goto_2ed
    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object p4, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p3, p4, :cond_30f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1, v0, p2, p2, p3}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    goto :goto_32a

    :cond_30f
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p3, p1, p2, p2, p4}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result p1

    float-to-int p1, p1

    iget-object p3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result p3

    add-int/2addr p3, p1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {p0}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->gutter()I

    move-result p0

    :goto_32a
    add-int/2addr p0, p3

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result p3

    invoke-virtual {p5, p0, p2, p1, p3}, Landroid/view/View;->layout(IIII)V

    :cond_337
    :goto_337
    return-void
.end method

.method public onMeasure(II)V
    .registers 15

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->rebuild(II)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v1

    sget-object v3, Lcom/coui/component/responsiveui/layoutgrid/MarginType;->MARGIN_SMALL:Lcom/coui/component/responsiveui/layoutgrid/MarginType;

    invoke-virtual {v1, v3}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->chooseMargin(Lcom/coui/component/responsiveui/layoutgrid/MarginType;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->windowSizeClass()Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->e(Landroid/content/Context;I)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2e

    iput v2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->d:I

    goto :goto_47

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->d(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    iput v4, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->d:I

    goto :goto_47

    :cond_3b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->c(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_47

    iput v3, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->d:I

    :cond_47
    :goto_47
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v1, v2

    move v5, v1

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_50
    if-ge v1, v0, :cond_175

    if-lt v1, v3, :cond_56

    goto/16 :goto_175

    :cond_56
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v11, 0x4

    if-eqz v10, :cond_b6

    iget-object v7, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object v10, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v7, v10, :cond_7b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v7, v11, v2, v2, v10}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result v7

    float-to-int v7, v7

    iget-object v10, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v10}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v10

    add-int/2addr v10, v7

    goto :goto_92

    :cond_7b
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v7, v11, v2, v2, v10}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result v7

    float-to-int v10, v7

    iget-object v7, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object v11, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v7, v11, :cond_92

    iget v7, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    sub-int/2addr v10, v7

    :cond_92
    :goto_92
    iget-object v7, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v7}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v7

    add-int/2addr v7, v10

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v2, v7}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    invoke-static {p2, v2, v10}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {p0, v9, v7, v10}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    goto/16 :goto_171

    :cond_b6
    instance-of v10, v9, Lcom/coui/appcompat/tablayout/COUITabLayout;

    if-eqz v10, :cond_11e

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object v10, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v5, v10, :cond_cf

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v5, v11, v4, v2, v10}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_102

    :cond_cf
    sget-object v10, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Medium:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v5, v10, :cond_e2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v5, v11, v2, v2, v10}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    goto :goto_fb

    :cond_e2
    sget-object v10, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Expanded:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v5, v10, :cond_fa

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    const/16 v10, 0x8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v5, v10, v2, v2, v11}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result v5

    float-to-int v5, v5

    iget v10, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->a:I

    sub-int/2addr v5, v10

    goto :goto_fb

    :cond_fa
    move v5, v2

    :goto_fb
    iget-object v10, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v10}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v10

    add-int/2addr v5, v10

    :goto_102
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, v2, v5}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v10

    invoke-static {p2, v2, v10}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {p0, v9, v5, v10}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    goto :goto_171

    :cond_11e
    instance-of v10, v9, Lcom/coui/appcompat/searchview/COUISearchBar;

    if-eqz v10, :cond_171

    move-object v6, v9

    check-cast v6, Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v6, v2}, Lcom/coui/appcompat/searchview/COUISearchBar;->setUseResponsivePadding(Z)V

    iget-object v6, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object v8, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne v6, v8, :cond_133

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    goto :goto_148

    :cond_133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v11, v2, v2, v8}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->a(FIIILandroid/content/Context;)F

    move-result v6

    float-to-int v6, v6

    iget-object v8, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->b:Lcom/coui/component/responsiveui/ResponsiveUIModel;

    invoke-virtual {v8}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v8

    add-int/2addr v6, v8

    :goto_148
    iget-object v8, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->e:[I

    iget v10, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->d:I

    aget v8, v8, v10

    iget-object v11, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->f:[I

    aget v10, v11, v10

    invoke-virtual {v9, v8, v2, v10, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {p1, v2, v6}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v8

    invoke-static {p2, v2, v8}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v8

    invoke-virtual {p0, v9, v6, v8}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    move v6, v4

    :cond_171
    :goto_171
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_50

    :cond_175
    :goto_175
    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUIPercentTabWithSearchView;->c:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    sget-object v0, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p2, v0, :cond_18b

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, p1, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result p1

    if-eqz v6, :cond_186

    move v7, v8

    :cond_186
    add-int/2addr v7, v5

    invoke-virtual {p0, p1, v7}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_19d

    :cond_18b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, p1, v2}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result p1

    if-eqz v6, :cond_196

    move v7, v8

    :cond_196
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :goto_19d
    return-void
.end method
