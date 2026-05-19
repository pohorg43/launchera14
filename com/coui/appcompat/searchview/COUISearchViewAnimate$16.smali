.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v1, :cond_30

    iget v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->N:I

    iget v2, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->O:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget v3, v2, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    sub-int v3, p1, v3

    add-int/2addr v3, v1

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    :cond_30
    return-void
.end method
