.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;
.super Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;
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

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:[I

.field public l:I

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/FrameLayout;

.field public q:Landroid/widget/FrameLayout;

.field public r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field public s:Landroid/graphics/Rect;

.field public t:I

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x2

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_enlarge_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_normal_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_enlarge_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->e:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_normal_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->f:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_enlarge_icon_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->g:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_red_dot_with_number_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bars/R$dimen;->coui_navigation_red_dot_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:[I

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->u:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->w:Z

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_small_label_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->m:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_large_label_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->n:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->o:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_container:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    sget v1, Lcom/support/bars/R$id;->fl_root:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    sget v1, Lcom/support/bars/R$id;->red_dot:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bars/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextSize(I)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/bars/R$dimen;->coui_navigation_red_dot_with_number_horizontal_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz v0, :cond_34

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->c:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:I

    :goto_b
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    const/16 v2, 0x8

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->w:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2a

    move p1, v1

    goto :goto_2c

    :cond_2a
    iget p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->g:I

    :goto_2c
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_34
    return-void
.end method

.method public b()V
    .registers 9

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz v3, :cond_1a

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_1a

    move v3, v1

    goto :goto_24

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/bars/R$dimen;->coui_navigation_icon_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_24
    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v4, v3, v6, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/bars/R$dimen;->coui_navigation_icon_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz v0, :cond_97

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_97
    iput-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->w:Z

    return-void
.end method

.method public getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-object p0
.end method

.method public getItemDefaultMarginResId()I
    .registers 1
    .annotation build Landroidx/annotation/DimenRes;
    .end annotation

    sget p0, Lcom/support/bars/R$dimen;->coui_navigation_enlarge_default_margin:I

    return p0
.end method

.method public getItemLayoutResId()I
    .registers 1
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation

    sget p0, Lcom/support/bars/R$layout;->coui_navigation_item_layout:I

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->u:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz v1, :cond_25

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->e:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->d:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_29

    :cond_25
    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->f:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_29
    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a(Z)V

    :cond_35
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 15

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x2

    if-ne p1, p4, :cond_14

    move p1, p3

    goto :goto_15

    :cond_14
    move p1, p2

    :goto_15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/support/bars/R$bool;->is_normal_layout:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$bool;->is_big_layout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bars/R$bool;->is_small_layout:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->l:I

    const/16 v3, 0x8

    if-ne v2, p3, :cond_4a

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b()V

    goto/16 :goto_1f6

    :cond_4a
    const/high16 v2, 0x40000000  # 2.0f

    if-nez p1, :cond_50

    if-eqz v0, :cond_111

    :cond_50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v4

    if-ne v4, p3, :cond_58

    move v4, p3

    goto :goto_59

    :cond_58
    move v4, p2

    :goto_59
    if-nez v4, :cond_111

    if-nez v1, :cond_111

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p5, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_enlarge_icon_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    if-lez v1, :cond_88

    div-int/2addr v1, p4

    goto :goto_89

    :cond_88
    move v1, p2

    :goto_89
    iget-boolean v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, p4

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, p4

    add-int/2addr v6, v5

    goto :goto_af

    :cond_a8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int v6, v4, v1

    move v4, v1

    :goto_af
    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, p4

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/2addr v8, p4

    add-int/2addr v8, v7

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/2addr v1, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, p4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, p4

    add-int/2addr v5, v4

    sub-int p4, v0, p1

    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p5, p4, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p5, p1, v1, v0, v5}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz p1, :cond_10d

    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_10d
    iput-boolean p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->w:Z

    goto/16 :goto_1f6

    :cond_111
    if-nez p1, :cond_115

    if-eqz v0, :cond_1ef

    :cond_115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p1

    if-ne p1, p3, :cond_11d

    move p1, p3

    goto :goto_11e

    :cond_11d
    move p1, p2

    :goto_11e
    if-eqz p1, :cond_1ef

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {p5, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_enlarge_icon_horizontal_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, v0

    if-lez v1, :cond_14b

    div-int/2addr v1, p4

    goto :goto_14c

    :cond_14b
    move v1, p2

    :goto_14c
    iget-boolean v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz v4, :cond_188

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, p4

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    div-int/2addr v5, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/2addr v6, p4

    add-int/2addr v6, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, p4

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/2addr v8, p4

    add-int/2addr v8, v7

    invoke-virtual {p1, v4, v5, v6, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_1b2

    :cond_188
    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    div-int/2addr v6, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, p4

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    div-int/2addr v7, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/2addr v8, p4

    add-int/2addr v8, v7

    invoke-virtual {p1, v5, v6, v4, v8}, Landroid/view/View;->layout(IIII)V

    :goto_1b2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, p4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    div-int/2addr v4, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/2addr v5, p4

    add-int/2addr v5, v4

    sub-int p4, p1, v1

    invoke-static {p4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p5, p4, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {p5, v1, v0, p1, v5}, Landroid/view/View;->layout(IIII)V

    iget-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    if-eqz p1, :cond_1ec

    invoke-virtual {p5, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1ec
    iput-boolean p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->w:Z

    goto :goto_1f6

    :cond_1ef
    if-nez p5, :cond_1f3

    if-eqz v1, :cond_1f6

    :cond_1f3
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b()V

    :cond_1f6
    :goto_1f6
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v3, :cond_200

    goto/16 :goto_302

    :cond_200
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->s:Landroid/graphics/Rect;

    if-nez p1, :cond_20b

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->s:Landroid/graphics/Rect;

    :cond_20b
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:[I

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result p4

    if-ne p4, p3, :cond_21c

    iget p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->j:I

    aput p4, p1, p3

    aput p4, p1, p2

    goto :goto_27d

    :cond_21c
    iget p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->h:I

    aput p4, p1, p3

    iget p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->i:I

    aput p4, p1, p2

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result p4

    const/16 p5, 0x64

    if-lt p4, p5, :cond_252

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result p4

    const/16 p5, 0x3e8

    if-ge p4, p5, :cond_252

    aget p4, p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->b:I

    int-to-float v0, v0

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, p5, p4}, Landroidx/core/animation/b;->a(FFI)I

    move-result p4

    aput p4, p1, p2

    goto :goto_27d

    :cond_252
    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result p4

    if-lez p4, :cond_27d

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result p4

    const/16 p5, 0xa

    if-ge p4, p5, :cond_27d

    aget p4, p1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a:I

    int-to-float v0, v0

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, p5, p4}, Landroidx/core/animation/b;->a(FFI)I

    move-result p4

    aput p4, p1, p2

    :cond_27d
    :goto_27d
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, p3, :cond_2bc

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->s:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getTop()I

    move-result p5

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, p4, p5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->s:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:[I

    aget p2, p4, p2

    neg-int p2, p2

    aget p3, p4, p3

    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2f3

    :cond_2bc
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->s:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getRight()I

    move-result p4

    iget-object p5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    sub-int/2addr p4, p5

    iget-object p5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getTop()I

    move-result p5

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->p:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, p4, p5, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->s:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->k:[I

    aget p2, p4, p2

    aget p3, p4, p3

    neg-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    :goto_2f3
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->r:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->s:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/View;->layout(IIII)V

    :goto_302
    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->a(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    return-void
.end method

.method public setTextSize(I)V
    .registers 4

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->t:I

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->m:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->n:Landroid/widget/TextView;

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->t:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
