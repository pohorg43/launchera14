.class Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Bubbles"

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mInterceptingTouches:Z

.field private final mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

.field private final mOnInterceptTouch:Ljava/lang/Runnable;

.field private final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

.field private final mTouchDown:Landroid/graphics/PointF;

.field private final mTouchSlop:I

.field private mTrackingTouches:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/lang/Runnable;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchSlop:I

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mOnInterceptTouch:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    return-void
.end method

.method private finishTracking()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_15
    return-void
.end method

.method private getVelocityTracker()Landroid/view/VelocityTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_a
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method private isInGestureRegion(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getNavBarGestureZone()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_87

    if-eq v2, v3, :cond_5d

    const/4 v4, 0x2

    if-eq v2, v4, :cond_30

    const/4 p1, 0x3

    if-eq v2, p1, :cond_23

    goto/16 :goto_aa

    :cond_23
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    if-eqz p1, :cond_aa

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    invoke-interface {p1}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;->onCancel()V

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->finishTracking()V

    return v3

    :cond_30
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    if-eqz v2, :cond_aa

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    if-nez v2, :cond_4c

    float-to-double v4, v0

    float-to-double v6, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchSlop:I

    int-to-double v6, v2

    cmpl-double v2, v4, v6

    if-lez v2, :cond_4c

    iput-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mOnInterceptTouch:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_4c
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    if-eqz v2, :cond_5c

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    invoke-interface {p0, v0, v1}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;->onMove(FF)V

    :cond_5c
    return v3

    :cond_5d
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    if-eqz p1, :cond_aa

    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mInterceptingTouches:Z

    if-eqz p1, :cond_83

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->getVelocityTracker()Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;->onUp(FF)V

    :cond_83
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->finishTracking()V

    return v3

    :cond_87
    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->isInGestureRegion(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mMotionEventListener:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;->onDown(FF)V

    iput-boolean v3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->mTrackingTouches:Z

    return v3

    :cond_aa
    :goto_aa
    const/4 p0, 0x0

    return p0
.end method
