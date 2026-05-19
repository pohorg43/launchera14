.class Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->startHideDimAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$5;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

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

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$5;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    const/high16 v2, 0x3f800000  # 1.0f

    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    sub-float v3, v2, p1

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_1d
    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$5;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    sub-float/2addr v2, p1

    invoke-virtual {v0, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
