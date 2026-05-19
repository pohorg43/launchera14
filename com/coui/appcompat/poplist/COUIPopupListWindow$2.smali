.class Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/poplist/COUIPopupListWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    sget-boolean v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Y:Z

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->s:I

    const/4 v0, 0x2

    div-int/2addr p3, v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p4, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_1ee

    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p4, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-gt p4, p3, :cond_2c

    goto/16 :goto_1ee

    :cond_2c
    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p4, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1ee

    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p4, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {p4}, Lcom/coui/appcompat/poplist/PopupListItem;->a()Z

    move-result p4

    if-eqz p4, :cond_1ee

    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p4, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean p4, p4, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    if-eqz p4, :cond_1ee

    iget-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p4, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object p5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v1, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    const/4 v2, 0x1

    if-nez v1, :cond_87

    new-instance v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-direct {v1, p4}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setDismissTouchOutside(Z)V

    iget-object v1, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget v3, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->V:I

    iput v3, v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->U:I

    new-instance v3, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;

    invoke-direct {v3, p5}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$3;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    iput-object v3, v1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v3, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;

    invoke-direct {v3, p5, p4}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$4;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_87
    iget-object v1, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v3, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object p3, p3, Lcom/coui/appcompat/poplist/PopupListItem;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f(Ljava/util/List;)V

    iget-object p3, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p5, p5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p3, p5, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a(Landroid/view/View;Z)Z

    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p3, p3, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    sget-object p5, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    sget-object v5, Lcom/coui/component/responsiveui/unit/Dp;->Companion:Lcom/coui/component/responsiveui/unit/Dp$Companion;

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    invoke-virtual {v5, p3, p5}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v5, p3, v3}, Lcom/coui/component/responsiveui/unit/Dp$Companion;->pixel2Dp(Landroid/content/Context;I)Lcom/coui/component/responsiveui/unit/Dp;

    move-result-object p3

    invoke-virtual {v4, p5, p3}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;->calculateFromSize(Lcom/coui/component/responsiveui/unit/Dp;Lcom/coui/component/responsiveui/unit/Dp;)Lcom/coui/component/responsiveui/window/WindowSizeClass;

    move-result-object p3

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    move-result-object p5

    sget-object v3, Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    if-eq p5, v3, :cond_d9

    invoke-virtual {p3}, Lcom/coui/component/responsiveui/window/WindowSizeClass;->getWindowHeightSizeClass()Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    move-result-object p3

    sget-object p5, Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;->Compact:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    if-ne p3, p5, :cond_d7

    goto :goto_d9

    :cond_d7
    move p3, v1

    goto :goto_da

    :cond_d9
    :goto_d9
    move p3, v2

    :goto_da
    const/4 p5, 0x3

    if-nez p3, :cond_1cf

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v3, Lcom/support/appcompat/R$dimen;->coui_sub_action_menu_rtl_offset:I

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_sub_action_menu_offset_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    new-array v3, v0, [I

    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v3, v1

    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->c:[I

    aget v6, v5, v1

    sub-int/2addr v4, v6

    aput v4, v3, v1

    aget v4, v3, v2

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    aget v4, v3, v1

    iget-object v5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object v5, v5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v4, p3

    iget-object v5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget v5, v5, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:I

    add-int/2addr v4, v5

    aget v5, v3, v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getWidth()I

    move-result p1

    add-int/2addr p1, v5

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget v5, p3, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:I

    add-int/2addr p1, v5

    iget-object p3, p3, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    if-ne p3, v2, :cond_12f

    move p3, v2

    goto :goto_130

    :cond_12f
    move p3, v1

    :goto_130
    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_138

    if-eqz p3, :cond_14e

    :cond_138
    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p3, p3, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p3

    add-int/2addr p3, p1

    sget-object v5, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sget-object v6, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    if-le p3, v5, :cond_14d

    goto :goto_14e

    :cond_14d
    move v4, p1

    :cond_14e
    :goto_14e
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-boolean p3, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    if-eqz p3, :cond_15b

    aget p3, v3, v2

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_161

    :cond_15b
    aget p3, v3, v2

    iget-object v3, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    :goto_161
    sub-int/2addr p3, v3

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b()I

    move-result p1

    invoke-static {p4}, Lcom/coui/appcompat/uiutil/UIUtil;->f(Landroid/content/Context;)I

    move-result p4

    add-int/2addr p4, p1

    sub-int/2addr p4, p3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getHeight()I

    move-result p1

    if-lt p4, p1, :cond_1af

    if-lez v4, :cond_1af

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p4, p1, v1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a(Landroid/view/View;Z)Z

    move-result p1

    if-nez p1, :cond_185

    return-void

    :cond_185
    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p1

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p4, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p4, p1, v1, v4, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iput-object p2, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Q:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    if-eqz p1, :cond_1ee

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Q:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->f:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-virtual {p0, v2, v1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->b(ZZ)V

    goto :goto_1ee

    :cond_1af
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p2, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:[I

    aget p3, p1, v1

    aget p4, p1, v2

    aget v0, p1, v0

    aget p1, p1, p5

    invoke-virtual {p2, p3, p4, v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;)V

    goto :goto_1ee

    :cond_1cf
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p2, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:[I

    aget p3, p1, v1

    aget p4, p1, v2

    aget v0, p1, v0

    aget p1, p1, p5

    invoke-virtual {p2, p3, p4, v0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;->a:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->show(Landroid/view/View;)V

    :cond_1ee
    :goto_1ee
    return-void
.end method
