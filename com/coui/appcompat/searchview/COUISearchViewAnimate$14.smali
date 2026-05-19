.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    iput-boolean v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g0:Z

    :cond_9
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$14;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
