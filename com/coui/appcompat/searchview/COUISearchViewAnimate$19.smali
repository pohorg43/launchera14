.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    sget-object p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->v0:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    iget v1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->V:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    iput-boolean v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->g0:Z

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->n:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_23

    :cond_1b
    if-nez v1, :cond_23

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->m:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_23
    :goto_23
    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->s()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->e(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    move-result-object p1

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    const-string p1, ""

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->l:Lcom/coui/appcompat/searchview/COUISearchView;

    invoke-virtual {p1}, Lcom/coui/appcompat/searchview/COUISearchView;->getSearchAutoComplete()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->o(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$19;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 p1, 0x1

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->d(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;II)V

    return-void
.end method
