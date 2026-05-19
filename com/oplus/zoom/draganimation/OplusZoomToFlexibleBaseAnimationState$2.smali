.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_40

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2$1;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2$1;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCOUIMoveEaseInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2$2;

    invoke-direct {v1, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2$2;-><init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$2;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_40
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method
