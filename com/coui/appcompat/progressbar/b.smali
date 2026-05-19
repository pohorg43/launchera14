.class public final synthetic Lcom/coui/appcompat/progressbar/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;I)V
    .registers 3

    iput p2, p0, Lcom/coui/appcompat/progressbar/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/b;->b:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    iget v0, p0, Lcom/coui/appcompat/progressbar/b;->a:I

    const/high16 v1, 0x3f800000  # 1.0f

    packed-switch v0, :pswitch_data_c6

    goto/16 :goto_af

    :pswitch_9  #0x0
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/b;->b:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v0

    sub-float/2addr v1, p1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v3, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v2

    sub-float/2addr v3, v2

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v4, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d:F

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->a()F

    move-result v2

    sub-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v5, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v2

    sub-float/2addr v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v5, v0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v6, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c:F

    invoke-virtual {v2}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->b()F

    move-result v2

    sub-float/2addr v6, v2

    mul-float/2addr v6, v1

    add-float/2addr v6, v0

    sget-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->b0:Landroid/animation/ArgbEvaluator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v1, v1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v2, v2, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v7, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iget v7, v7, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->k:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, p1, v2, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {v0, v5}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->j:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput p1, v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v4}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->c(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    invoke-virtual {p1, v6}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->d(F)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->i:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;

    iput v1, p1, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable$ProgressBarStyleProperty;->j:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void

    :goto_af
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/b;->b:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x437f0000  # 255.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->b:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void

    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_9  #00000000
    .end packed-switch
.end method
