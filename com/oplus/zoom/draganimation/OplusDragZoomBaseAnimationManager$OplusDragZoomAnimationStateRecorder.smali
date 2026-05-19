.class public Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OplusDragZoomAnimationStateRecorder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder$OplusDragZoomAnimationOperation;
    }
.end annotation


# instance fields
.field public mCancleCurrentAnimation:Z

.field public mCurrentAnimationState:I

.field public mCurrentDragPosition:Landroid/graphics/Point;

.field public mCurrentDragSurfacePosition:Landroid/graphics/Point;

.field public mCurrentFullCorner:F

.field public mCurrentFullCrop:Landroid/graphics/Rect;

.field public mCurrentFullDimAlpha:F

.field public mCurrentFullDimCrop:Landroid/graphics/Rect;

.field public mCurrentFullPosition:Landroid/graphics/Point;

.field public mCurrentZoomDimAlpha:F

.field public mCurrentZoomDimCrop:Landroid/graphics/Rect;

.field public mCurrentZoomDimScale:F

.field public mDragFullSurface:Landroid/view/SurfaceControl;

.field public mDragZoomSurface:Landroid/view/SurfaceControl;

.field public mEndDrag:Z

.field public mFinishGestureAnimation:Z

.field public mFullDimSurface:Landroid/view/SurfaceControl;

.field public mFullLeftCrop:Landroid/graphics/Rect;

.field public mFullRightCrop:Landroid/graphics/Rect;

.field public mFullSurface:Landroid/view/SurfaceControl;

.field public mFullTaskId:I

.field public mInitialFullCrop:Landroid/graphics/Rect;

.field public mInitialZoomCrop:Landroid/graphics/Rect;

.field public mInitialZoomScale:F

.field public mIsSideOnLeftOrTop:Z

.field public mIsSplitMode:Z

.field public mLastMoveToSplit:Z

.field public mLeftPosition:I

.field public mMainCurrentCornerRadius:F

.field public mMainDimSurface:Landroid/view/SurfaceControl;

.field public mMainLeashInitialRect:Landroid/graphics/Rect;

.field public mMainSurface:Landroid/view/SurfaceControl;

.field public mMainTopId:I

.field public mMainTopLeashSurface:Landroid/view/SurfaceControl;

.field public mMainTopSurface:Landroid/view/SurfaceControl;

.field public mMainTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mMoveOverMode:I

.field public mOriginalDiffX:I

.field public mOriginalDiffY:I

.field public mRightPosition:I

.field public mRootSplitId:I

.field public mSideCurrentCornerRadius:F

.field public mSideDimSurface:Landroid/view/SurfaceControl;

.field public mSideLeashInitialRect:Landroid/graphics/Rect;

.field public mSideSurface:Landroid/view/SurfaceControl;

.field public mSideTopId:I

.field public mSideTopLeashSurface:Landroid/view/SurfaceControl;

.field public mSideTopSurface:Landroid/view/SurfaceControl;

.field public mSideTopTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public mTargetDimSurface:Landroid/view/SurfaceControl;

.field public mTargetLeashSurface:Landroid/view/SurfaceControl;

.field public mTargetSurface:Landroid/view/SurfaceControl;

.field public mTotalAinmationSurface:Landroid/view/SurfaceControl;

.field public mTotalDimSurface:Landroid/view/SurfaceControl;

.field public mZoomDimSurface:Landroid/view/SurfaceControl;

.field public mZoomScale:F

.field public mZoomTopSurface:Landroid/view/SurfaceControl;

.field public mZoomTopTaskId:I

.field public final synthetic this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSplitMode:Z

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mIsSideOnLeftOrTop:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mEndDrag:Z

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mLastMoveToSplit:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMoveOverMode:I

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFinishGestureAnimation:Z

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomTopTaskId:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialZoomCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentZoomDimCrop:Landroid/graphics/Rect;

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullTaskId:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mInitialFullCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullLeftCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mFullRightCrop:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullPosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullCorner:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentFullDimAlpha:F

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mRootSplitId:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideTopId:I

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainTopId:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideLeashInitialRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainLeashInitialRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mSideCurrentCornerRadius:F

    iput v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mMainCurrentCornerRadius:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragSurfacePosition:Landroid/graphics/Point;

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCancleCurrentAnimation:Z

    return-void
