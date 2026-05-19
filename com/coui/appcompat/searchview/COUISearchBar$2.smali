.class Lcom/coui/appcompat/searchview/COUISearchBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    sget-object p0, Lcom/coui/appcompat/searchview/COUISearchBar;->r0:Landroid/view/animation/Interpolator;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    const/4 p0, 0x0

    throw p0
.end method
