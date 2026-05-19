.class public Lcom/coui/appcompat/navigationrail/COUINavigationRailView;
.super Lcom/google/android/material/navigationrail/NavigationRailView;
.source ""


# instance fields
.field public a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    sget v0, Lcom/google/android/material/R$attr;->navigationRailStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcom/support/bars/R$style;->Widget_COUI_COUINavigationRailView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/navigationrail/NavigationRailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/support/bars/R$styleable;->COUINavigationRailView:[I

    invoke-static {p1, p2, v1, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    sget p3, Lcom/support/bars/R$styleable;->COUINavigationRailView_navigationRailType:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    if-nez p3, :cond_19

    sget p3, Lcom/support/bars/R$drawable;->coui_bottom_tool_navigation_item_bg:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_19
    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/google/android/material/navigation/NavigationBarView;->setElevation(F)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p2, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;->a:Landroid/view/View;

    sget p3, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/bars/R$dimen;->coui_navigation_shadow_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const/4 p3, -0x1

    invoke-direct {p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const p2, 0x800005

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;->createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;

    move-result-object p0

    return-object p0
.end method

.method public createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigationrail/NavigationRailMenuView;
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailMenuView;

    invoke-direct {p0, p1}, Lcom/coui/appcompat/navigationrail/COUINavigationRailMenuView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getDividerView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailView;->a:Landroid/view/View;

    return-object p0
.end method
