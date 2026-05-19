.class public Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;
.super Lcom/android/launcher3/touch/SingleAxisSwipeDetector;
.source ""


# instance fields
.field private isQuickSwitch:Z

.field private tanAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "l"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dir"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Listener;Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;)V

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->tanAngle:F

    return-void
.end method


# virtual methods
.method public compareXDisplacement()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->isQuickSwitch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sget v0, Lcom/android/launcher3/touch/BaseSwipeDetector;->X_DISPLACEMENT:I

    int-to-float v0, v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :cond_16
    :goto_16
    return v1
.end method

.method public final getTanAngle()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->tanAngle:F

    return p0
.end method

.method public initializeDragging()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mState:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    sget-object v1, Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;->SETTLING:Lcom/android/launcher3/touch/BaseSwipeDetector$ScrollState;

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_1d

    :cond_11
    iget-object v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mDisplacement:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iput p0, v0, Landroid/graphics/PointF;->y:F

    :goto_1d
    return-void
.end method

.method public final isQuickSwitch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->isQuickSwitch:Z

    return p0
.end method

.method public final setQuickSwitch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->isQuickSwitch:Z

    return-void
.end method

.method public final setTanAngle(F)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->tanAngle:F

    return-void
.end method

.method public shouldScrollStart(Landroid/graphics/PointF;)Z
    .registers 6

    iget v0, p0, Lcom/android/launcher3/touch/BaseSwipeDetector;->mTouchSlop:F

    iget v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mTouchSlopMultiplier:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_15

    return v1

    :cond_15
    iget-object v0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractDirection(Landroid/graphics/PointF;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->mDir:Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;->extractOrthogonalDirection(Landroid/graphics/PointF;)F

    move-result p1

    iget v3, p0, Lcom/android/launcher3/touch/OplusSingleAxisSwipeDetector;->tanAngle:F

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_31

    return v1

    :cond_31
    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->canScrollNegative(F)Z

    move-result p1

    if-nez p1, :cond_3d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector;->canScrollPositive(F)Z

    move-result p0

    if-eqz p0, :cond_3e

    :cond_3d
    const/4 v1, 0x1

    :cond_3e
    return v1
.end method
