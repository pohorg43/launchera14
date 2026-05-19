.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
.super Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

.field public d:I

.field public e:I

.field public f:[I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/bars/R$dimen;->coui_tool_navigation_edge_item_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/16 p1, 0xa

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->f:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tool_navigation_edge_item_default_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tool_navigation_item_default_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b:I

    goto :goto_36

    :cond_1e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tool_navigation_edge_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b:I

    :goto_36
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView$1;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    return-object v0
.end method

.method public getCOUINavigationItemView()Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->c:Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    return-object p0
.end method

.method public getEnlargeId()I
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p0

    return p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b:I

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v2, 0x1

    if-nez p2, :cond_2c

    move v3, v2

    goto :goto_2d

    :cond_2c
    move v3, p2

    :goto_2d
    div-int v3, p1, v3

    mul-int v4, v3, p2

    sub-int/2addr p1, v4

    const/4 v4, 0x0

    move v5, v4

    :goto_34
    if-ge v5, p2, :cond_46

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->f:[I

    aput v3, v6, v5

    if-lez p1, :cond_43

    aget v7, v6, v5

    add-int/2addr v7, v2

    aput v7, v6, v5

    add-int/lit8 p1, p1, -0x1

    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_46
    move p1, v4

    move p2, p1

    move v2, p2

    :goto_49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_7b

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5c

    goto :goto_78

    :cond_5c
    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->f:[I

    aget v5, v5, v2

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v5, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    :goto_78
    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    :cond_7b
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, p1, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    iget p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->b:I

    invoke-static {p2, v0, v4}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setItemLayoutType(I)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->g:I

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->a()V

    const/4 p1, 0x0

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-ge p1, v0, :cond_30

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v1, :cond_2d

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->g:I

    iput v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->l:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_30
    return-void
.end method

.method public setTextSize(I)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->e:I

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object p1

    if-eqz p1, :cond_31

    const/4 p1, 0x0

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-ge p1, v0, :cond_31

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v1, :cond_2e

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->e:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextSize(I)V

    :cond_2e
    add-int/lit8 p1, p1, 0x1

    goto :goto_9

    :cond_31
    return-void
.end method
