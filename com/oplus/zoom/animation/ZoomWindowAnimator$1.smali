.class Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/animation/ZoomWindowAnimator;->startAnimation(Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/graphics/Rect;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

.field public final synthetic val$callback:Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;

.field public final synthetic val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

.field public final synthetic val$leash:Landroid/view/SurfaceControl;

.field public final synthetic val$taskBound:Landroid/graphics/Rect;

.field public final synthetic val$transaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;Landroid/graphics/Rect;)V
    .registers 7

    iput-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    iput-object p2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iput-object p3, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$callback:Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;

    iput-object p6, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$taskBound:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1, v0}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$400(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    invoke-static {p1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$100(Lcom/oplus/zoom/animation/ZoomWindowAnimator;)Lcom/oplus/zoom/transition/ZoomTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->isForceHideZoomWindow()Z

    move-result p1

    if-nez p1, :cond_23

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getFinishAlpha()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_23
    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$callback:Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0, v1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;->onAnimationCancel(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string v0, "onAnimationEnd "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomAnimation"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$002(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Z)Z

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$callback:Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0, v2}, Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;->onAnimationEnd(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1, v0}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$400(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-static {v1}, Lcom/oplus/zoom/common/ZoomUtil;->setAnimationThreadUx(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$002(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Z)Z

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iget v0, p1, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->type:I

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_62

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    iget-object v2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getStartRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getStartScale()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getStartScale()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    invoke-static {p1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$100(Lcom/oplus/zoom/animation/ZoomWindowAnimator;)Lcom/oplus/zoom/transition/ZoomTransitionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/transition/ZoomTransitionManager;->isForceHideZoomWindow()Z

    move-result p1

    if-nez p1, :cond_53

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getStartAlpha()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_53
    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$callback:Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0, v1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;->onAnimationStart(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_d9

    :cond_62
    iget-object p1, p1, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iget-object v0, v0, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$taskBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iget v2, v2, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$taskBound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iget v3, v3, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->startScale:F

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopLimitInZoom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v1}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getStartScale()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    invoke-virtual {v2}, Lcom/oplus/zoom/animation/ZoomAnimationInfo;->getStartScale()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->this$0:Lcom/oplus/zoom/animation/ZoomWindowAnimator;

    invoke-static {p1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$200(Lcom/oplus/zoom/animation/ZoomWindowAnimator;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$info:Lcom/oplus/zoom/animation/ZoomAnimationInfo;

    iget-object v2, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$taskBound:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/oplus/zoom/animation/ZoomWindowAnimator;->access$300(Lcom/oplus/zoom/animation/ZoomWindowAnimator;Landroid/content/Context;Lcom/oplus/zoom/animation/ZoomAnimationInfo;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$callback:Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;

    iget-object v0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$leash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {p1, v0, v1}, Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;->onAnimationStart(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    iget-object p1, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$transaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p0, p0, Lcom/oplus/zoom/animation/ZoomWindowAnimator$1;->val$callback:Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;

    invoke-interface {p0}, Lcom/oplus/zoom/animation/ZoomWindowAnimator$ZoomAnimationCallback;->notifyReleaseDragBg()V

    :goto_d9
    return-void
.end method
