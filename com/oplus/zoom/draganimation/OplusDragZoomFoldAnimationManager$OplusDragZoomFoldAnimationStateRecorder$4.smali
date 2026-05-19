.class Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->startTransferToSplitAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->lambda$onAnimationEnd$1(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->lambda$onAnimationEnd$2(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->lambda$onAnimationEnd$0(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->lambda$onAnimationEnd$3(Z)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    const-string p1, "OplusDragZoomFoldAnimationManager"

    const-string v0, "### moveTaskToSplitStage over"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$200(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$1(Z)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v1, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    new-instance v2, Lcom/oplus/zoom/draganimation/b;

    invoke-direct {v2, p0}, Lcom/oplus/zoom/draganimation/b;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTaskToSplitStage(IZLcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$2(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const-string v0, "OplusDragZoomFoldAnimationManager"

    const-string v1, "### moveTasksToSplitStages over"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->updateSurfaceBounds(Landroid/view/SurfaceControl$Transaction;Z)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->inflateSplitDecor()V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    invoke-static {p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->access$200(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;)V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$3(Z)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v2, v1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_b

    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    goto :goto_d

    :cond_b
    iget v1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    :goto_d
    move v3, v1

    if-eqz p1, :cond_13

    iget p1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    goto :goto_15

    :cond_13
    iget p1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    :goto_15
    move v4, p1

    const/4 v5, 0x1

    iget-object p1, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->right:I

    new-instance v7, Lcom/oplus/zoom/draganimation/a;

    invoke-direct {v7, p0}, Lcom/oplus/zoom/draganimation/a;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;)V

    invoke-virtual/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->moveTasksToSplitStages(IIIILcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "OplusDragZoomFoldAnimationManager"

    const-string p1, "### startTransferToSplitAnimation Cancel"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 14

    const-string p1, "OplusDragZoomFoldAnimationManager"

    const-string v0, "### startTransferToSplitAnimation end"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget v0, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    iget-boolean v3, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    const/16 v4, 0x7533

    const/16 v5, 0x7534

    const/4 v6, 0x0

    if-eqz v3, :cond_5d

    iget-object v3, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p1, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalAinmationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v6, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetLeashSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTargetDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto/16 :goto_168

    :cond_5d
    if-eqz v0, :cond_62

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    goto :goto_64

    :cond_62
    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    :goto_64
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    if-eqz v0, :cond_6f

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    goto :goto_71

    :cond_6f
    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    :goto_71
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v0, :cond_85

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, p1, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    goto :goto_96

    :cond_85
    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v8, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int/2addr v7, p1

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v8, v7

    int-to-float v7, v8

    :goto_96
    if-eqz v0, :cond_aa

    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v9, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v8, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int/2addr v8, v3

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v9, v8

    int-to-float v8, v9

    goto :goto_b7

    :cond_aa
    iget-object v8, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v8, v8, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v8, v3, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    :goto_b7
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v10, v10, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v10, p1

    div-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v11, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v11, p1

    div-int/lit8 v11, v11, 0x2

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {v9, v10, v2, v11, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p1, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v10, v10, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int/2addr v10, v3

    div-int/lit8 v10, v10, 0x2

    iget-object v11, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v11, v11, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v11, v3

    div-int/lit8 v11, v11, 0x2

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {p1, v10, v2, v11, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v10, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object v10, v10, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mAnimationTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v11, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v11, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v10, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v10, v10, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v10, v9}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v9, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v9, v9, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v9, v7, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v9, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v9, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v7, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v7, v7, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v7, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v8, v6}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mDragFullSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v4, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_157

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    goto :goto_159

    :cond_157
    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    :goto_159
    invoke-virtual {p1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object v3, v3, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mTotalDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_168
    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-boolean v3, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    if-eqz v3, :cond_17f

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v1, Lcom/oplus/zoom/draganimation/c;

    invoke-direct {v1, p0, v0, v2}, Lcom/oplus/zoom/draganimation/c;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;ZI)V

    invoke-interface {p1, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_18f

    :cond_17f
    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

    iget-object p1, p1, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v2, Lcom/oplus/zoom/draganimation/c;

    invoke-direct {v2, p0, v0, v1}, Lcom/oplus/zoom/draganimation/c;-><init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;ZI)V

    invoke-interface {p1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_18f
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    const-string p1, "### startTransferToSplitAnimation gestureStae:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget v0, v0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    const-string v1, "OplusDragZoomFoldAnimationManager"

    invoke-static {p1, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->this$1:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager;

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
    return-void
.end method
