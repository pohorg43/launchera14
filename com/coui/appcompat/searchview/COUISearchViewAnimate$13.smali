.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

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

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    if-nez v1, :cond_16

    iget-object p0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_25

    :cond_16
    const/4 v2, 0x1

    if-ne v1, v2, :cond_25

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$13;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_25
    :goto_25
    return-void
.end method
