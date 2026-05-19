.class Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;
.super Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;
.source ""


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchBar$DefaultAnimatorListener;-><init>(Lcom/coui/appcompat/searchview/COUISearchBar$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    const/4 v0, 0x0

    iput v0, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget v2, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->q0:I

    const/high16 v3, 0x3f800000  # 1.0f

    if-nez v2, :cond_31

    iget v2, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->c:I

    iget v4, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->d:I

    sub-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_27

    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->b:I

    sub-int/2addr v4, v2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_27
    iget-object v1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iput v3, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->k0:F

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3b

    :cond_31
    const/4 v4, 0x1

    if-ne v2, v4, :cond_3b

    iput v3, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->l0:F

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3b
    :goto_3b
    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper$1;->a:Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->a:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->b:I

    :cond_1b
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->c:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchBar;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-boolean v0, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->o0:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/searchview/COUISearchBar;->m(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    iget-object p1, p1, Lcom/coui/appcompat/searchview/COUISearchBar;->p0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchBar$AnimatorHelper;->f:Lcom/coui/appcompat/searchview/COUISearchBar;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
