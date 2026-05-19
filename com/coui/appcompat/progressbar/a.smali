.class public final synthetic Lcom/coui/appcompat/progressbar/a;
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

    iput p2, p0, Lcom/coui/appcompat/progressbar/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/a;->b:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    iget v0, p0, Lcom/coui/appcompat/progressbar/a;->a:I

    const/high16 v1, 0x437f0000  # 255.0f

    const v2, 0x3f333333  # 0.7f

    const v3, 0x3e99999a  # 0.3f

    packed-switch v0, :pswitch_data_3c

    goto :goto_25

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/a;->b:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    iput v3, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->r:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->g:I

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void

    :goto_25
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/a;->b:Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;

    sget-object v0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->X:Landroid/view/animation/Interpolator;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->f:I

    mul-float/2addr p1, v3

    add-float/2addr p1, v2

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->q:F

    invoke-virtual {p0}, Lcom/coui/appcompat/progressbar/COUICircularProgressDrawable;->invalidateSelf()V

    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_e  #00000000
    .end packed-switch
.end method
