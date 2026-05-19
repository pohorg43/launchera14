.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v1, :cond_3b

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->h(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->D:I

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->D:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$17;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3b
    return-void
.end method
