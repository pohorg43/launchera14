.class Lcom/android/launcher3/dragndrop/OplusDragController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/OplusDragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/OplusDragController;

.field public final synthetic val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic val$transaction:Lcom/android/quickstep/util/SurfaceTransaction;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/OplusDragController;Lcom/android/quickstep/util/SurfaceTransaction;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->this$0:Lcom/android/launcher3/dragndrop/OplusDragController;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->this$0:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->access$000(Lcom/android/launcher3/dragndrop/OplusDragController;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->this$0:Lcom/android/launcher3/dragndrop/OplusDragController;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->access$000(Lcom/android/launcher3/dragndrop/OplusDragController;)Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/SurfaceTransaction;->forSurface(Landroid/view/SurfaceControl;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->setVisibility(Z)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OplusDragController$1;->val$transaction:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_46
    return-void
.end method
