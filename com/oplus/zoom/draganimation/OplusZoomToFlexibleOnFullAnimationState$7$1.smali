.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sub-float/2addr v1, p1

    const/high16 p1, 0x43960000  # 300.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$800(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->isAnimationPropertyLegally(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$800(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v0

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_46
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$900(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->isAnimationPropertyLegally(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$7;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$900(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mDimForBackSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_67
    return-void
.end method
