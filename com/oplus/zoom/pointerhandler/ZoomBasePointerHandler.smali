.class public abstract Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;
.implements Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;


# static fields
.field private static final CLOSE_ANIM_TIME_COEFFICIENT:F = 8.0f

.field private static final DURATION_TIME:I = 0x64

.field public static final FLAG_OF_EDGE_DEFAULT:I = 0x0

.field public static final FLAG_OF_HEIGHT_EDGE:I = 0x2

.field public static final FLAG_OF_WIDTH_EDGE:I = 0x1

.field private static final LEFT_EDGE_IN_HOT_EDGE:F = 0.1f

.field private static final LEFT_EDGE_IN_HOT_EDGE_MOVE_END:F = 0.5f

.field private static final RIGHT_EDGE_IN_HOT_EDGE:F = 1.1f

.field private static final RIGHT_EDGE_IN_HOT_EDGE_MOVE_END:F = 0.5f

.field public static final TAG:Ljava/lang/String; = "ZoomPointerHandler"

.field private static final TOP_EDGE_IN_HOT_EDGE_MOVE_END:F = 0.67f


# instance fields
.field private mFlagOfWidthOrHeightEdge:I

.field public mMoveEnd:Z

.field public mMoveToEdge:Z

.field public mStartOffsetX:I

.field public mStartOffsetY:I

.field public mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

.field public mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

.field public mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mFlagOfWidthOrHeightEdge:I

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getZoomDecorPointerHelper()Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->lambda$floatZoomIfNeed$0(II)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->lambda$floatOrExitZoomIfNeed$1(II)V

    return-void
.end method

.method private synthetic lambda$floatOrExitZoomIfNeed$1(II)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->floatZoom(II)V

    return-void
.end method

.method private synthetic lambda$floatZoomIfNeed$0(II)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->floatZoom(II)V

    return-void
.end method


