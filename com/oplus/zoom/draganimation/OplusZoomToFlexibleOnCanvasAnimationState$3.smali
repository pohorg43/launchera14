.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$zoomProgress:F

    iput p4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$leftProgress:F

    iput p5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$rightProgress:F

    iput p6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$middleProgress:F

    iput p7, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$progress:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "### transferAnimation Cancel:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    const-string v1, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "changeAnimation end to:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    const-string v1, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-boolean p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    const/4 v0, 0x1

    if-nez p1, :cond_28

    const-string p1, "changeAnimation normal end to:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    invoke-static {p1, v2, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    goto :goto_41

    :cond_28
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    const/16 v2, 0xd

    if-ne p1, v2, :cond_41

    const-string p1, "changeAnimation cancel end to:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    invoke-static {p1, v2, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget v2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    :cond_41
    :goto_41
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_8b

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/16 v2, 0xb

    if-eq p1, v2, :cond_70

    const/16 v2, 0xc

    if-eq p1, v2, :cond_70

    const/4 v2, 0x5

    if-eq p1, v2, :cond_70

    const/4 v2, 0x6

    if-eq p1, v2, :cond_70

    const/4 v2, 0x7

    if-eq p1, v2, :cond_70

    const/16 v2, 0x8

    if-ne p1, v2, :cond_65

    goto :goto_70

    :cond_65
    const-string p1, "resetAll directly"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    goto :goto_a5

    :cond_70
    :goto_70
    const-string p1, "prepare start third before resetAll"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    const v2, 0x7fffffff

    invoke-virtual {v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$400(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)V

    goto :goto_a5

    :cond_8b
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_a5

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-boolean p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz p1, :cond_a5

    const-string p1, "up and reset"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->resetAll()V

    :cond_a5
    :goto_a5
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "changeAnimation start:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nowState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {v0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " zoomProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$zoomProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " leftProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$leftProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " rightProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$rightProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " middleProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$middleProgress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " progress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$progress:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusZoomToFlexibleOnCanvasAnimationState"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_6f

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    move-result-object p1

    if-eqz p1, :cond_6f

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->setFlexibleEnterThreeSplitShowIfNeeded(Z)V

    :cond_6f
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7c

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_7c
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->val$state:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_9b

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    iget-object v0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    move-result-object p1

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState$3;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;->access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnCanvasAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;

    move-result-object p0

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mTipsSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_9b
    return-void
.end method
