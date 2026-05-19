.class public Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;
.super Lcom/google/android/material/navigation/NavigationBarItemView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/google/android/material/R$id;->navigation_bar_item_small_label_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;->a:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->navigation_bar_item_large_label_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/bars/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;->setTextSize(I)V

    return-void
.end method


# virtual methods
.method public getItemDefaultMarginResId()I
    .registers 1
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation

    sget p0, Lcom/support/bars/R$dimen;->coui_navigation_rail_item_icon_margin:I

    return p0
.end method

.method public getItemLayoutResId()I
    .registers 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    sget p0, Lcom/support/bars/R$layout;->coui_navigation_rail_item_layout:I

    return p0
.end method

.method public performLongClick()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setTextSize(I)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;->c:I

    iget-object v0, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;->a:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;->b:Landroid/widget/TextView;

    iget p0, p0, Lcom/coui/appcompat/navigationrail/COUINavigationRailItemView;->c:I

    int-to-float p0, p0

    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
