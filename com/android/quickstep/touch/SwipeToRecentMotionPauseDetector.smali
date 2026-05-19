.class public Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;
.super Lcom/android/quickstep/util/MotionPauseDetector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;
    }
.end annotation


# static fields
.field private static final DECEL_SLOW_THRESHOLD:F = 0.6f

.field private static final DECEL_SOMEWHAT_SLOW_THRESHOLD:F = 0.65f

.field private static final FAST_SPEED:F = 3.5f

.field private static final FAST_SPEED_LOCATION_THRESHOLD:F = 0.7f

.field private static final PAUSE_SPEED_THRESHOLD:F = 0.1f

.field private static final SLOW_SPEED:F = 2.5f

.field private static final SLOW_SPEED_LOCATION_PAD_THRESHOLD:F = 0.95f

.field private static final SLOW_SPEED_LOCATION_THRESHOLD:F = 0.96f

.field private static final TAG:Ljava/lang/String; = "SwipeToRecentMotionPauseDetector "


# instance fields
.field private mAllowCancel:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPauseSpeedFast:F

.field private mPauseSpeedMedium:F

.field private mPauseSpeedSlow:F

.field private mPauseSpeedSomeWhatFast:F

.field private mPreviousVelocityX:Ljava/lang/Float;

.field private mQuickSwipeUpFlag:Z

.field private mScreenHeight:I

.field private mVelocityProviderX:Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;-><init>(Lcom/android/launcher3/Launcher;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Z)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mScreenHeight:I

    new-instance p1, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;-><init>(I)V

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    const p1, 0x7f070f62

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSlow:F

    const p1, 0x7f070f61

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedMedium:F

    const p1, 0x7f070f5f

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSomeWhatFast:F

    const p1, 0x7f070f60

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedFast:F

    return-void
.end method


# virtual methods
.method public addPosition(Landroid/view/MotionEvent;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->addMotionEvent(Landroid/view/MotionEvent;I)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->getVelocityX()F

    move-result v6

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    if-eqz v0, :cond_2c

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v0, p0

    move v3, v6

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->checkMotionPaused(FFFFLandroid/view/MotionEvent;)V

    :cond_2c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p1

    if-eqz p1, :cond_48

    const-string p1, "addPosition: "

    const-string v0, "  "

    invoke-static {p1, p2, v0}, Lc0/a;->a(Ljava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwipeToRecentMotionPauseDetector "

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPreviousVelocityX:Ljava/lang/Float;

    return-void
.end method

.method public checkMotionPaused(FFFFLandroid/view/MotionEvent;)V
    .registers 15

    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L  # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    float-to-double v5, p1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v5, p4

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v7, p2

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mScreenHeight:I

    int-to-float v4, v4

    const v5, 0x3f75c28f  # 0.96f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    const/4 v4, 0x0

    const v5, 0x3f19999a  # 0.6f

    const/4 v6, 0x1

    if-gtz v3, :cond_67

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const v7, 0x3f333333  # 0.7f

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_46

    iget v3, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedMedium:F

    goto :goto_48

    :cond_46
    iget v3, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSlow:F

    :goto_48
    mul-float/2addr v5, p2

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5c

    iget v5, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSomeWhatFast:F

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5c

    const v5, 0x3f266666  # 0.65f

    mul-float/2addr v2, v5

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5c

    move v4, v6

    :cond_5c
    iget-boolean v1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mQuickSwipeUpFlag:Z

    if-nez v1, :cond_7d

    if-nez v4, :cond_7d

    cmpg-float v1, p1, v3

    if-gez v1, :cond_7e

    goto :goto_7d

    :cond_67
    iget-boolean v3, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    if-eqz v3, :cond_7e

    iget-boolean v3, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    if-eqz v3, :cond_7e

    iget v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mPauseSpeedSomeWhatFast:F

    cmpl-float v0, v1, v0

    if-gtz v0, :cond_7d

    mul-float/2addr v2, v5

    cmpg-float v0, v1, v2

    if-gez v0, :cond_7b

    goto :goto_7d

    :cond_7b
    move v0, v4

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v0, v6

    :cond_7e
    :goto_7e
    iget-boolean v1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    if-eq v1, v0, :cond_d2

    const-string v1, "checkMotionPaused: "

    const-string v2, " mAllowCancel: "

    invoke-static {v1, v0, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mIsPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", velocityY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", prevVelocityY="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", velocityX="

    const-string v2, ", prevVelocityX="

    invoke-static {v1, p2, p1, p3, v2}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", ev.Y="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SwipeToRecentMotionPauseDetector "

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    :cond_d2
    return-void
.end method

.method public clear()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    return-void
.end method

.method public getVelocityX()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    instance-of v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;->getXVelocity()F

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getVelocityY()F
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    instance-of v0, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;

    invoke-virtual {p0}, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector$OplusSystemVelocityProvider;->getYVelocity()F

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public setAllowCancel(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mAllowCancel:Z

    return-void
.end method

.method public setQuickSwipeUp(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mQuickSwipeUpFlag:Z

    return-void
.end method

.method public updateSreenHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/touch/SwipeToRecentMotionPauseDetector;->mScreenHeight:I

    return-void
.end method
