.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->prepareNextAnimation(FFFFFI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

.field public final synthetic val$leftProgress:F

.field public final synthetic val$middleProgress:F

.field public final synthetic val$progress:F

.field public final synthetic val$rightProgress:F

.field public final synthetic val$state:I

.field public final synthetic val$zoomProgress:F


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;IFFFFF)V
    .registers 8

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$state:I

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$progress:F

    iput p4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$zoomProgress:F

    iput p5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$leftProgress:F

    iput p6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$rightProgress:F

    iput p7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$middleProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-boolean v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    if-eqz v0, :cond_29

    const-string p1, "changeAnimation already cancel"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$state:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nowState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$progress:F

    div-float/2addr p1, v0

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$zoomProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_46

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mZoomAnimation:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$ZoomAnimationProperty;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, p1, v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeProperty(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_46
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$leftProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_59

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeProperty(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_59
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$rightProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6c

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeProperty(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_6c
    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->val$middleProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7f

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$MiddleAnimation;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p1, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->changeProperty(FLandroid/view/SurfaceControl$Transaction;)V

    :cond_7f
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
