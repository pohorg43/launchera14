.class Lcom/coui/appcompat/lockview/COUISimpleLock$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/lockview/COUISimpleLock;->a()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Lcom/coui/appcompat/lockview/COUISimpleLock;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUISimpleLock;Landroid/animation/ValueAnimator;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iput-object p2, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->a:Landroid/animation/ValueAnimator;

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

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->setInternalTranslationX(F)V

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->o:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 v0, 0x5

    iput v0, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->p:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/lockview/COUISimpleLock;->setInternalTranslationX(F)V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->o:Z

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->r:Z

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iget-object p1, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iget-boolean v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->y:Z

    if-nez v1, :cond_34

    iget-boolean v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:Z

    if-eqz v1, :cond_36

    iget-boolean v1, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->F:Z

    if-eqz v1, :cond_2a

    const/16 v1, 0x130

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_2f

    :cond_2a
    const/16 v1, 0x12c

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_2f
    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock$7;->b:Lcom/coui/appcompat/lockview/COUISimpleLock;

    iput-boolean v0, p0, Lcom/coui/appcompat/lockview/COUISimpleLock;->E:Z

    goto :goto_36

    :cond_34
    iput-boolean v0, p1, Lcom/coui/appcompat/lockview/COUISimpleLock;->y:Z

    :cond_36
    :goto_36
    return-void
.end method
