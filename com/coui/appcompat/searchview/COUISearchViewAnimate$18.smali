.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

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

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget v1, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v1, :cond_19

    iget-object p0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    sub-float/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_29

    :cond_19
    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    sub-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$18;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setAlpha(F)V

    :cond_29
    :goto_29
    return-void
.end method
