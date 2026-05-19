.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;Landroid/view/View;II)V
    .registers 5

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->b:I

    iput p4, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    sget v2, Lcom/support/panel/R$id;->coui_panel_content_layout:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->b:I

    const/4 v3, 0x0

    if-lez v2, :cond_34

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->c:I

    if-lt p1, v2, :cond_34

    if-eqz v1, :cond_34

    sub-int/2addr p1, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v1, v3, v3, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    move p1, v2

    :cond_34
    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    instance-of v4, v2, Lcom/coui/appcompat/panel/IgnoreWindowInsetsFrameLayout;

    if-eqz v4, :cond_47

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_47

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_53

    :cond_47
    instance-of v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_53

    move-object v4, v0

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR$1;->a:Landroid/view/View;

    instance-of p0, p0, Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    const/4 p1, 0x3

    if-eqz p0, :cond_64

    sget p0, Lcom/support/appcompat/R$id;->design_bottom_sheet:I

    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1, v3}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    goto :goto_67

    :cond_64
    invoke-static {v1, p1, v3}, Lcom/coui/appcompat/panel/COUIViewMarginUtil;->b(Landroid/view/View;II)V

    :cond_67
    :goto_67
    return-void
.end method
