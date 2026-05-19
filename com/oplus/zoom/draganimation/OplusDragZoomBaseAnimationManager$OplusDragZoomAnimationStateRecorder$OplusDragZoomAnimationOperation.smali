.class public Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusDragZoomAnimationOperation"
.end annotation


# instance fields
.field public mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

.field public mNextTransferAnimation:Landroid/animation/ValueAnimator;

.field public mZoomAnimationStateRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mZoomAnimationStateRecorder:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    return-void
.end method


# virtual methods
.method public cancleCurrentAnimation()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->isCurrentAnimationRun()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public isCurrentAnimationRun()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public startNextAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCancleCurrentAnimation:Z

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->clone()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mCurrentTransferAnimation:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;->mNextTransferAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
