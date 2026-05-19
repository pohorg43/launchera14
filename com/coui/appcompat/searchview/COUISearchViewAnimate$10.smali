.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v:Z

    invoke-static {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->c(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$10;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
