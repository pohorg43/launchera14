.class Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->startTransferToNormalAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

.field public final synthetic val$currentCrop:Landroid/graphics/Rect;

.field public final synthetic val$currentPosition:Landroid/graphics/Point;

.field public final synthetic val$normalFinalCrop:Landroid/graphics/Rect;

.field public final synthetic val$normalFinalPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$normalFinalCrop:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$currentCrop:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$normalFinalPosition:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$currentPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$normalFinalCrop:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$currentCrop:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$normalFinalPosition:Landroid/graphics/Point;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->val$currentPosition:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, p1

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    mul-float/2addr v2, p1

    int-to-float p1, v6

    add-float/2addr v2, p1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v1, :cond_5a

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    goto :goto_5c

    :cond_5a
    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    :goto_5c
    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v0, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$1;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_7a
    return-void
.end method
