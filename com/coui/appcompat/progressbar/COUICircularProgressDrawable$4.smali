.class Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->W:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;->g()V

    :cond_10
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$4;->a:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->W:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$OnProgressStateAnimatorListener;->b()V

    :cond_10
    return-void
.end method
