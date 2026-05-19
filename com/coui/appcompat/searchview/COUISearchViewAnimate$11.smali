.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$11;->a:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->H:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->N:I

    return-void
.end method
