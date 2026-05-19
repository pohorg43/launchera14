.class Lcom/android/wm/shell/windowdecor/DragDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;
    }
.end annotation


# instance fields
.field private mDragPointerId:I

.field private final mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

.field private final mInputDownPoint:Landroid/graphics/PointF;

.field private mIsDragEvent:Z

.field private mResultOfDownAction:Z

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DragDetector;->resetState()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    return-void
.end method

.method private resetState()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v3

    :goto_e
    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_71

    if-eq v0, v2, :cond_67

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_67

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2c
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    if-nez v0, :cond_59

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v0

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v4

    float-to-double v4, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_56

    goto :goto_57

    :cond_56
    move v2, v3

    :goto_57
    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    :cond_59
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mIsDragEvent:Z

    if-eqz v0, :cond_64

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_64
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    return p0

    :cond_67
    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DragDetector;->resetState()V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_71
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mDragPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mInputDownPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mEventHandler:Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mResultOfDownAction:Z

    return p1
.end method

.method public setTouchSlop(I)V
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    return-void
.end method