.end method

.method private setCurrentDragSurfacePosition(II)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method


# virtual methods
.method public adjustDimPosition(Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, p3

    sub-float/2addr p0, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p4, p2

    mul-float/2addr p4, p3

    sub-float/2addr v1, p4

    div-float/2addr v1, v0

    iget p2, p5, Landroid/graphics/Rect;->left:I

    iget p4, p6, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p4

    iget p4, p5, Landroid/graphics/Rect;->right:I

    iget v2, p6, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    add-int/2addr p4, p2

    int-to-float p2, p4

    mul-float/2addr p2, p3

    div-float/2addr p2, v0

    iget p4, p5, Landroid/graphics/Rect;->top:I

    iget v2, p6, Landroid/graphics/Rect;->top:I

    sub-int/2addr p4, v2

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    iget p6, p6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, p6

    add-int/2addr p5, p4

    int-to-float p4, p5

    mul-float/2addr p4, p3

    div-float/2addr p4, v0

    add-float/2addr p0, p2

    div-float/2addr p0, p3

    add-float/2addr v1, p4

    div-float/2addr v1, p3

    invoke-virtual {p7, p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public finishDragAnimationUnCheck()V
    .registers 1

    return-void
.end method

.method public finishGestureAnimation()V
    .registers 1

    return-void
.end method

.method public getCurrentAnimationState()I
    .registers 1

    iget p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    return p0
.end method

.method public getDragState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mEndDrag:Z

    return p0
.end method

.method public prepareToNormalAnimation()V
    .registers 1

    return-void
.end method

.method public prepareTransferAnimation(I)V
    .registers 2

    return-void
.end method

.method public prepareZoomToSplitAnimation()V
    .registers 1

    return-void
.end method

.method public recordDownInfo(IIFLandroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iput p3, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomScale:F

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p4, Landroid/graphics/Rect;->left:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, p3

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mOriginalDiffX:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    sub-int p4, p1, p4

    int-to-float p4, p4

    div-float/2addr p4, p3

    float-to-int p4, p4

    iput p4, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mOriginalDiffY:I

    int-to-float p2, p2

    int-to-float v0, v0

    mul-float/2addr v0, p3

    sub-float/2addr p2, v0

    float-to-int p2, p2

    int-to-float p1, p1

    int-to-float p4, p4

    mul-float/2addr p4, p3

    sub-float/2addr p1, p4

    float-to-int p1, p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setCurrentDragSurfacePosition(II)V

    return-void
.end method

.method public resetAllState()V
    .registers 1

    return-void
.end method

.method public resetAnimationSurface()V
    .registers 1

    return-void
.end method

.method public setAnimationState(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transfer to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDragZoomBaseAnimationManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->prepareTransferAnimation(I)V

    return-void
.end method

.method public setCurrentAnimationState(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentAnimationState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDragZoomBaseAnimationManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    return-void
.end method

.method public setDragState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mEndDrag:Z

    return-void
.end method

.method public setMovePosition(II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentDragPosition:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mOriginalDiffX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mZoomScale:F

    mul-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mOriginalDiffY:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setCurrentDragSurfacePosition(II)V

    return-void
.end method

.method public startGestureAnimation()V
    .registers 1

    return-void
.end method

.method public transferToNormal(I)V
    .registers 2

    return-void
.end method

.method public transferToSplit(I)V
    .registers 2

    return-void
.end method

.method public transferToState(I)V
    .registers 4

    iget v0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->mCurrentAnimationState:I

    if-eq v0, p1, :cond_b

    add-int/lit8 v1, p1, 0x1

    if-eq v0, v1, :cond_b

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->setAnimationState(I)V

    :cond_b
    return-void
.end method

.method public vibrateWidthSpecilEffect(I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager$OplusDragZoomAnimationStateRecorder;->this$0:Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;

    iget-object p0, p0, Lcom/oplus/zoom/draganimation/OplusDragZoomBaseAnimationManager;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oplus/zoom/common/ZoomUtil;->performHapticFeedback(Landroid/content/Context;IZ)V

    return-void
.end method
