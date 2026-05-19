.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->i0:F

    const-string v0, "narrowHolderX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "narrowHolderY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "narrowHolderFont"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ba3d70a  # 0.005f

    mul-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5f

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5f

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    :cond_5f
    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;->a:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->n0:I

    float-to-double v0, v1

    add-double/2addr v0, v4

    double-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->m0:I

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->o0:F

    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method
