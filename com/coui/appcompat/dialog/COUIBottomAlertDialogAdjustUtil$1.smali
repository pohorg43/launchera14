.class Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;


# instance fields
.field public final synthetic a:Landroid/view/Window;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/graphics/Point;

.field public final synthetic d:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a:Landroid/view/Window;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->c:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->d:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a:Landroid/view/Window;

    sget v1, Lcom/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v3, :cond_60

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$dimen;->coui_dialog_max_width_in_bottom_free:I

    invoke-static {v0, v5, v3}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->b(Landroid/view/Window;II)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v5, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_four:I

    invoke-static {v0, v5, v3}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->b(Landroid/view/Window;II)I

    move-result v3

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_2b

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    mul-int/lit8 v6, v3, 0x2

    invoke-virtual {v5, v3, v3, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_2b
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$color;->coui_dialog_follow_hand_spot_shadow_color:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_for_lowerP:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/coui/appcompat/uiutil/UIUtil;->l(Landroid/view/View;III)V

    sget v3, Lcom/support/appcompat/R$drawable;->coui_alert_dialog_builder_background:I

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_59

    if-nez v3, :cond_54

    goto :goto_59

    :cond_54
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v0, 0x0

    :goto_5a
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_60
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a:Landroid/view/Window;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->c:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->d:Landroid/graphics/Point;

    invoke-static {v0, v2, v3, v4}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->a(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->a:Landroid/view/Window;

    new-instance v2, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;-><init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v0, :cond_7f

    check-cast p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    invoke-virtual {p0, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setOnSizeChangeListener(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout$OnSizeChangeListener;)V

    :cond_7f
    return-void
.end method
