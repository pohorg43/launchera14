.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->h:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;->b()V

    :cond_9
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;->a:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->h:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;->f()V

    :cond_9
    return-void
.end method
