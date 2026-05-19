.class public Lcom/coui/appcompat/poplist/COUIPopupListWindow;
.super Lcom/coui/appcompat/poplist/COUIPopupWindow;
.source ""

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field public static final Y:Z


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Z

.field public G:[I

.field public H:Z

.field public N:Z

.field public O:Landroid/view/View;

.field public P:I

.field public Q:Landroid/view/View;

.field public R:I

.field public S:I

.field public T:[I

.field public U:I

.field public V:I

.field public W:Landroid/view/animation/Animation$AnimationListener;

.field public final X:Landroid/widget/AdapterView$OnItemClickListener;

.field public a:Landroid/content/Context;

.field public b:Lcom/coui/appcompat/poplist/DefaultAdapter;

.field public c:Landroid/widget/BaseAdapter;

.field public d:Landroid/view/View;

.field public e:Landroid/graphics/Rect;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public g:Landroid/view/ViewGroup;

.field public h:Landroid/widget/ListView;

.field public i:Landroid/widget/ListView;

.field public j:Landroid/widget/AdapterView$OnItemClickListener;

.field public k:[I

.field public l:I

.field public m:Z

.field public n:Lcom/coui/appcompat/poplist/COUIPopupListWindow;

.field public o:Lcom/coui/appcompat/poplist/COUISubMenuClickListener;

.field public p:I

.field public q:F

.field public r:F

.field public s:I

.field public t:I

.field public u:Landroid/view/animation/Interpolator;

.field public v:Landroid/view/animation/Interpolator;

.field public w:Z

.field public x:Landroid/graphics/Point;

.field public y:Landroid/graphics/Rect;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    const-string v1, "COUIPopupListWindow"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Y:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:[I

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->m:Z

    iput v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->p:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/graphics/Point;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->G:[I

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->H:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->N:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->U:I

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->V:I

    new-instance v3, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$1;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    iput-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->W:Landroid/view/animation/Animation$AnimationListener;

    new-instance v3, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;

    invoke-direct {v3, p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow$2;-><init>(Lcom/coui/appcompat/poplist/COUIPopupListWindow;)V

    iput-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->X:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_min_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->l:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_icon_extra_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->A:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_max_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->P:I

    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->i:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->i:Landroid/widget/ListView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    sget v2, Lcom/support/appcompat/R$layout;->coui_popup_list_window_layout:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    sget v3, Lcom/support/appcompat/R$id;->coui_popup_list_view:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    new-array v5, v0, [I

    sget v6, Lcom/support/appcompat/R$attr;->couiPopupWindowBackground:I

    aput v6, v5, v1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_b8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$drawable;->coui_popup_window_background:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_b8
    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    if-eqz v3, :cond_e8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_margin_horizontal:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->B:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_margin_bottom_new:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->C:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_margin_top:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->D:I

    :cond_e8
    sget v3, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {p1, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->c(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->E:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/appcompat/R$dimen;->coui_popup_list_divider_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->S:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/appcompat/R$dimen;->coui_popup_list_group_divider_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->R:I

    iget-boolean v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    if-nez v3, :cond_14a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_three:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_margin_bottom:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_margin_top:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iget-object v8, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    invoke-virtual {v8, v3, v7, v3, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/appcompat/R$color;->coui_popup_outline_spot_shadow_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/coui/appcompat/uiutil/UIUtil;->k(Landroid/view/View;II)V

    :cond_14a
    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    check-cast v3, Lcom/coui/appcompat/list/COUIForegroundListView;

    iget v5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->E:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/coui/appcompat/list/COUIForegroundListView;->setRadius(F)V

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$integer;->coui_animation_time_move_veryfast:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->s:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->t:I

    sget v2, Lcom/support/appcompat/R$anim;->coui_curve_opacity_inout:I

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->u:Landroid/view/animation/Interpolator;

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->v:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    iget-boolean v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    if-nez v2, :cond_190

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_193

    :cond_190
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setElevationInPopupwindow(Z)V

    :goto_193
    sget v0, Lcom/support/appcompat/R$dimen;->coui_poup_list_margin_type_toolbar:I

    sget-object v1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->b:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(Landroid/content/Context;ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    sget v0, Lcom/support/appcompat/R$dimen;->coui_poup_list_margin_type_navigation:I

    sget-object v1, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;->c:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    invoke-virtual {p0, p1, v0, v1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(Landroid/content/Context;ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_ef

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez v1, :cond_9

    goto/16 :goto_ef

    :cond_9
    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h(Landroid/view/View;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c:Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->j:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->X:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_22
    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:[I

    aget v2, v1, v0

    neg-int v2, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    neg-int v1, v1

    invoke-static {p1, v2, v1}, Lcom/coui/appcompat/uiutil/FollowHandManager;->h(Landroid/view/View;II)V

    iget-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    if-eqz p1, :cond_51

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->B:I

    iget v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->D:I

    iget v4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->C:I

    invoke-direct {p1, v1, v2, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    :cond_51
    iget-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->z:Z

    if-eqz p1, :cond_71

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_71

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Landroid/graphics/Rect;

    sput-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    :cond_71
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->d(Landroid/view/View;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->a(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z

    move-result v1

    if-eqz v1, :cond_e6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Landroid/graphics/Rect;

    if-eqz v1, :cond_8b

    goto :goto_8d

    :cond_8b
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    :goto_8d
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {v4, p1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->e(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result v4

    sget-object v5, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->c:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$Companion;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v5, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->d:I

    if-ne v4, v5, :cond_c1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v0, v4, p1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->c(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    iget-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    if-eqz p1, :cond_de

    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->D:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_de

    :cond_c1
    iget-object v4, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v4, v5, p1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->c(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v1, Landroid/graphics/Rect;->top:I

    iget-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    if-eqz p1, :cond_de

    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    :cond_de
    :goto_de
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Landroid/graphics/Rect;

    if-eqz p1, :cond_e4

    iput-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->y:Landroid/graphics/Rect;

    :cond_e4
    sput-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    :cond_e6
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    return v3

    :cond_ef
    :goto_ef
    return v0
.end method

.method public final b()I
    .registers 3

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->b()I

    move-result p0

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->c()I

    move-result v0

    sub-int/2addr p0, v0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public final c()I
    .registers 4

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    sget-object v0, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->P:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public d(Z)V
    .registers 13

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c:Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_18
    if-ge v5, v4, :cond_75

    invoke-static {v5}, Lcom/coui/appcompat/poplist/DefaultAdapter;->b(I)Z

    move-result v8

    if-eqz v8, :cond_60

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->i:Landroid/widget/ListView;

    invoke-interface {v0, v5, v8, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    instance-of v9, v9, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v9, :cond_40

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v9, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v10, -0x2

    if-eq v9, v10, :cond_40

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    :cond_40
    invoke-virtual {v8, v1, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    if-le v9, v6, :cond_4e

    move v6, v9

    :cond_4e
    iget v9, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->U:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_71

    sget v10, Lcom/coui/appcompat/poplist/DefaultAdapter;->s:I

    div-int/lit8 v10, v5, 0x2

    add-int/lit8 v9, v9, -0x1

    if-ge v10, v9, :cond_5c

    goto :goto_71

    :cond_5c
    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    goto :goto_75

    :cond_60
    iget-object v8, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    instance-of v9, v8, Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-eqz v9, :cond_6f

    invoke-virtual {v8, v5}, Lcom/coui/appcompat/poplist/DefaultAdapter;->c(I)Z

    move-result v8

    if-eqz v8, :cond_6f

    iget v8, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->R:I

    goto :goto_71

    :cond_6f
    iget v8, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->S:I

    :cond_71
    :goto_71
    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b()I

    move-result v0

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->b()I

    move-result v1

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    iget-boolean v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->m:Z

    if-eqz v3, :cond_91

    if-le v0, v1, :cond_91

    move v0, v1

    :cond_91
    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p1, :cond_da

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->f()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->e()I

    move-result v1

    goto :goto_b4

    :cond_b0
    sget-object v1, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_b4
    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_c5

    move v3, v4

    goto :goto_c6

    :cond_c5
    move v3, v2

    :goto_c6
    if-eqz v3, :cond_cf

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->c:[I

    aget v3, v3, v4

    add-int/2addr v1, v3

    :cond_cf
    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/coui/appcompat/uiutil/UIUtil;->f(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_da
    iget-boolean v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->N:Z

    if-eqz v1, :cond_11f

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/poplist/PopupListItem;

    iget v4, v3, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    if-nez v4, :cond_105

    iget-object v4, v3, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_f9

    goto :goto_105

    :cond_f9
    iget-object v3, v3, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_e4

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->A:I

    goto :goto_11e

    :cond_105
    :goto_105
    iget-object v1, v3, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_115

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v3, v3, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_115
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->A:I

    add-int/2addr v1, v3

    goto :goto_11e

    :cond_11d
    move v1, v2

    :goto_11e
    add-int/2addr v6, v1

    :cond_11f
    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->l:I

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->c()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1a7

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_13f

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    if-eq v1, v3, :cond_1a7

    :cond_13f
    if-eqz p1, :cond_196

    sget-object p1, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    sget-object v2, Lcom/coui/appcompat/uiutil/FollowHandManager;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->C:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    if-eqz v3, :cond_159

    iget v3, v3, Landroid/graphics/Rect;->right:I

    goto :goto_15d

    :cond_159
    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_15d
    sget-object v4, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    sget-object v4, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->f:Landroid/graphics/Rect;

    if-eqz v3, :cond_177

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_17b

    :cond_177
    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    :goto_17b
    sget-object v4, Lcom/coui/appcompat/uiutil/FollowHandManager;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    sget-object v4, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, p1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v2, v1, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1a7

    :cond_196
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1, v0, v2}, Lcom/coui/appcompat/uiutil/FollowHandManager;->a(Landroid/content/Context;IIZ)Landroid/graphics/Point;

    move-result-object p1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_1a7
    :goto_1a7
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method public dismiss()V
    .registers 4

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->w:Z

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-nez v0, :cond_2d

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->t:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->v:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->W:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_30

    :cond_2d
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->i()V

    :goto_30
    return-void
.end method

.method public final e()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    if-nez v0, :cond_14

    new-instance v0, Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/poplist/DefaultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->h:Landroid/widget/ListView;

    iput-object p0, v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->r:Landroid/widget/ListView;

    goto :goto_1b

    :cond_14
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    iput-object p0, v0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_1b
    return-void
.end method

.method public f(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_a2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->e()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v0

    :goto_15
    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v1, :cond_44

    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v7, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v7, v4, :cond_42

    iget v7, v6, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    if-gez v7, :cond_2e

    goto :goto_42

    :cond_2e
    if-eqz v3, :cond_3d

    add-int/lit8 v4, v1, -0x1

    if-gt v3, v4, :cond_3d

    if-eq v7, v2, :cond_3d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    iget v2, v6, Lcom/coui/appcompat/poplist/PopupListItem;->o:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_42
    :goto_42
    move v1, v0

    goto :goto_45

    :cond_44
    move v1, v5

    :goto_45
    if-eqz v1, :cond_a2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    move v3, v0

    :goto_54
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_69

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_69
    iput-object v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->T:[I

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    instance-of p1, p1, Lcom/coui/appcompat/poplist/DefaultAdapter;

    const-string v3, "COUIPopupListWindow"

    if-eqz p1, :cond_9d

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v4, :cond_9d

    move p1, v0

    :goto_7c
    if-ge p1, v1, :cond_8e

    aget v4, v2, p1

    if-lez v4, :cond_8a

    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v4, v6, :cond_8b

    :cond_8a
    move v5, v0

    :cond_8b
    add-int/lit8 p1, p1, 0x1

    goto :goto_7c

    :cond_8e
    if-eqz v5, :cond_97

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->b:Lcom/coui/appcompat/poplist/DefaultAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->T:[I

    iput-object p0, p1, Lcom/coui/appcompat/poplist/DefaultAdapter;->n:[I

    goto :goto_a2

    :cond_97
    const-string p0, "The group ID needs to be between [1, total number of menuCount-1]. If it exceeds the range, the setting will fail."

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :cond_9d
    const-string p0, "A minimum of four menus are required to group"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a2
    :goto_a2
    return-void
.end method

.method public g(IIII)V
    .registers 6

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->k:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    const/4 p1, 0x2

    aput p3, p0, p1

    const/4 p1, 0x3

    aput p4, p0, p1

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .registers 3

    :goto_0
    if-eqz p1, :cond_1b

    instance-of v0, p1, Landroidx/recyclerview/widget/COUIRecyclerView;

    if-eqz v0, :cond_9

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->O:Landroid/view/View;

    goto :goto_1b

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_18
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->O:Landroid/view/View;

    :cond_1b
    :goto_1b
    return-void
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_b
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->setContentView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 11

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p3, 0x2

    new-array p4, p3, [I

    iget-object p5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    if-eqz p5, :cond_1d

    new-array p6, p3, [I

    invoke-virtual {p5, p6}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p5, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object p7, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p5, p6, p4, p7}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->f([I[ILandroid/view/View;)V

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p5

    if-eqz p5, :cond_d8

    iget-object p5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->G:[I

    iget-object p6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->O:Landroid/view/View;

    const-string p7, "COUIPopupListWindow"

    const/4 p8, 0x1

    const/4 p9, 0x0

    if-eqz p6, :cond_96

    sget-boolean p6, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Y:Z

    if-eqz p6, :cond_6d

    const-string p6, "isRebound oldPoint:"

    invoke-static {p6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-static {p5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",newPoint:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",mReboundView.getScrollY():"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mReboundView.getScrollX():"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->O:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p7, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    iget-object p6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->O:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getScrollY()I

    move-result p6

    if-nez p6, :cond_94

    iget-object p6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->O:Landroid/view/View;

    invoke-virtual {p6}, Landroid/view/View;->getScrollX()I

    move-result p6

    if-eqz p6, :cond_7e

    goto :goto_94

    :cond_7e
    aget p6, p4, p9

    aget v0, p5, p9

    sub-int/2addr p6, v0

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p6

    if-gt p6, p8, :cond_96

    aget p6, p4, p8

    aget p5, p5, p8

    sub-int/2addr p6, p5

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p5

    if-gt p5, p8, :cond_96

    :cond_94
    :goto_94
    move p5, p8

    goto :goto_97

    :cond_96
    move p5, p9

    :goto_97
    if-nez p5, :cond_d8

    iget-boolean p5, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->H:Z

    if-eqz p5, :cond_d8

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->G:[I

    aget p1, p1, p9

    aget p2, p4, p9

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, p3, :cond_bd

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->G:[I

    aget p1, p1, p8

    aget p2, p4, p8

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, p3, :cond_c9

    :cond_bd
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->G:[I

    aget p2, p1, p9

    if-eqz p2, :cond_c9

    aget p1, p1, p8

    if-nez p1, :cond_c8

    goto :goto_c9

    :cond_c8
    move p8, p9

    :cond_c9
    :goto_c9
    if-nez p8, :cond_d8

    sget-boolean p1, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->Y:Z

    if-eqz p1, :cond_d4

    const-string p1, "onLayoutChange dismiss"

    invoke-static {p7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    goto :goto_da

    :cond_d8
    iput-object p4, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->G:[I

    :goto_da
    return-void
.end method

.method public show(Landroid/view/View;)V
    .registers 16

    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    const-string v1, "COUIPopupListWindow"

    if-nez v0, :cond_c

    const-string p0, " The context of COUIPopupListWindow is null "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    if-eqz p1, :cond_159

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_159

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1c

    goto/16 :goto_159

    :cond_1c
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a(Landroid/view/View;Z)Z

    move-result p1

    if-nez p1, :cond_24

    return-void

    :cond_24
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    invoke-static {p1, v2, v3, v0}, Lcom/coui/appcompat/uiutil/FollowHandManager;->a(Landroid/content/Context;IIZ)Landroid/graphics/Point;

    move-result-object p1

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->F:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_4e

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->c()I

    move-result v3

    sget-object v6, Lcom/coui/appcompat/uiutil/FollowHandManager;->h:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v6

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_92

    :cond_4e
    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v3, v6}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->d(Landroid/view/View;)Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;

    move-result-object v3

    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {v6, v3}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->a(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Z

    move-result v6

    if-eqz v6, :cond_92

    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {p0, v6, v3}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->getAnchorViewSpacing(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v8, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v7, v8, v3}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->c(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)Landroid/view/View;

    move-result-object v3

    new-array v7, v5, [I

    invoke-virtual {v3, v7}, Landroid/view/View;->getLocationInWindow([I)V

    aget v8, v7, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v8

    if-lt p1, v9, :cond_82

    aget p1, v7, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr p1, v3

    goto :goto_92

    :cond_82
    aget p1, v7, v4

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr p1, v3

    sub-int/2addr p1, v6

    sget-object v3, Lcom/coui/appcompat/uiutil/FollowHandManager;->a:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_92
    :goto_92
    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/graphics/Point;

    invoke-virtual {v3, v2, p1}, Landroid/graphics/Point;->set(II)V

    new-array v3, v5, [I

    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v6, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    iget-object v7, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->G:[I

    iget-object v8, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-virtual {v6, v3, v7, v8}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->f([I[ILandroid/view/View;)V

    iget-object v3, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/coui/appcompat/uiutil/UIUtil;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_c1

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_bb

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_c1

    :cond_bb
    const-string p1, " The activity of COUIPopupListWindow is finish or destroyed"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c6

    :cond_c1
    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->d:Landroid/view/View;

    invoke-super {p0, v1, v0, v2, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_c6
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    div-int/2addr v1, v5

    add-int/2addr v1, p1

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->d()I

    move-result p1

    const/high16 v2, 0x3f000000  # 0.5f

    if-ne v1, p1, :cond_db

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->q:F

    goto :goto_ea

    :cond_db
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->d()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    add-float/2addr p1, v2

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->q:F

    :goto_ea
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->e()I

    move-result v1

    const/4 v2, 0x0

    if-lt p1, v1, :cond_f8

    iput v2, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->r:F

    goto :goto_10a

    :cond_f8
    invoke-static {}, Lcom/coui/appcompat/uiutil/FollowHandManager;->e()I

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->x:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->r:F

    :goto_10a
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result p1

    if-eqz p1, :cond_111

    goto :goto_112

    :cond_111
    move v4, v0

    :goto_112
    if-eqz v4, :cond_115

    goto :goto_158

    :cond_115
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const v6, 0x3f666666  # 0.9f

    const/high16 v1, 0x3f800000  # 1.0f

    const v8, 0x3f666666  # 0.9f

    const/high16 v9, 0x3f800000  # 1.0f

    const/4 v10, 0x1

    iget v11, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->q:F

    const/4 v12, 0x1

    iget v13, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->r:F

    const/high16 v7, 0x3f800000  # 1.0f

    move-object v5, p1

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->s:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->u:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->t:I

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->v:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_158
    return-void

    :cond_159
    :goto_159
    const-string p0, " COUIPopupListWindow\'s anchor state is wrong "

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
