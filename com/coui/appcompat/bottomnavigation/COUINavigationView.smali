.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationView;
.super Lcom/google/android/material/bottomnavigation/BottomNavigationView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;
    }
.end annotation


# instance fields
.field public a:Landroid/animation/Animator;

.field public b:Landroid/animation/Animator;

.field public c:Landroid/animation/ValueAnimator;

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/animation/ValueAnimator;

.field public f:I

.field public g:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

.field public h:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

.field public i:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;

.field public j:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;

.field public k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

.field public l:Landroid/widget/FrameLayout;

.field public m:I

.field public n:I

.field public o:Landroid/view/View;

.field public p:I

.field public q:I

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/support/bars/R$attr;->couiNavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    sget v0, Lcom/support/bars/R$style;->Widget_COUI_COUINavigationView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->n:I

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->p:I

    iput-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->r:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->s:Z

    sget-object v2, Lcom/support/bars/R$styleable;->COUINavigationMenuView:[I

    invoke-static {p1, p2, v2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iput-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget p3, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiNaviTextColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_39

    :cond_2c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/bars/R$color;->coui_bottom_tool_navigation_item_selector:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    :goto_39
    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget v0, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiNaviIconTint:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    sget p3, Lcom/support/bars/R$styleable;->COUINavigationMenuView_navigationType:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->f:I

    sget v0, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiNaviBackground:I

    if-nez p3, :cond_53

    sget p3, Lcom/support/bars/R$drawable;->coui_bottom_tool_navigation_item_bg:I

    goto :goto_54

    :cond_53
    move p3, v1

    :goto_54
    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->f:I

    if-nez v0, :cond_61

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0, p3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setItemBackgroundRes(I)V

    :cond_61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/support/bars/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v0, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiNaviTextSize:I

    invoke-virtual {p2, v0, p3}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p3

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->p:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    int-to-float p3, p3

    const/4 v2, 0x2

    invoke-static {p3, v0, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result p3

    float-to-int p3, p3

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setTextSize(I)V

    sget p3, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiNaviTipsType:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    sget v3, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiNaviTipsNumber:I

    invoke-virtual {p2, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result v3

    sget v4, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiNaviMenu:I

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_137

    invoke-virtual {p2, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->inflateMenu(I)V

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_b8

    goto/16 :goto_137

    :cond_b8
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_ca

    goto/16 :goto_137

    :cond_ca
    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->getCOUINavigationMenuView()Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v4

    check-cast v4, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v4, :cond_137

    if-eq p3, v6, :cond_129

    if-eq p3, v2, :cond_f7

    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    const/4 v3, 0x4

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_137

    :cond_f7
    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    :try_start_fe
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_101
    .catch Ljava/lang/NumberFormatException; {:try_start_fe .. :try_end_101} :catch_103

    move p3, v6

    goto :goto_104

    :catch_103
    move p3, v1

    :goto_104
    if-eqz p3, :cond_119

    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    goto :goto_137

    :cond_119
    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    const/4 v5, 0x3

    invoke-virtual {p3, v5}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    goto :goto_137

    :cond_129
    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :cond_137
    :goto_137
    sget p3, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiToolNavigationViewBg:I

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result p3

    sget v3, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiTabNavigationViewBg:I

    invoke-virtual {p2, v3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    sget v4, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiEnlargeNavigationViewBg:I

    invoke-virtual {p2, v4, v1}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->q:I

    iget v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->f:I

    if-ne v4, v2, :cond_164

    iput-boolean v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->r:Z

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x51

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_16d

    :cond_164
    if-nez v4, :cond_16a

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_16d

    :cond_16a
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_16d
    sget p3, Lcom/support/bars/R$styleable;->COUINavigationMenuView_couiItemLayoutType:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_17c

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInteger(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setItemLayoutType(I)V

    :cond_17c
    invoke-virtual {p0, v6}, Lcom/google/android/material/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->o:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->o:Landroid/view/View;

    sget v3, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/support/bars/R$dimen;->coui_navigation_shadow_height:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-direct {p1, v0, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->o:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->r:Z

    if-eqz p1, :cond_1b8

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->o:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_1c2

    :cond_1b8
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->o:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTop(I)V

    :goto_1c2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setElevation(F)V

    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v2, [F

    fill-array-data v0, :array_2b6

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroid/animation/Animator;

    new-instance p3, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {p3}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroid/animation/Animator;

    const-wide/16 v3, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroid/animation/Animator;

    new-instance p3, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget-object p3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v2, [F

    fill-array-data v0, :array_2be

    invoke-static {p2, p3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Landroid/animation/Animator;

    new-instance p3, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {p3}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Landroid/animation/Animator;

    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Landroid/animation/Animator;

    new-instance p3, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;

    invoke-direct {p3, p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p2, v2, [F

    fill-array-data p2, :array_2c6

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {p3}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->c:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x15e

    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->c:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;

    invoke-direct {p3, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p2, v2, [Landroid/animation/Animator;

    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroid/animation/Animator;

    aput-object p3, p2, v1

    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->c:Landroid/animation/ValueAnimator;

    aput-object p3, p2, v6

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, v2, [F

    fill-array-data p1, :array_2ce

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->e:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$7;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$7;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v2, [F

    fill-array-data p1, :array_2d6

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->d:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->d:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->d:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$8;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$8;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->d:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    return-void

    nop

    :array_2b6
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2be
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_2c6
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_2ce
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_2d6
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bars/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->p:I

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->p:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_2c

    :cond_1d
    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/bars/R$dimen;->coui_navigation_item_small_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_2c
    :goto_2c
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setTextSize(I)V

    return-void
.end method

.method public createNavigationBarMenuView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarMenuView;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p0, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/support/bars/R$style;->COUINavigationView_NoAnimation:I

    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public getCOUINavigationMenuView()Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    return-object p0
.end method

.method public getDividerView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->o:Landroid/view/View;

    return-object p0
.end method

.method public getEnlargeBgView()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getMaxItemCount()I
    .registers 1

    const/16 p0, 0xa

    return p0
.end method

.method public inflateMenu(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    :cond_11
    invoke-super {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->inflateMenu(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Lcom/google/android/material/navigation/NavigationBarView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->r:Z

    if-eqz v0, :cond_37

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->l:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/support/bars/R$color;->coui_navigation_enlarge_default_bg:I

    invoke-static {p0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_37
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->j:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    :cond_a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/bars/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    const/high16 v4, -0x80000000

    if-ne v0, v4, :cond_1d

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_23

    :cond_1d
    if-ne v0, v3, :cond_23

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_23
    :goto_23
    invoke-super {p0, p1, p2}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setAnimationType(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_11

    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->b:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_11
    :goto_11
    return-void
.end method

.method public setEnlargeIndex(I)V
    .registers 6

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget-boolean p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->r:Z

    iput p1, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:I

    if-eqz p0, :cond_45

    if-ltz p1, :cond_45

    const/4 p0, 0x0

    move p1, p0

    :goto_c
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_45

    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v2, :cond_42

    check-cast v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    iget v2, v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->d:I

    const/4 v3, 0x1

    if-ne p1, v2, :cond_3d

    move v2, v3

    goto :goto_3e

    :cond_3d
    move v2, p0

    :goto_3e
    iput-boolean v3, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->u:Z

    iput-boolean v2, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->v:Z

    :cond_42
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_45
    return-void
.end method

.method public setItemLayoutType(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->m:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->m:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemLayoutType(I)V

    return-void
.end method

.method public setNeedTextAnim(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOnAnimatorListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->g:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    return-void
.end method

.method public setOnAnimatorShowHideListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->h:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    return-void
.end method

.method public setOnConfigChangedListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->j:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;

    return-void
.end method

.method public setOnEnlargeSelectListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->i:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;

    new-instance p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void
.end method
