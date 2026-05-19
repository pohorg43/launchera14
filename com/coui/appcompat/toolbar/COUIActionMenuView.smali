.class public Lcom/coui/appcompat/toolbar/COUIActionMenuView;
.super Landroidx/appcompat/widget/ActionMenuView;
.source ""


# instance fields
.field public A:Lcom/coui/appcompat/poplist/COUISubMenuClickListener;

.field public B:Z

.field public C:Z

.field public D:I

.field public a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/appcompat/view/menu/MenuItemImpl;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroidx/appcompat/view/menu/MenuBuilder;

.field public i:I

.field public j:Z

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

.field public t:Landroid/widget/PopupWindow$OnDismissListener;

.field public u:Landroid/view/View;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->y:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->z:I

    iput-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->B:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_action_menu_item_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->d:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->overflow_button_padding_horizontal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->e:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->toolbar_edge_icon_menu_item_margin:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->toolbar_icon_item_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->toolbar_item_vertical_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->g:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_actionbar_menuitemview_item_spacing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->l:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_vertical_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_number_vertical_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_number_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_small_number_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->p:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_red_dot_with_big_number_horizontal_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->q:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_icon_top_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->r:I

    new-instance p1, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/support/appcompat/R$styleable;->COUIHintRedDot:[I

    sget v5, Lcom/support/appcompat/R$style;->Widget_COUI_COUIHintRedDot_Small:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->s:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/appcompat/R$string;->abc_action_menu_overflow_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->v:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$string;->red_dot_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->w:Ljava/lang/String;

    sget p1, Lcom/support/appcompat/R$plurals;->red_dot_with_number_description:I

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$dimen;->coui_toolbar_menu_bg_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->D:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;ILandroid/graphics/Canvas;)V
    .registers 15

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v0, :cond_c

    if-eqz p2, :cond_a

    move v0, v3

    goto :goto_d

    :cond_a
    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    :goto_d
    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->s:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {v4, v0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->e(II)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->s:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {v5, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->d(I)I

    move-result v5

    if-ne v0, v1, :cond_20

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->l:I

    iget v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->m:I

    goto :goto_36

    :cond_20
    const/16 v1, 0xa

    if-ge p2, v1, :cond_29

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->p:I

    iget v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    goto :goto_36

    :cond_29
    const/16 v1, 0x64

    if-ge p2, v1, :cond_32

    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->o:I

    iget v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    goto :goto_36

    :cond_32
    iget v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->q:I

    iget v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->n:I

    :goto_36
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    instance-of v8, p1, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v8, :cond_79

    move-object v8, p1

    check-cast v8, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_79

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v1, v2

    sub-float/2addr p1, v1

    int-to-float v1, v4

    sub-float v1, p1, v1

    goto :goto_6f

    :cond_5e
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v3, p1

    int-to-float p1, v1

    sub-float/2addr v3, p1

    int-to-float p1, v2

    add-float v1, v3, p1

    int-to-float p1, v4

    add-float/2addr p1, v1

    :goto_6f
    iget v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->r:I

    sub-int/2addr v2, v6

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->g:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v5

    add-float/2addr v3, v2

    goto :goto_c5

    :cond_79
    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->D:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v3

    int-to-float v8, v8

    add-float/2addr v2, v8

    int-to-float v1, v1

    sub-float/2addr v2, v1

    int-to-float v1, v4

    add-float/2addr v1, v2

    goto :goto_ae

    :cond_92
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v2, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->D:I

    sub-int/2addr v8, v9

    div-int/2addr v8, v3

    int-to-float v8, v8

    sub-float/2addr v2, v8

    int-to-float v1, v1

    add-float/2addr v2, v1

    int-to-float v1, v4

    sub-float v1, v2, v1

    move v10, v2

    move v2, v1

    move v1, v10

    :goto_ae
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v8, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->D:I

    sub-int/2addr p1, v8

    div-int/2addr p1, v3

    int-to-float p1, p1

    add-float/2addr v4, p1

    int-to-float p1, v6

    sub-float p1, v4, p1

    int-to-float v3, v5

    add-float/2addr v3, p1

    move v10, v2

    move v2, p1

    move p1, v1

    move v1, v10

    :goto_c5
    iput v1, v7, Landroid/graphics/RectF;->left:F

    iput v2, v7, Landroid/graphics/RectF;->top:F

    iput p1, v7, Landroid/graphics/RectF;->right:F

    iput v3, v7, Landroid/graphics/RectF;->bottom:F

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->s:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p3, v0, p1, v7}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->b(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 11

    new-instance v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$1;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    const-string v1, ""

    invoke-static {p1, v1}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    move-object v1, p3

    check-cast v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v1, v1, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    sget v1, Lcom/support/appcompat/R$drawable;->coui_toolbar_menu_bg:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const/4 v1, -0x1

    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->d:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->e:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->e:I

    iget-object v6, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView$2;-><init>(Lcom/coui/appcompat/toolbar/COUIActionMenuView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4a
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 p2, 0x1

    if-eqz p1, :cond_64

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result p1

    xor-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    goto :goto_66

    :cond_64
    iput-boolean p2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    :goto_66
    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    const/4 p3, 0x6

    if-eqz p1, :cond_9c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    move v1, v0

    :goto_71
    if-ltz p1, :cond_84

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v3, :cond_81

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setTextAlignment(I)V

    :cond_81
    add-int/lit8 p1, p1, -0x1

    goto :goto_71

    :cond_84
    if-ne v1, p2, :cond_bc

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    if-eqz p1, :cond_bc

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;

    iget-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuItemView;->f:Z

    if-eqz p1, :cond_bc

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setTextAlignment(I)V

    goto :goto_bc

    :cond_9c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p2

    :goto_a1
    if-ltz p1, :cond_bc

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    instance-of v0, p2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v0, :cond_b9

    if-eqz v2, :cond_b5

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v2, p3}, Landroid/view/View;->setTextAlignment(I)V

    goto :goto_b8

    :cond_b5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTextAlignment(I)V

    :goto_b8
    move-object v2, p2

    :cond_b9
    add-int/lit8 p1, p1, -0x1

    goto :goto_a1

    :cond_bc
    :goto_bc
    return-void
.end method

.method public final b()Z
    .registers 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public final c()V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10d

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/MenuItemImpl;

    iput-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    const-string v4, ""

    const/4 v5, -0x1

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->y:Ljava/util/ArrayList;

    if-nez v2, :cond_81

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    move v6, v0

    :goto_36
    invoke-interface {v2}, Landroid/view/SubMenu;->size()I

    move-result v7

    if-ge v6, v7, :cond_81

    invoke-interface {v2, v6}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v8}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    invoke-interface {v7}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->a:Landroid/graphics/drawable/Drawable;

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_5a

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5b

    :cond_5a
    move-object v9, v4

    :goto_5b
    iput-object v9, v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->b:Ljava/lang/String;

    invoke-interface {v7}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v9

    iput-boolean v9, v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->d:Z

    invoke-interface {v7}, Landroid/view/MenuItem;->isChecked()Z

    move-result v9

    iput-boolean v9, v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->e:Z

    invoke-interface {v7}, Landroid/view/MenuItem;->getGroupId()I

    move-result v9

    iput v9, v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->j:I

    iput v5, v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->i:I

    invoke-interface {v7}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v7

    iput-boolean v7, v8, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->c:Z

    invoke-virtual {v8}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->a()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    :cond_81
    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    new-instance v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;

    invoke-direct {v6}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;-><init>()V

    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->a:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_a2

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_a2
    iput-object v4, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v4

    iput-boolean v4, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->d:Z

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    iput-boolean v4, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->e:Z

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    iput v4, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->j:I

    iput v5, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->i:I

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v4

    iput-boolean v4, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->c:Z

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ee

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_ee
    iput v5, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->f:I

    iget v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->z:I

    if-ne v4, v1, :cond_100

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->y:Ljava/util/ArrayList;

    if-eqz v4, :cond_100

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_100

    iget-object v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->y:Ljava/util/ArrayList;

    :cond_100
    iput-object v3, v6, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->g:Ljava/util/ArrayList;

    invoke-virtual {v6}, Lcom/coui/appcompat/poplist/PopupListItem$Builder;->a()Lcom/coui/appcompat/poplist/PopupListItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_10d
    return-void
.end method

.method public final d(I)Ljava/lang/String;
    .registers 6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1d

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->x:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->w:Ljava/lang/String;

    return-object p0

    :cond_1d
    const-string p0, ""

    return-object p0
.end method

.method public dismissPopupMenus()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_7
    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_70

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->k:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a(Landroid/view/View;ILandroid/graphics/Canvas;)V

    :cond_35
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    iget-boolean v2, v2, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v2, :cond_6d

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, p1}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a(Landroid/view/View;ILandroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v2, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->v:Ljava/lang/String;

    goto :goto_6a

    :cond_50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_6a
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_70
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    invoke-super {p0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    iput-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverFlowMenuButton()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    return-object p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p4, p2

    move v0, p4

    :goto_7
    const/16 v1, 0x8

    if-ge p4, p1, :cond_1b

    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_16

    goto :goto_18

    :cond_16
    add-int/lit8 v0, v0, 0x1

    :goto_18
    add-int/lit8 p4, p4, 0x1

    goto :goto_7

    :cond_1b
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    iget-boolean p3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    if-eqz p3, :cond_9a

    if-eqz p4, :cond_63

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_31
    if-ge p2, p1, :cond_18f

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_44

    goto :goto_60

    :cond_44
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    sub-int v5, p3, v2

    add-int/2addr v3, v4

    invoke-virtual {p4, v5, v4, p3, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    add-int/2addr v2, p4

    sub-int/2addr p3, v2

    :goto_60
    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    :cond_63
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p3

    :goto_67
    if-ge p2, p1, :cond_18f

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v1, :cond_7a

    goto :goto_97

    :cond_7a
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p3, v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v4, v3, 0x2

    sub-int v4, p5, v4

    add-int v5, p3, v2

    add-int/2addr v3, v4

    invoke-virtual {p4, p3, v4, v5, v3}, Landroid/view/View;->layout(IIII)V

    iget p4, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, p4

    iget p4, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    add-int/2addr v2, p4

    add-int/2addr v2, p3

    move p3, v2

    :goto_97
    add-int/lit8 p2, p2, 0x1

    goto :goto_67

    :cond_9a
    const/4 p3, 0x1

    if-eqz p4, :cond_117

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p1, p3

    move v2, p3

    :goto_a3
    if-ltz p1, :cond_18f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_b6

    goto :goto_114

    :cond_b6
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr p4, v5

    if-eqz v2, :cond_cf

    instance-of v2, v3, Landroid/widget/TextView;

    if-eqz v2, :cond_ce

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_ce

    add-int/lit8 p4, p4, 0x0

    :cond_ce
    move v2, p2

    :cond_cf
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez p1, :cond_106

    if-le v0, p3, :cond_106

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v4

    sub-int/2addr v8, v5

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_100

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_fe

    goto :goto_100

    :cond_fe
    add-int/lit8 v8, v8, 0x0

    :cond_100
    :goto_100
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_114

    :cond_106
    add-int v8, p4, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, p4, v7, v8, v6}, Landroid/view/View;->layout(IIII)V

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v3

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    add-int/2addr v5, v3

    add-int/2addr v5, p4

    move p4, v5

    :goto_114
    add-int/lit8 p1, p1, -0x1

    goto :goto_a3

    :cond_117
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr p4, v2

    sub-int/2addr p1, p3

    move v2, p3

    :goto_122
    if-ltz p1, :cond_18f

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/ActionMenuView$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-ne v5, v1, :cond_135

    goto :goto_18c

    :cond_135
    iget v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p4, v5

    if-eqz v2, :cond_14e

    instance-of v2, v3, Landroid/widget/TextView;

    if-eqz v2, :cond_14d

    move-object v2, v3

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14d

    add-int/lit8 p4, p4, 0x0

    :cond_14d
    move v2, p2

    :cond_14e
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v7, v6, 0x2

    sub-int v7, p5, v7

    if-nez p1, :cond_17f

    if-le v0, p3, :cond_17f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v4

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_179

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_177

    goto :goto_179

    :cond_177
    add-int/lit8 v8, v8, 0x0

    :cond_179
    :goto_179
    add-int/2addr v5, v8

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_18c

    :cond_17f
    sub-int v8, p4, v5

    add-int/2addr v6, v7

    invoke-virtual {v3, v8, v7, p4, v6}, Landroid/view/View;->layout(IIII)V

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v3

    iget v3, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    add-int/2addr v5, v3

    sub-int/2addr p4, v5

    :goto_18c
    add-int/lit8 p1, p1, -0x1

    goto :goto_122

    :cond_18f
    return-void
.end method

.method public onMeasure(II)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    if-nez v1, :cond_a

    invoke-super/range {p0 .. p2}, Landroidx/appcompat/widget/ActionMenuView;->onMeasure(II)V

    return-void

    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result v2

    if-eqz v2, :cond_24

    iput-boolean v3, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    if-ne v2, v1, :cond_37

    move v2, v1

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    const/4 v5, -0x1

    move v6, v3

    move v8, v6

    move v7, v5

    move v9, v7

    :goto_44
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/16 v11, 0x8

    if-ge v6, v10, :cond_62

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v11, :cond_57

    goto :goto_5f

    :cond_57
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v1, :cond_5e

    move v7, v6

    move v9, v7

    goto :goto_5f

    :cond_5e
    move v9, v6

    :goto_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_62
    if-eq v7, v5, :cond_9f

    iget-boolean v6, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    if-nez v6, :cond_9f

    if-le v8, v1, :cond_9f

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_9f

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_90

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_8d

    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_9f

    :cond_8d
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_9f

    :cond_90
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_9b

    iget v6, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_9f

    :cond_9b
    iget v6, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_9f
    :goto_9f
    if-eq v9, v5, :cond_d6

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    if-eqz v7, :cond_d6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    check-cast v6, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ActionMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_c7

    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_c4

    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_d6

    :cond_c4
    iput v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_d6

    :cond_c7
    invoke-virtual/range {p0 .. p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b()Z

    move-result v6

    if-eqz v6, :cond_d2

    iget v6, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_d6

    :cond_d2
    iget v6, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->f:I

    iput v6, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_d6
    :goto_d6
    move v6, v3

    move v7, v6

    move v8, v7

    :goto_d9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v6, v9, :cond_134

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v12, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v14, v12

    add-int/2addr v14, v7

    iget v13, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v14, v13}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v16

    add-int v16, v16, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v16, v14

    iget v14, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v16, v16, v14

    add-int/lit8 v14, v16, 0x0

    iget v10, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v3, p2

    invoke-static {v3, v14, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v10

    invoke-virtual {v9, v13, v10}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v12

    add-int/2addr v7, v10

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-le v10, v8, :cond_130

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    :cond_130
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto :goto_d9

    :cond_134
    iget-boolean v3, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->j:Z

    if-eqz v3, :cond_186

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_173

    move v9, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_141
    if-ge v4, v3, :cond_154

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v11, :cond_14e

    goto :goto_151

    :cond_14e
    add-int/lit8 v6, v6, 0x1

    move v9, v4

    :goto_151
    add-int/lit8 v4, v4, 0x1

    goto :goto_141

    :cond_154
    sub-int/2addr v6, v1

    iget v1, v0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->i:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v7

    if-eq v9, v5, :cond_171

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_171

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_171

    add-int/lit8 v6, v6, 0x0

    :cond_171
    move v4, v6

    goto :goto_174

    :cond_173
    const/4 v4, 0x0

    :goto_174
    if-eqz v2, :cond_186

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_186
    invoke-virtual {v0, v4, v8}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setEnableAddExtraWidth(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->B:Z

    return-void
.end method

.method public setIsFixTitleFontSize(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->C:Z

    return-void
.end method

.method public setOverflowReserved(Z)V
    .registers 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->h:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    goto :goto_56

    :cond_31
    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroid/widget/BaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/widget/PopupWindow;->update(II)V

    :cond_56
    :goto_56
    return-void
.end method

.method public setPopupWindowOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->t:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setSubMenuClickListener(Lcom/coui/appcompat/poplist/COUISubMenuClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->A:Lcom/coui/appcompat/poplist/COUISubMenuClickListener;

    return-void
.end method

.method public showOverflowMenu()Z
    .registers 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    return v1

    :cond_18
    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->c()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v0, v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/toolbar/COUIActionMenuView;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_44
    return v1
.end method
