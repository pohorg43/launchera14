.class Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->startTransferToSplitAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

.field public final synthetic val$fullFinalCrop:Landroid/graphics/Rect;

.field public final synthetic val$fullFinalPosition:Landroid/graphics/Point;

.field public final synthetic val$zoomFinalCrop:Landroid/graphics/Rect;

.field public final synthetic val$zoomFinalPosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .registers 6

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iput-object p2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$zoomFinalCrop:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalCrop:Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$zoomFinalPosition:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalPosition:Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->lambda$onAnimationEnd$3(IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->lambda$onAnimationEnd$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->lambda$onAnimationEnd$2(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->lambda$onAnimationEnd$1(Z)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const-string p1, "OplusDragZoomPhoneAnimationManager"

    const-string v0, "### moveTaskToSplitStage over"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$600(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    new-instance v2, Lcom/oplus/zoom/draganimation/d;

    invoke-direct {v2, p0}, Lcom/oplus/zoom/draganimation/d;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTaskToSplitStage(IZLcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$2(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    const-string v0, "OplusDragZoomPhoneAnimationManager"

    const-string v1, "### moveTasksToSplitStages over"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1a
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateSurfaceBounds(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->inflateSplitDecor()V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$600(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$3(IZ)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    invoke-static {v0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$500(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;I)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v3, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p2, :cond_11

    iget v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    goto :goto_13

    :cond_11
    iget v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    :goto_13
    move v4, v2

    if-eqz p2, :cond_19

    iget p2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    goto :goto_1b

    :cond_19
    iget p2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    :goto_1b
    move v5, p2

    const/4 v6, 0x1

    new-instance v8, Lcom/oplus/zoom/draganimation/e;

    invoke-direct {v8, p0, v0}, Lcom/oplus/zoom/draganimation/e;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;Landroid/view/SurfaceControl;)V

    move v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTasksToSplitStages(IIIILcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "OplusDragZoomPhoneAnimationManager"

    const-string p1, "### startTransferToSplitAnimation Cancel"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 11

    const-string p1, "OplusDragZoomPhoneAnimationManager"

    const-string v0, "### startTransferToSplitAnimation end"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-boolean v0, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto/16 :goto_16d

    :cond_37
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$zoomFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$zoomFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$zoomFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$zoomFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    invoke-direct {p1, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v2, v2, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    int-to-float v2, v3

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v4, v4, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v6

    div-int/lit8 v7, v7, 0x2

    iget-object v6, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v6, v6, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v8, v6

    div-int/lit8 v8, v8, 0x2

    invoke-direct {v3, v4, v5, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v6, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v7

    int-to-float v4, v4

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    int-to-float v6, v7

    iget-object v7, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v8, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v8, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v7, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v5, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v5, v5, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$zoomFinalPosition:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v8, v0

    iget v0, v7, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    invoke-virtual {p1, v5, v8, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v2, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalPosition:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    invoke-virtual {p1, v0, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x7534

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    const/16 v2, 0x7533

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->val$fullFinalCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_16d
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget v0, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17b

    const/16 v1, 0x9

    if-ne v0, v1, :cond_179

    goto :goto_17b

    :cond_179
    const/4 v0, 0x0

    goto :goto_17c

    :cond_17b
    :goto_17b
    const/4 v0, 0x1

    :goto_17c
    iget-boolean v1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v1, :cond_191

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v1, Lcom/oplus/zoom/draganimation/g;

    invoke-direct {v1, p0, v0}, Lcom/oplus/zoom/draganimation/g;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;Z)V

    invoke-interface {p1, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1a7

    :cond_191
    invoke-static {p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->access$400(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;)I

    move-result p1

    iget-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    new-instance v2, Lcom/oplus/zoom/draganimation/f;

    invoke-direct {v2, p0, p1, v0}, Lcom/oplus/zoom/draganimation/f;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;IZ)V

    invoke-interface {v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1a7
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "### startTransferToSplitAnimation gestureStae:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v1, "OplusDragZoomPhoneAnimationManager"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getDisplayImeController()Lcom/android/wm/shell/common/DisplayImeController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayImeController;->isCurrentImeShowing(I)Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "onAnimationStart: hideInputSoft before enter splitScreen."

    invoke-static {v1, p0}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->getInstance()Lcom/oplus/view/inputmethod/OplusInputMethodManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->hideCurrentInputMethod()V

    :cond_2c
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->setZoomTransferToSplitAnimating(Z)V

    return-void
.end method
