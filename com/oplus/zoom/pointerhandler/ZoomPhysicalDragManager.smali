.class public Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/physicsengine/engine/AnimationListener;
.implements Lcom/oplus/physicsengine/engine/AnimationUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;
    }
.end annotation


# static fields
.field private static final BOTTOM_LIMIT_EDGE_OF_MOVE_ZOOM_RATE:F = 0.7f

.field private static final DRAG_CONSTRAINT_DAMPING_RATIO_MINI_ZOOM:F = 1.02f

.field private static final DRAG_CONSTRAINT_DAMPING_RATIO_ZOOM:F = 0.7f

.field private static final DRAG_CONSTRAINT_FREQUENCY_MINI_ZOOM:F = 18.0f

.field private static final DRAG_CONSTRAINT_FREQUENCY_ZOOM:F = 19.0f

.field private static final LEFT_LIMIT_EDGE_OF_MOVE_ZOOM_RATE:F = 0.667f

.field private static final MINI_ZOOM_MOVE_TO_SHRINK_RATE:F = 1.01f

.field private static final MINI_ZOOM_MOVE_TO_SHRINK_VELOCITY:F = 12000.0f

.field private static final POSITION_CONSTRAINT_DAMPING_RATIO_MINI_ZOOM:F = 1.22f

.field private static final POSITION_CONSTRAINT_DAMPING_RATIO_ZOOM:F = 1.22f

.field private static final POSITION_CONSTRAINT_FREQUENCY_MINI_ZOOM:F = 6.0f

.field private static final POSITION_CONSTRAINT_FREQUENCY_ZOOM:F = 6.0f

.field private static final RIGHT_LIMIT_EDGE_OF_MOVE_ZOOM_RATE:F = 0.667f

.field private static final TAG:Ljava/lang/String; = "ZoomPointerHandler"

.field private static final VELOCITY_MAX:F = 24000.0f

.field private static final VELOCITY_UNIT:I = 0x3e8


# instance fields
.field private mAnimating:Z

.field private mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

.field private final mContext:Landroid/content/Context;

.field private mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

.field private mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

.field private final mHookPosition:Lcom/oplus/physicsengine/common/Vector;

.field private mIsDragging:Z

.field private mLock:Ljava/lang/Object;

.field private mObserver:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;

.field private mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

