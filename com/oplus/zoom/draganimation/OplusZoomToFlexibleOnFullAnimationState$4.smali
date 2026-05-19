.class Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


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

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iput p2, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$zoomProgress:F

    iput p4, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$fullProgress:F

    iput p5, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$replaceProgress:F

    iput p6, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$progress:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "### transferAnimation Cancel:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    const-string v1, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 7

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const-string v0, "changeAnimation end to:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    const-string v2, " before end:"

    const-string v3, " cancle:"

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " topState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " keepMessage:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " up:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mCancleCurrentAnimation:Z

    const/16 v1, 0xe

    const/4 v2, 0x1

    if-nez p1, :cond_e9

    const-string p1, "changeAnimation normal end to:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    invoke-static {p1, v3, v0}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$300(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    const/4 v3, 0x2

    if-nez p1, :cond_90

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v4, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object p1

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v3

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_ad

    :cond_90
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v4, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$200(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object p1

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v4, p1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$100(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$FullAnimation;

    move-result-object v3

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState$AnimationProperty;->mWholeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_ad
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    if-eq p1, v1, :cond_fc

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_df

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$000(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->changeToState(I)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean v4, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz v4, :cond_d6

    invoke-static {p1, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$002(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    const-string p1, "KeepMessage DRAG_OVER"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    :cond_d6
    invoke-static {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$002(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;I)I

    const-string p1, "KeepMessage clear"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fc

    :cond_df
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean v3, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz v3, :cond_fc

    invoke-virtual {p1, v1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->changeToState(I)V

    goto :goto_fc

    :cond_e9
    iget p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    const/16 v3, 0xd

    if-ne p1, v3, :cond_fc

    const-string p1, "changeAnimation cancel end to TO_DRAG_OVER"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget v3, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->setState(I)V

    :cond_fc
    :goto_fc
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    if-ne p1, v1, :cond_144

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_129

    const/4 v1, 0x6

    if-eq p1, v1, :cond_129

    const/4 v1, 0x7

    if-eq p1, v1, :cond_129

    const/16 v1, 0x8

    if-ne p1, v1, :cond_116

    goto :goto_129

    :cond_116
    const-string p1, "resetAll BeforeUpState:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget v1, v1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mBeforeUpState:I

    invoke-static {p1, v1, v0}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->resetAll()V

    goto :goto_15e

    :cond_129
    :goto_129
    const-string p1, "prepare start canvas"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-object v0, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mWholeSurface:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {v0, p1, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->access$400(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;)V

    goto :goto_15e

    :cond_144
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_15e

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    iget-boolean p1, p1, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->mAlreadyUp:Z

    if-eqz p1, :cond_15e

    const-string p1, "up and reset"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;->resetAll()V

    :cond_15e
    :goto_15e
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 6

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->this$0:Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState;

    invoke-virtual {p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleBaseAnimationState;->getState()I

    move-result p1

    const-string v0, "changeAnimation start:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$state:I

    const-string v2, " before start:"

    const-string v3, " zoomProgress:"

    invoke-static {v0, v1, v2, p1, v3}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$zoomProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " fullProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$fullProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " replaceProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$replaceProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->val$progress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusZoomToFlexibleOnFullAnimationState"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-gt p1, v0, :cond_48

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleOnFullAnimationState$4;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_48
    return-void
.end method
