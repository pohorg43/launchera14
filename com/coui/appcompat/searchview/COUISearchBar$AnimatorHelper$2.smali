.class Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;
.super Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget v2, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    const/4 v3, 0x0

    if-nez v2, :cond_25

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_20

    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->b:I

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_20
    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iput v3, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->k0:F

    goto :goto_2a

    :cond_25
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2a

    iput v3, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->l0:F

    :cond_2a
    :goto_2a
    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$2;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchBar;->f:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar;->m(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchBar;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
