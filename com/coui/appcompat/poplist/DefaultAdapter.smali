.class public Lcom/coui/appcompat/poplist/DefaultAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final synthetic s:I


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Landroid/content/res/ColorStateList;

.field public i:I

.field public j:F

.field public k:F

.field public l:Landroid/view/View$AccessibilityDelegate;

.field public m:Z

.field public n:[I

.field public o:I

.field public p:I

.field public q:I

.field public r:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/poplist/PopupListItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->m:Z

    iput-object p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_padding_vertical:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_padding_top_and_bottom:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_min_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_content_min_width_with_checkbox:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->f:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_title_margin_left:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->g:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_item_title_text_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->j:F

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_divider_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->o:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_group_divider_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->p:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->coui_popup_list_window_margin_horizontal:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->q:I

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->k:F

    new-instance p2, Lcom/coui/appcompat/poplist/DefaultAdapter$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/poplist/DefaultAdapter$1;-><init>(Lcom/coui/appcompat/poplist/DefaultAdapter;)V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->l:Landroid/view/View$AccessibilityDelegate;

    const/4 p2, 0x2

    new-array p2, p2, [I

    sget v1, Lcom/support/appcompat/R$attr;->couiPopupListWindowTextColor:I

    aput v1, p2, v0

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPrimaryTextOnPopup:I

    const/4 v1, 0x1

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    sget v0, Lcom/support/appcompat/R$color;->coui_popup_list_window_text_color_light:I

    invoke-static {p2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->h:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$color;->coui_popup_list_selected_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->i:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static final b(I)Z
    .registers 1

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public final a(Landroid/view/View;III)Landroid/view/View;
    .registers 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_32

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForceDarkAllowed(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1, v0, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_32
    return-object p1
.end method

.method public c(I)Z
    .registers 6

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->n:[I

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    array-length v1, p0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_17

    aget v3, p0, v2

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    if-ne v3, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    return v0
.end method

.method public getCount()I
    .registers 1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    div-int/lit8 p1, p1, 0x2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 3

    invoke-static {p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->b(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->n:[I

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->c(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x2

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_55

    if-eq v0, v3, :cond_1d

    if-eq v0, v4, :cond_16

    const-string p0, "DefaultAdapter"

    const-string p1, "viewType error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_16
    iget p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->p:I

    invoke-virtual {p0, p2, p1, v2, v2}, Lcom/coui/appcompat/poplist/DefaultAdapter;->a(Landroid/view/View;III)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1d
    iget-object p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    sub-int/2addr p1, v3

    div-int/2addr p1, v4

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/PopupListItem;

    iget p3, p1, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    if-nez p3, :cond_32

    iget-object p3, p1, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_32

    iget p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->q:I

    goto :goto_4c

    :cond_32
    iget-object p3, p1, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_42

    iget-object p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p1, p1, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_42
    iget p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->q:I

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->g:I

    add-int/2addr p1, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    add-int/2addr p1, p3

    :goto_4c
    iget p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->o:I

    iget v0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->q:I

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/coui/appcompat/poplist/DefaultAdapter;->a(Landroid/view/View;III)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_55
    div-int/lit8 v0, p1, 0x2

    if-nez p2, :cond_f4

    new-instance p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;-><init>()V

    iget-object v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$layout;->coui_popup_list_window_item:I

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    sget v5, Lcom/support/appcompat/R$id;->popup_list_window_item_icon:I

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    sget v5, Lcom/support/appcompat/R$id;->popup_list_window_item_title:I

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p3, v3}, Landroid/view/View;->setClickable(Z)V

    new-instance v5, Lcom/coui/appcompat/poplist/DefaultAdapter$2;

    invoke-direct {v5, p0, p1}, Lcom/coui/appcompat/poplist/DefaultAdapter$2;-><init>(Lcom/coui/appcompat/poplist/DefaultAdapter;I)V

    invoke-virtual {p3, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    sget p1, Lcom/support/appcompat/R$id;->content:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    sget p1, Lcom/support/appcompat/R$id;->red_dot:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    sget p1, Lcom/support/appcompat/R$id;->checkbox:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    sget p1, Lcom/support/appcompat/R$id;->arrow:I

    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    iget-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    if-eqz p1, :cond_bd

    iget-object v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->l:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {p1, v5}, Landroid/widget/CheckBox;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_bd
    new-instance p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    invoke-direct {p1}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;-><init>()V

    iput-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->f:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iput v2, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->a:I

    const/16 v1, 0x32

    iput v1, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->b:I

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/support/appcompat/R$attr;->couiColorPressBackground:I

    invoke-static {v1, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, p3, v2, v1, v3}, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->a(Landroid/view/View;IIZ)V

    iget-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->f:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iget-object v1, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->f:Landroid/view/View;

    if-eqz v1, :cond_ec

    iget-object p1, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->p:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p2, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->f:Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;

    iput-boolean v2, p1, Lcom/coui/appcompat/list/COUIBackgroundAnimationUtil;->m:Z

    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object p1, p2

    move-object p2, p3

    goto :goto_fa

    :cond_ec
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must be called after the init method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;

    :goto_fa
    iget-object p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v3, :cond_121

    iget p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    mul-int/2addr v1, v4

    add-int/2addr v1, p3

    invoke-virtual {p2, v1}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    iget v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    iget v7, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v6, v7

    invoke-virtual {p2, p3, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_176

    :cond_121
    if-nez v0, :cond_13e

    iget p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    iget v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v1, v5

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    invoke-virtual {p2, p3, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_176

    :cond_13e
    iget-object p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v3

    if-ne v0, p3, :cond_162

    iget p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr p3, v1

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    iget v7, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->c:I

    add-int/2addr v6, v7

    invoke-virtual {p2, p3, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_176

    :cond_162
    iget p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->e:I

    invoke-virtual {p2, p3}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingStart()I

    move-result p3

    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    iget v6, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->d:I

    invoke-virtual {p2, p3, v1, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :goto_176
    iget-object p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-boolean p3, p3, Lcom/coui/appcompat/poplist/PopupListItem;->d:Z

    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, -0x1

    if-eqz p3, :cond_1c0

    iget-object v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/poplist/PopupListItem;

    iget-object v6, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->d:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget-object v7, v5, Lcom/coui/appcompat/poplist/PopupListItem;->l:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1a4

    invoke-virtual {v6, v4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, v5, Lcom/coui/appcompat/poplist/PopupListItem;->l:Ljava/lang/String;

    invoke-virtual {v6, v4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    goto :goto_1c0

    :cond_1a4
    iget v7, v5, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    invoke-virtual {v6, v7}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    iget v5, v5, Lcom/coui/appcompat/poplist/PopupListItem;->g:I

    if-eq v5, v1, :cond_1bd

    if-eqz v5, :cond_1b6

    invoke-virtual {v6, v4}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c0

    :cond_1b6
    invoke-virtual {v6, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c0

    :cond_1bd
    invoke-virtual {v6, v2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :cond_1c0
    :goto_1c0
    iget-object v4, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    iget-object v5, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, v6, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    const/16 v9, 0x8

    if-nez v8, :cond_1e0

    iget-object v8, v6, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1e0

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1fb

    :cond_1e0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v8, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->g:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v8, v6, Lcom/coui/appcompat/poplist/PopupListItem;->b:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_1f8

    iget-object v8, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v6, v6, Lcom/coui/appcompat/poplist/PopupListItem;->a:I

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_1f8
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1fb
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v6, Lcom/support/appcompat/R$style;->couiTextAppearanceBodyL:I

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v6, v5, Lcom/coui/appcompat/poplist/PopupListItem;->c:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, v5, Lcom/coui/appcompat/poplist/PopupListItem;->n:I

    if-eq v6, v1, :cond_21d

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_231

    :cond_21d
    iget-object v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, v5, Lcom/coui/appcompat/poplist/PopupListItem;->i:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_22a

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_231

    :cond_22a
    iget v1, v5, Lcom/coui/appcompat/poplist/PopupListItem;->j:I

    if-ltz v1, :cond_231

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_231
    :goto_231
    iget-boolean v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->m:Z

    if-eqz v1, :cond_23b

    const/high16 v1, 0x41800000  # 16.0f

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_247

    :cond_23b
    iget v1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->j:F

    iget v3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->k:F

    const/4 v5, 0x5

    invoke-static {v1, v3, v5}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->d(FFI)F

    move-result v1

    invoke-virtual {v4, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_247
    move-object v1, p2

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v3, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->c:Landroid/widget/CheckBox;

    iget-object v4, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/DefaultAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->b:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/poplist/PopupListItem;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupListItem;->a()Z

    move-result v5

    iget-boolean v6, v0, Lcom/coui/appcompat/poplist/PopupListItem;->e:Z

    if-eqz v6, :cond_2b0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result v6

    iget v7, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->f:I

    if-eq v6, v7, :cond_26b

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    :cond_26b
    if-eqz v5, :cond_274

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2c5

    :cond_274
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    if-eqz v1, :cond_27f

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_282

    :cond_27f
    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_282
    iget-object v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_289

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_289
    iget-boolean v1, v0, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v3, p3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-boolean p3, v0, Lcom/coui/appcompat/poplist/PopupListItem;->f:Z

    if-eqz p3, :cond_2c5

    iget p3, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->i:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {v3}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->i:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_2c5

    :cond_2b0
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMinimumWidth()I

    move-result p1

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter;->f:I

    if-ne p1, p0, :cond_2bb

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    :cond_2bb
    invoke-virtual {v3, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz v5, :cond_2c1

    goto :goto_2c2

    :cond_2c1
    move v2, v9

    :goto_2c2
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2c5
    :goto_2c5
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method
