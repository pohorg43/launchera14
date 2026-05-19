.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-static {p1, v0, v1}, Lcom/oplus/zoom/draganimation/OplusFlexibleWindowAnimationUtils;->calculationStep(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2$1;->this$1:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
