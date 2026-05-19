.class Lcom/android/wm/shell/back/TouchTracker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LINEAR_DISTANCE:I

.field private static final PREDICTIVE_BACK_LINEAR_DISTANCE_PROP:Ljava/lang/String; = "persist.wm.debug.predictive_back_linear_distance"


# instance fields
.field private mCancelled:Z

.field private mInitTouchX:F

.field private mInitTouchY:F

.field private mLatestTouchX:F

.field private mLatestTouchY:F

.field private mLatestVelocityX:F

.field private mLatestVelocityY:F

.field private mLinearDistance:F

.field private mMaxDistance:F

.field private mNonLinearFactor:F

.field private mStartThresholdX:F

.field private mSwipeEdge:I

.field private mTriggerBack:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.wm.debug.predictive_back_linear_distance"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/wm/shell/back/TouchTracker;->LINEAR_DISTANCE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/wm/shell/back/TouchTracker;->LINEAR_DISTANCE:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    return-void
.end method


# virtual methods
.method public createProgressEvent()Landroid/window/BackMotionEvent;
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/TouchTracker;->getProgress(F)F

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/TouchTracker;->createProgressEvent(F)Landroid/window/BackMotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public createProgressEvent(F)Landroid/window/BackMotionEvent;
    .registers 11

    new-instance v8, Landroid/window/BackMotionEvent;

    iget v1, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    iget v2, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchY:F

    iget v4, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityX:F

    iget v5, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityY:F

    iget v6, p0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    const/4 v7, 0x0

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/window/BackMotionEvent;-><init>(FFFFFILandroid/view/RemoteAnimationTarget;)V

    return-object v8
.end method

.method public createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;
    .registers 11

    new-instance v8, Landroid/window/BackMotionEvent;

    iget v1, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    iget v2, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchY:F

    iget v6, p0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/window/BackMotionEvent;-><init>(FFFFFILandroid/view/RemoteAnimationTarget;)V

    return-object v8
.end method

.method public getMaxDistance()F
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/back/TouchTracker;->mMaxDistance:F

    return p0
.end method

.method public getProgress(F)F
    .registers 8

    iget-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    goto :goto_9

    :cond_7
    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mStartThresholdX:F

    :goto_9
    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    invoke-virtual {p0}, Lcom/android/wm/shell/back/TouchTracker;->getMaxDistance()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/high16 v4, 0x3f800000  # 1.0f

    if-nez v3, :cond_1c

    move v1, v4

    :cond_1c
    cmpg-float v3, v0, v1

    if-gez v3, :cond_39

    sub-float v3, v1, v0

    iget p0, p0, Lcom/android/wm/shell/back/TouchTracker;->mNonLinearFactor:F

    mul-float/2addr p0, v3

    add-float/2addr p0, v0

    cmpg-float v5, p1, v0

    if-gtz v5, :cond_2c

    const/4 v5, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    :goto_2d
    if-eqz v5, :cond_30

    goto :goto_37

    :cond_30
    sub-float v0, p1, v0

    div-float/2addr v0, v3

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    :goto_37
    div-float/2addr p1, p0

    goto :goto_3a

    :cond_39
    div-float/2addr p1, v1

    :goto_3a
    invoke-static {p1, v2, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    iput v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchY:F

    iput v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mStartThresholdX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    iput v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    return-void
.end method

.method public setGestureStartLocation(FFI)V
    .registers 4

    iput p1, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchX:F

    iput p2, p0, Lcom/android/wm/shell/back/TouchTracker;->mInitTouchY:F

    iput p3, p0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    iput p1, p0, Lcom/android/wm/shell/back/TouchTracker;->mStartThresholdX:F

    return-void
.end method

.method public setProgressThresholds(FFF)V
    .registers 5

    sget v0, Lcom/android/wm/shell/back/TouchTracker;->LINEAR_DISTANCE:I

    if-ltz v0, :cond_8

    int-to-float p1, v0

    iput p1, p0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    goto :goto_a

    :cond_8
    iput p1, p0, Lcom/android/wm/shell/back/TouchTracker;->mLinearDistance:F

    :goto_a
    iput p2, p0, Lcom/android/wm/shell/back/TouchTracker;->mMaxDistance:F

    iput p3, p0, Lcom/android/wm/shell/back/TouchTracker;->mNonLinearFactor:F

    return-void
.end method

.method public setTriggerBack(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    if-eq v0, p1, :cond_9

    if-nez p1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    :cond_9
    iput-boolean p1, p0, Lcom/android/wm/shell/back/TouchTracker;->mTriggerBack:Z

    return-void
.end method

.method public update(FFFF)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_e

    iget v1, p0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    if-eqz v1, :cond_17

    :cond_e
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1c

    iget v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mSwipeEdge:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/TouchTracker;->mCancelled:Z

    iput p1, p0, Lcom/android/wm/shell/back/TouchTracker;->mStartThresholdX:F

    :cond_1c
    iput p1, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchX:F

    iput p2, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestTouchY:F

    iput p3, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityX:F

    iput p4, p0, Lcom/android/wm/shell/back/TouchTracker;->mLatestVelocityY:F

    return-void
.end method
