.class public Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;
.super Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;
.source ""


# static fields
.field private static final BASIC_UNIT:I = 0x3e8

.field private static final GESTURE_CLOSE_COEFFICIENT:F = 1.732f

.field private static final VELOCITY_MIN_CLOSE:F = 8000.0f


# instance fields
.field private mFlingMini:Z

.field public mIsFling:Z

.field private mLastMotionTime:J

.field private mLastMotionX:I

.field private mLastMotionY:I


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;-><init>(Lcom/oplus/zoom/zoomstate/ZoomBaseState;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getPhysicalDragManager()Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    return-void
.end method

.method public static synthetic c(Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->lambda$onSingleTap$0()V

    return-void
.end method

.method private captureMotion(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mLastMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mLastMotionY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mLastMotionTime:J

    return-void
.end method

.method public static synthetic d(Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->lambda$onDoubleTap$1()V

    return-void
.end method

.method private initStateIfNeed()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mFlingMini:Z

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveToEdge:Z

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    return-void
.end method

.method private synthetic lambda$onDoubleTap$1()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->fullZoom()V

    return-void
.end method

.method private synthetic lambda$onSingleTap$0()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isMiniState()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    check-cast v0, Lcom/oplus/zoom/zoomstate/ZoomMiniState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomMiniState;->removeTipsRunnable()V

    :cond_f
    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/zoom/ui/IZoomUiManager;->hideAllTipsView()V

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getPositionInfoRestoreForZoom()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p0

    const/16 v2, 0xc9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->switchState(ILcom/oplus/zoom/common/ZoomPositionInfo;IZ)V

    return-void
.end method


# virtual methods
.method public clearState()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->unRegisterInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)V
    .registers 3

    const-string p1, "ZoomPointerHandler"

    const-string p2, "double tap mini"

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/oplus/zoom/pointerhandler/c;

    invoke-direct {p2, p0}, Lcom/oplus/zoom/pointerhandler/c;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInputEvent(Landroid/view/MotionEvent;I)Z
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_85

    if-eq p2, v3, :cond_6b

    const/4 v4, 0x2

    if-eq p2, v4, :cond_1c

    const/4 v2, 0x3

    if-eq p2, v2, :cond_6b

    goto/16 :goto_b1

    :cond_1c
    iget p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mLastMotionX:I

    sub-int p2, v0, p2

    iget v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mLastMotionY:I

    sub-int v4, v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mLastMotionTime:J

    sub-long/2addr v5, v7

    if-gez v4, :cond_5c

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_42

    mul-int/lit16 v7, v4, 0x3e8

    int-to-long v7, v7

    div-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x45fa0000  # 8000.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5c

    :cond_42
    if-eqz p2, :cond_5a

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    mul-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const v5, 0x3fddb22d  # 1.732f

    mul-float/2addr p2, v5

    cmpl-float p2, v4, p2

    if-lez p2, :cond_5c

    :cond_5a
    move p2, v3

    goto :goto_5d

    :cond_5c
    move p2, v2

    :goto_5d
    iput-boolean p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mIsFling:Z

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->captureMotion(Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {p2, p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->onDrag(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->performHapticFeedbackIfNeed(IIZZ)V

    goto :goto_b1

    :cond_6b
    iput-boolean v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->floatOrExitZoomIfNeed(II)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0, v3}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->endDrag(Landroid/view/MotionEvent;Landroid/graphics/Rect;Z)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomStateChanged()V

    goto :goto_b1

    :cond_85
    iput-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mIsFling:Z

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->captureMotion(Landroid/view/MotionEvent;)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomDecorPointerHelper:Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;

    invoke-virtual {p2, p0}, Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper;->registerInputListener(Lcom/oplus/zoom/pointerhandler/ZoomDecorPointerHelper$InputHandler;)Z

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->initStateIfNeed()V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p0, v0, v3}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->initPhysicsWorld(Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;Landroid/graphics/Rect;Z)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->beginDrag(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomPositionInfo()Lcom/oplus/zoom/common/ZoomPositionInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->setPositionInfoBeforeInput(Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :goto_b1
    return v3
.end method

.method public onMoving(FF)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {v0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->isStateOn()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_54

    :cond_15
    float-to-int p1, p1

    float-to-int p2, p2

    int-to-float v0, p1

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {v1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v1

    iget v1, v1, Lcom/oplus/physicsengine/common/Vector;->mX:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p2

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {v2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->getHookPosition()Lcom/oplus/physicsengine/common/Vector;

    move-result-object v2

    iget v2, v2, Lcom/oplus/physicsengine/common/Vector;->mY:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->calculateAndUpdateSurface(II)V

    iget-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mMoveEnd:Z

    if-eqz p1, :cond_46

    iget-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mIsFling:Z

    if-eqz p1, :cond_3f

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->exitZoom(Z)V

    iput-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mIsFling:Z

    goto :goto_46

    :cond_3f
    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->performHapticFeedbackIfNeed(IIZZ)V

    invoke-virtual {p0, v0, v1}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->floatOrExitZoomIfNeed(II)V

    :cond_46
    :goto_46
    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getUiManager()Lcom/oplus/zoom/ui/IZoomUiManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/zoom/ui/IZoomUiManager;->hideAllTipsView()V

    return-void

    :cond_54
    :goto_54
    const-string p1, "ZoomPointerHandler"

    const-string p2, "zoom is animating, stopPhysicsAnimation"

    invoke-static {p1, p2}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mZoomPhysicalDragManager:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->stopPhysicsAnimation()V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomDecorChange(I)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mFlingMini:Z

    return-void
.end method

.method public onSingleTap(Landroid/view/MotionEvent;I)V
    .registers 3

    iget-boolean p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;->mFlingMini:Z

    const-string p2, "ZoomPointerHandler"

    if-eqz p1, :cond_c

    const-string p0, "single tap mini mFlingMini = true"

    invoke-static {p2, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    const-string p1, "single tap mini"

    invoke-static {p2, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p2, Lcom/coui/appcompat/reddot/a;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/zoom/pointerhandler/ZoomMiniPointerHandler;)V

    invoke-interface {p1, p2}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSteady(FF)V
    .registers 4

    float-to-int p1, p1

    float-to-int p2, p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->calibrationPosition(IIZ)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomBasePointerHandler;->mState:Lcom/oplus/zoom/zoomstate/ZoomBaseState;

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomBaseState;->getZoomStateManager()Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->notifyZoomStateChanged()V

    return-void
.end method
