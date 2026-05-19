.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->prepareNextAnimation(FFFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

.field public final synthetic val$fullProgress:F

.field public final synthetic val$progress:F

.field public final synthetic val$replaceProgress:F

.field public final synthetic val$state:I

.field public final synthetic val$zoomProgress:F


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;IFFFF)V
    .registers 7

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$state:I

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$progress:F

    iput p4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$zoomProgress:F

    iput p5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$fullProgress:F

    iput p6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$replaceProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    if-eqz v0, :cond_29

    const-string p1, "changeAnimation already cancel:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$state:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " before cancel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$progress:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$zoomProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, p1, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeProperty(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_46
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$fullProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_59

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeProperty(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_59
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->val$replaceProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeProperty(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_6c
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
