.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    sget-object p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v0:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    iget v1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    iput-boolean v2, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g0:Z

    :cond_c
    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->b(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    iget v1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-boolean v1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->r0:Z

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1, v0, v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;II)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$15;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->N:I

    return-void
.end method
