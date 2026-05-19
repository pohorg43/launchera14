.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Landroid/animation/AnimatorSet;

.field public final synthetic b:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;Landroid/animation/AnimatorSet;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iput-object p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->a:Landroid/animation/AnimatorSet;

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

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget v0, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->n:I

    if-eqz v0, :cond_16

    iget-object v0, p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->k:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_16
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;->b:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->g:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    if-eqz p0, :cond_1f

    invoke-interface {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;->a()V

    :cond_1f
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
