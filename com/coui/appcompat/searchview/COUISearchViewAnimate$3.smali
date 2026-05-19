.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object v2, v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->max(FF)F

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->i:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
