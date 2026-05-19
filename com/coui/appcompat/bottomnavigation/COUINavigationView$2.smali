.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setOnEnlargeSelectListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .param p1  # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getEnlargeId()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_12

    move v1, v4

    goto :goto_13

    :cond_12
    move v1, v3

    :goto_13
    iput-boolean v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->s:Z

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->i:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;

    iget-boolean v0, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->s:Z

    invoke-interface {v1, v0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;->a(ZLandroid/view/MenuItem;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->q:I

    if-nez p1, :cond_26

    goto/16 :goto_b0

    :cond_26
    iget-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->s:Z

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    :goto_2c
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-ge v3, v0, :cond_6a

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/bars/R$color;->coui_navigation_enlarge_item_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    instance-of v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v1, :cond_67

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget-boolean v1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-nez v1, :cond_67

    iget-object v0, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->o:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_6a
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/widget/FrameLayout;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->q:I

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_b0

    :cond_72
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    :goto_74
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-ge v3, v0, :cond_98

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget-object v0, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->o:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    :cond_98
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/bars/R$color;->coui_navigation_enlarge_default_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :goto_b0
    return v4
.end method