# virtual methods
.method public calculateAndUpdateSurface(II)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScale()F

    move-result v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    new-instance p2, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-direct {p2, v0, v1}, Lcom/oplus/zoom/common/ZoomPositionInfo;-><init>(Landroid/graphics/Rect;F)V

    invoke-virtual {p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setZoomPositionInfo(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->updateSurfacePosition()V

    return-void
.end method

.method public calibrationPosition(IIZ)V
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopLimitInZoom()I

    move-result v0

    if-eqz p3, :cond_12

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object p3

    invoke-virtual {p3}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopBottomLimitInMini()I

    move-result v0

    :cond_12
    if-ge p2, v0, :cond_39

    iget-boolean p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    if-eqz p3, :cond_39

    invoke-virtual {p0, p1, v0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->calculateAndUpdateSurface(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "calibration position coordinates x:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " y:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomPointerHandler"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    return-void
.end method

.method public clearState()V
    .registers 1

    return-void
.end method

.method public exitZoom(Z)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    neg-int v0, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz p1, :cond_21

    const-wide/16 v4, 0x64

    goto :goto_2c

    :cond_21
    sub-int/2addr v0, v2

    int-to-float p1, v0

    const/high16 v0, 0x41000000  # 8.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    int-to-long v4, p1

    :goto_2c
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a  # 0.3f

    const/4 v2, 0x0

    const v4, 0x3dcccccd  # 0.1f

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-direct {p1, v0, v2, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$1;

    invoke-direct {p1, p0, v1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$1;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;I)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;

    invoke-direct {p1, p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler$2;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public floatOrExitZoomIfNeed(II)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    if-eqz v0, :cond_2c

    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->stopPhysicsAnimation()V

    iget v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mFlagOfWidthOrHeightEdge:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v1, Lcom/oplus/zoom/pointerhandler/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oplus/zoom/pointerhandler/a;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;III)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2c

    :cond_26
    const/4 p1, 0x2

    if-ne v0, p1, :cond_2c

    invoke-virtual {p0, v1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->exitZoom(Z)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public floatZoomIfNeed(II)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getLastDragToSplit()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    :cond_12
    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->stopPhysicsAnimation()V

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v0

    new-instance v2, Lcom/oplus/zoom/pointerhandler/a;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/oplus/zoom/pointerhandler/a;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;III)V

    invoke-interface {v0, v2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_31
    return-void
.end method

.method public isMoveToEdge(IIZ)Z
    .registers 11

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result p2

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd  # 0.1f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f8ccccd  # 1.1f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v3, p2, v3

    const/high16 v4, 0x42200000  # 40.0f

    invoke-static {v0, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge p1, v0, :cond_3a

    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-lt v6, v2, :cond_41

    :cond_3a
    sub-int/2addr p2, v0

    if-le p1, p2, :cond_43

    iget p1, v1, Landroid/graphics/Rect;->left:I

    if-le p1, v3, :cond_43

    :cond_41
    move p1, v5

    goto :goto_44

    :cond_43
    move p1, v4

    :goto_44
    if-eqz p3, :cond_69

    if-eqz p1, :cond_4b

    iput v5, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mFlagOfWidthOrHeightEdge:I

    goto :goto_69

    :cond_4b
    iget p1, v1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p2}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    const p3, 0x3f2b851f  # 0.67f

    mul-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_63

    move v4, v5

    :cond_63
    if-eqz v4, :cond_68

    const/4 p1, 0x2

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mFlagOfWidthOrHeightEdge:I

    :cond_68
    move p1, v4

    :cond_69
    :goto_69
    return p1
.end method

.method public isOutOfScreenHeight()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    const v1, 0x3f2b851f  # 0.67f

    mul-float/2addr p0, v1

    cmpg-float p0, v0, p0

    if-gez p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public isOutOfScreenWidth()Z
    .registers 5

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v0

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getCurrentScaleRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    neg-float v1, v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    sub-int/2addr v0, v2

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-lt p0, v1, :cond_29

    if-le p0, v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 p0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 p0, 0x1

    :goto_2a
    return p0
.end method

.method public onInputEvent(Landroid/view/MotionEvent;I)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public onMoving(FF)V
    .registers 3

    return-void
.end method

.method public onSteady(FF)V
    .registers 3

    return-void
.end method

.method public performHapticFeedbackIfNeed(IIZZ)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_23

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mFlagOfWidthOrHeightEdge:I

    if-eqz p3, :cond_1e

    invoke-virtual {p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->isOutOfScreenWidth()Z

    move-result p1

    if-eqz p1, :cond_12

    iput v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mFlagOfWidthOrHeightEdge:I

    :goto_10
    move p1, v1

    goto :goto_2e

    :cond_12
    invoke-virtual {p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->isOutOfScreenHeight()Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x2

    iput p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mFlagOfWidthOrHeightEdge:I

    goto :goto_10

    :cond_1c
    move p1, v0

    goto :goto_2e

    :cond_1e
    invoke-virtual {p0, p1, p2, v1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->isMoveToEdge(IIZ)Z

    move-result p1

    goto :goto_2e

    :cond_23
    if-eqz p3, :cond_2a

    invoke-virtual {p0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->isOutOfScreenWidth()Z

    move-result p1

    goto :goto_2e

    :cond_2a
    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->isMoveToEdge(IIZ)Z

    move-result p1

    :goto_2e
    if-eqz p1, :cond_6c

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isUnSupportSwitchToFloat()Z

    move-result p1

    if-nez p1, :cond_6c

    iget-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    if-nez p1, :cond_6e

    iput-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isSupportPocketStudio(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getLastDragToSplit()Z

    move-result p1

    if-eqz p1, :cond_5b

    return-void

    :cond_5b
    const-string p1, "ZoomPointerHandler"

    const-string p2, "performHapticFeedback"

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/oplus/zoom/common/ZoomUtil;->performHapticFeedback(Landroid/content/Context;IZ)V

    goto :goto_6e

    :cond_6c
    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    :cond_6e
    :goto_6e
    return-void
.end method
