.class public Lcom/coui/appcompat/grid/COUIListDetailView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public a:Landroidx/fragment/app/FragmentContainerView;

.field public b:Landroidx/fragment/app/FragmentContainerView;

.field public c:Landroidx/fragment/app/FragmentContainerView;

.field public d:Landroid/view/View;

.field public e:I

.field public f:I

.field public g:I

.field public h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/grid/COUIListDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/grid/COUIListDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x3ecccccd  # 0.4f

    iput p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->h:F

    new-instance p2, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {p2, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    new-instance p2, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {p2, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    new-instance p2, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {p2, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    invoke-static {}, Landroid/widget/FrameLayout;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-static {}, Landroid/widget/FrameLayout;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-static {}, Landroid/widget/FrameLayout;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/grid/COUIListDetailView;->setDividerColor(I)V

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_main_fragment_max_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->e:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$dimen;->coui_main_fragment_min_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->f:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_fragment_gap_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->g:I

    return-void
.end method


# virtual methods
.method public getEmptyPageFragmentContainer()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method public getMainFragmentContainer()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method public getSubFragmentContainer()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/grid/COUIListDetailView;->setDividerColor(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-ne p1, p2, :cond_c

    goto :goto_d

    :cond_c
    move p2, p3

    :goto_d
    sget-object p1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    sget-object p4, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p4, p5, v0}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p4, v0, v1}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p4

    invoke-virtual {p1, p5, p4}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p1

    const/16 p4, 0x8

    if-eqz p2, :cond_d7

    sget-object p2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p1, p2, :cond_66

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_18a

    :cond_66
    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    add-int/2addr p2, p5

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, p4, p3, p2, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_18a

    :cond_d7
    sget-object p2, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-ne p1, p2, :cond_100

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, p3, p3, p2, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_18a

    :cond_100
    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    add-int/2addr p2, p5

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    invoke-virtual {p1, p4, p3, p2, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p5, p4

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-virtual {p1, p2, p3, p5, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p4, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    iget-object p5, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object p2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    add-int/2addr p2, p5

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    invoke-virtual {p1, p4, p3, p2, p0}, Landroid/widget/FrameLayout;->layout(IIII)V

    :goto_18a
    return-void
.end method

.method public onMeasure(II)V
    .registers 9

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sget-object v1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    sget-object v2, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object v1

    int-to-float v2, v0

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->h:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->e:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->f:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    sget-object v3, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_47

    move v1, v0

    move v2, v1

    move v3, v4

    goto :goto_57

    :cond_47
    iget v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->f:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->e:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v2, v0, v1

    iget v3, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->g:I

    :goto_57
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v4, v0}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->a:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v1, v0, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    invoke-static {p1, v4, v2}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->b:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v1, v0, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->c:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {p0, v1, v0, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    invoke-static {p1, v4, v3}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method public setDividerColor(I)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->d:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setMainFragmentPercent(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/grid/COUIListDetailView;->h:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