.field private mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/physicsengine/common/Vector;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/oplus/physicsengine/common/Vector;-><init>(FF)V

    iput-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mHookPosition:Lcom/oplus/physicsengine/common/Vector;

    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getExtendBoundInMiniZoom(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result p0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopBottomLimitInMini()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    const v4, 0x3f8147ae  # 1.01f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    add-float/2addr p1, p0

    float-to-int p0, p1

    sub-int/2addr v0, v1

    invoke-direct {v2, v3, v1, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getExtendBoundInMiniZoom bound = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZoomPointerHandler"

    invoke-static {p1, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private getLimitBoundInMiniZoom(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 5

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getLeftRightLimitInMini()I

    move-result v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopBottomLimitInMini()I

    move-result v2

    sub-int/2addr p1, v1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLimitBoundInMiniZoom bound = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomPointerHandler"

    invoke-static {v0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getLimitBoundInZoom(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 8

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/zoom/common/ZoomDisplayController;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/zoom/common/ZoomDisplayController;->getDensity()F

    move-result v2

    invoke-static {}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getInstance()Lcom/oplus/zoom/common/ZoomParameterHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/zoom/common/ZoomParameterHelper;->getTopLimitInZoom()I

    move-result v3

    invoke-static {}, Lcom/oplus/zoom/common/ZoomInsetsController;->getInstance()Lcom/oplus/zoom/common/ZoomInsetsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/zoom/common/ZoomInsetsController;->isImeVisible()Z

    move-result v4

    invoke-static {}, Lcom/oplus/zoom/common/ZoomInsetsController;->getInstance()Lcom/oplus/zoom/common/ZoomInsetsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/zoom/common/ZoomInsetsController;->getImeHeight()I

    move-result v5

    if-eqz v4, :cond_42

    if-lez v5, :cond_42

    sub-int/2addr v1, v5

    const/high16 v4, 0x41c00000  # 24.0f

    invoke-static {v2, v4}, Lcom/oplus/zoom/common/ZoomUtil;->dip2px(FF)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_4d

    :cond_42
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f333333  # 0.7f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/2addr v1, v2

    :goto_4d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3f2ac083  # 0.667f

    mul-float/2addr v2, v4

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v4

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getLimitBoundInZoom bound = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ZoomPointerHandler"

    invoke-static {v0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_e

    :cond_b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_e
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    return-void
.end method

.method private isNotSelfBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    if-eq p1, v1, :cond_11

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eq p1, v1, :cond_11

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    if-eq p1, p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    monitor-exit v0

    return p0

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method private transferRectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .registers 5

    new-instance p0, Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private willBeFlingOutScreen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public beginDrag(Landroid/view/MotionEvent;Landroid/graphics/Rect;)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    if-nez v1, :cond_10

    const-string p0, "ZoomPointerHandler"

    const-string p1, "beginDrag mDragBehavior is null"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_10
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/oplus/zoom/common/ZoomUtil;->setAnimationThreadUx(Z)V

    invoke-static {v1}, Lcom/oplus/zoom/common/ZoomUtil;->setRenderThreadUx(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mIsDragging:Z

    iput-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAnimating:Z

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->initOrResetVelocityTracker()V

    invoke-virtual {p0, v2, v3, p2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->setHookPosition(FFLandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p2, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oplus/physicsengine/engine/DragBehavior;->beginDrag(FFFF)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const-string p0, "ZoomPointerHandler"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beginDrag startRect = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", downX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", downY = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public endDrag(Landroid/view/MotionEvent;Landroid/graphics/Rect;Z)V
    .registers 11

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    if-eqz v0, :cond_140

    iget-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mIsDragging:Z

    if-nez v0, :cond_d

    goto/16 :goto_140

    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mIsDragging:Z

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v2, 0x0

    if-eqz v1, :cond_32

    const/16 v3, 0x3e8

    const v4, 0x46bb8000  # 24000.0f

    invoke-virtual {v1, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    iget-object v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_34

    :cond_32
    move v1, v2

    move v3, v1

    :goto_34
    const v4, 0x3f9c28f6  # 1.22f

    const/high16 v5, 0x40c00000  # 6.0f

    const/4 v6, 0x1

    if-eqz p3, :cond_d6

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->willBeFlingOutScreen()Z

    move-result p3

    if-eqz p3, :cond_8e

    invoke-direct {p0, p2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->getExtendBoundInMiniZoom(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance p3, Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-direct {p0, p2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->transferRectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p3, v5, v4}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    check-cast p2, Lcom/oplus/physicsengine/engine/FlingBehavior;

    iput-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {p2, v2}, Lcom/oplus/physicsengine/engine/FlingBehavior;->setLinearDamping(F)Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/oplus/zoom/pointerhandler/b;

    invoke-direct {v2, p3}, Lcom/oplus/zoom/pointerhandler/b;-><init>(Lcom/oplus/physicsengine/engine/FlingBehavior;)V

    invoke-virtual {p2, v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->withStopAction(Ljava/lang/Runnable;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-array p3, v6, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    aput-object v2, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/AnimationListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-array p3, v6, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    aput-object v2, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/AnimationUpdateListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    goto/16 :goto_11b

    :cond_8e
    invoke-direct {p0, p2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->getLimitBoundInMiniZoom(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance p3, Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    const/16 v2, 0xf

    invoke-direct {p0, p2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->transferRectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p3, v0, v2, p2}, Lcom/oplus/physicsengine/engine/AttachmentBehavior;-><init>(IILandroid/graphics/RectF;)V

    invoke-virtual {p3, v5, v4}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    check-cast p2, Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    iput-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wm/shell/common/c;

    invoke-direct {v2, p2}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/physicsengine/engine/AttachmentBehavior;)V

    invoke-virtual {p3, v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->withStopAction(Ljava/lang/Runnable;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-array p3, v6, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    aput-object v2, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/AnimationListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-array p3, v6, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    aput-object v2, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/AnimationUpdateListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    goto :goto_11b

    :cond_d6
    invoke-direct {p0, p2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->getLimitBoundInZoom(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    new-instance p3, Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-direct {p0, p2}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->transferRectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/oplus/physicsengine/engine/FlingBehavior;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p3, v5, v4}, Lcom/oplus/physicsengine/engine/ConstraintBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    check-cast p2, Lcom/oplus/physicsengine/engine/FlingBehavior;

    iput-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/util/n;

    invoke-direct {v2, p2}, Lcom/android/quickstep/util/n;-><init>(Lcom/oplus/physicsengine/engine/FlingBehavior;)V

    invoke-virtual {p3, v2}, Lcom/oplus/physicsengine/engine/BaseBehavior;->withStopAction(Ljava/lang/Runnable;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-array p3, v6, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    aput-object v2, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/AnimationListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-array p3, v6, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    aput-object v2, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/AnimationUpdateListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    :goto_11b
    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-virtual {p0, v1, v3}, Lcom/oplus/physicsengine/engine/DragBehavior;->endDrag(FF)V

    const-string p0, "ZoomPointerHandler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "endDrag xVel = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", yVel = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_140
    :goto_140
    const-string p0, "ZoomPointerHandler"

    const-string p2, "endDrag mDragBehavior is null"

    invoke-static {p0, p2}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_149
    move-exception p0

    monitor-exit p1
    :try_end_14b
    .catchall {:try_start_3 .. :try_end_14b} :catchall_149

    throw p0
.end method

.method public getHookPosition()Lcom/oplus/physicsengine/common/Vector;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mHookPosition:Lcom/oplus/physicsengine/common/Vector;

    return-object p0
.end method

.method public initPhysicsWorld(Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;Landroid/graphics/Rect;Z)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->stopPhysicsAnimation()V

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->create(Landroid/content/Context;)Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-instance v1, Lcom/oplus/physicsengine/engine/UIItem;

    invoke-direct {v1}, Lcom/oplus/physicsengine/engine/UIItem;-><init>()V

    iput-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    :cond_19
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/physicsengine/engine/UIItem;->setSize(FF)Lcom/oplus/physicsengine/engine/UIItem;

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {v1, v2, p2}, Lcom/oplus/physicsengine/engine/UIItem;->setStartPosition(FF)Lcom/oplus/physicsengine/engine/UIItem;

    if-eqz p3, :cond_4e

    new-instance p2, Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-direct {p2}, Lcom/oplus/physicsengine/engine/DragBehavior;-><init>()V

    const/high16 p3, 0x41900000  # 18.0f

    const v1, 0x3f828f5c  # 1.02f

    invoke-virtual {p2, p3, v1}, Lcom/oplus/physicsengine/engine/DragBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    check-cast p2, Lcom/oplus/physicsengine/engine/DragBehavior;

    iput-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    goto :goto_66

    :cond_4e
    new-instance p2, Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-direct {p2}, Lcom/oplus/physicsengine/engine/DragBehavior;-><init>()V

    const/high16 p3, 0x41980000  # 19.0f

    const v1, 0x3f333333  # 0.7f

    invoke-virtual {p2, p3, v1}, Lcom/oplus/physicsengine/engine/DragBehavior;->setSpringProperty(FF)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mUIItem:Lcom/oplus/physicsengine/engine/UIItem;

    invoke-virtual {p2, p3}, Lcom/oplus/physicsengine/engine/BaseBehavior;->applyTo(Ljava/lang/Object;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    move-result-object p2

    check-cast p2, Lcom/oplus/physicsengine/engine/DragBehavior;

    iput-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    :goto_66
    iput-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mObserver:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object p2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-virtual {p1, p2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    const/4 p2, 0x1

    new-array p3, p2, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    invoke-virtual {p1, p0, p3}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationListener(Lcom/oplus/physicsengine/engine/AnimationListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object p1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    new-array p2, p2, [Lcom/oplus/physicsengine/engine/BaseBehavior;

    iget-object p3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    aput-object p3, p2, v2

    invoke-virtual {p1, p0, p2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->addAnimationUpdateListener(Lcom/oplus/physicsengine/engine/AnimationUpdateListener;[Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {p0}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->restart()V

    monitor-exit v0

    return-void

    :catchall_8e
    move-exception p0

    monitor-exit v0
    :try_end_90
    .catchall {:try_start_3 .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public onAnimationEnd(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 4

    const-string v0, "ZoomPointerHandler"

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getTransform()Lcom/oplus/physicsengine/engine/Transform;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_43

    :cond_b
    iget-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAnimating:Z

    if-eqz v1, :cond_3d

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->isNotSelfBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_3d

    :cond_16
    instance-of v1, p1, Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-nez v1, :cond_24

    instance-of v1, p1, Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    if-nez v1, :cond_24

    const-string p0, "behavior is not FlingBehavior or AttachmentBehavior"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getTransform()Lcom/oplus/physicsengine/engine/Transform;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mObserver:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;

    if-eqz p1, :cond_35

    if-eqz p0, :cond_35

    iget v0, p1, Lcom/oplus/physicsengine/engine/Transform;->x:F

    iget p1, p1, Lcom/oplus/physicsengine/engine/Transform;->y:F

    invoke-interface {p0, v0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;->onSteady(FF)V

    :cond_35
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomUtil;->setAnimationThreadUx(Z)V

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomUtil;->setRenderThreadUx(Z)V

    return-void

    :cond_3d
    :goto_3d
    const-string p0, "animator has been stopped"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_43
    :goto_43
    const-string p0, "behavior is null"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationUpdate(Lcom/oplus/physicsengine/engine/BaseBehavior;)V
    .registers 4

    const-string v0, "ZoomPointerHandler"

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getTransform()Lcom/oplus/physicsengine/engine/Transform;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_2e

    :cond_b
    iget-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAnimating:Z

    if-eqz v1, :cond_28

    invoke-direct {p0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->isNotSelfBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_28

    :cond_16
    invoke-virtual {p1}, Lcom/oplus/physicsengine/engine/BaseBehavior;->getTransform()Lcom/oplus/physicsengine/engine/Transform;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mObserver:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;

    if-eqz p1, :cond_27

    if-eqz p0, :cond_27

    iget v0, p1, Lcom/oplus/physicsengine/engine/Transform;->x:F

    iget p1, p1, Lcom/oplus/physicsengine/engine/Transform;->y:F

    invoke-interface {p0, v0, p1}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;->onMoving(FF)V

    :cond_27
    return-void

    :cond_28
    :goto_28
    const-string p0, "animator has been stopped"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    :goto_2e
    const-string p0, "behavior is null"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrag(Landroid/view/MotionEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    if-eqz v1, :cond_23

    iget-boolean v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mIsDragging:Z

    if-nez v1, :cond_c

    goto :goto_23

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-virtual {v3, v1, v2}, Lcom/oplus/physicsengine/engine/DragBehavior;->onDragging(FF)V

    invoke-direct {p0}, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->initVelocityTrackerIfNotExists()V

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    monitor-exit v0

    return-void

    :cond_23
    :goto_23
    const-string p0, "ZoomPointerHandler"

    const-string p1, "onDrag mDragBehavior is null"

    invoke-static {p0, p1}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setHookPosition(FFLandroid/graphics/Rect;)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mHookPosition:Lcom/oplus/physicsengine/common/Vector;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Lcom/oplus/physicsengine/common/Vector;->set(FF)Lcom/oplus/physicsengine/common/Vector;

    return-void
.end method

.method public stopPhysicsAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    if-nez v1, :cond_10

    const-string p0, "ZoomPointerHandler"

    const-string v1, "stopPhysicsAnimation mPhysics null"

    invoke-static {p0, v1}, Lcom/oplus/zoom/common/LogD;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_10
    const-string v2, "stop-animator"

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->cancel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    if-eqz v1, :cond_25

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {v2, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeListener(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    :cond_25
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    if-eqz v1, :cond_35

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {v2, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeListener(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    :cond_35
    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    if-eqz v1, :cond_45

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    invoke-virtual {v2, v1}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeListener(Lcom/oplus/physicsengine/engine/BaseBehavior;)V

    iget-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mPhysics:Lcom/oplus/physicsengine/engine/PhysicalAnimator;

    iget-object v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    invoke-virtual {v1, v2}, Lcom/oplus/physicsengine/engine/PhysicalAnimator;->removeBehavior(Lcom/oplus/physicsengine/engine/BaseBehavior;)Z

    :cond_45
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAttachBehavior:Lcom/oplus/physicsengine/engine/AttachmentBehavior;

    iput-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mFlingBehavior:Lcom/oplus/physicsengine/engine/FlingBehavior;

    iput-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mDragBehavior:Lcom/oplus/physicsengine/engine/DragBehavior;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mAnimating:Z

    iput-object v1, p0, Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager;->mObserver:Lcom/oplus/zoom/pointerhandler/ZoomPhysicalDragManager$PhysicalAnimatorObserver;

    const-string p0, "ZoomPointerHandler"

    const-string v1, "mPhysics has been stopped"

    invoke-static {p0, v1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p0
.end method
