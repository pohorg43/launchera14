.class public Lcom/android/quickstep/util/MotionPauseDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;,
        Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
    }
.end annotation


# static fields
.field private static final FORCE_PAUSE_TIMEOUT:J = 0x12cL

.field private static final HARDER_TRIGGER_TIMEOUT:J = 0x190L

.field private static final RAPID_DECELERATION_FACTOR:F = 0.6f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDisallowPause:Z

.field private final mForcePauseTimeout:Lcom/android/launcher3/Alarm;

.field private mHasEverBeenPaused:Z

.field public mIsPaused:Z

.field private final mMakePauseHarderToTrigger:Z

.field private mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

.field public mPreviousVelocity:Ljava/lang/Float;

.field private mSlowStartTime:J

.field private final mSpeedFast:F

.field private final mSpeedSlow:F

.field private final mSpeedSomewhatFast:F

.field private final mSpeedVerySlow:F

.field public mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ae8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedVerySlow:F

    const v0, 0x7f070ae6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSlow:F

    const v0, 0x7f070ae7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSomewhatFast:F

    const v0, 0x7f070ae5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedFast:F

    new-instance p1, Lcom/android/launcher3/Alarm;

    invoke-direct {p1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/android/launcher3/Alarm;

    new-instance v0, Lcom/android/launcher3/folder/o;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/o;-><init>(Lcom/android/quickstep/util/MotionPauseDetector;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iput-boolean p2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    new-instance p1, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-direct {p1, p3}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;-><init>(I)V

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/MotionPauseDetector;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;->lambda$new$0(Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private checkMotionPaused(FFJ)V
    .registers 10

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMotionPaused:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionPauseDetector"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-boolean v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_41

    iget p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedFast:F

    cmpg-float p2, v0, p1

    if-ltz p2, :cond_3e

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v4

    :cond_3e
    :goto_3e
    move v4, v3

    goto/16 :goto_9e

    :cond_41
    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-gez p1, :cond_48

    move p1, v3

    goto :goto_49

    :cond_48
    move p1, v4

    :goto_49
    cmpg-float p2, p2, v2

    if-gez p2, :cond_4f

    move p2, v3

    goto :goto_50

    :cond_4f
    move p2, v4

    :goto_50
    if-eq p1, p2, :cond_53

    goto :goto_9e

    :cond_53
    iget p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedVerySlow:F

    cmpg-float p2, v0, p1

    if-gez p2, :cond_5f

    cmpg-float p1, v1, p1

    if-gez p1, :cond_5f

    move p1, v3

    goto :goto_60

    :cond_5f
    move p1, v4

    :goto_60
    if-nez p1, :cond_7c

    iget-boolean p2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    if-nez p2, :cond_7c

    const p1, 0x3f19999a  # 0.6f

    mul-float/2addr v1, p1

    cmpg-float p1, v0, v1

    if-gez p1, :cond_70

    move p1, v3

    goto :goto_71

    :cond_70
    move p1, v4

    :goto_71
    if-eqz p1, :cond_7b

    iget p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSomewhatFast:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7b

    move p1, v3

    goto :goto_7c

    :cond_7b
    move p1, v4

    :cond_7c
    :goto_7c
    iget-boolean p2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    if-eqz p2, :cond_9d

    iget p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSpeedSlow:F

    cmpg-float p1, v0, p1

    const-wide/16 v0, 0x0

    if-gez p1, :cond_9a

    iget-wide p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_90

    iput-wide p3, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    :cond_90
    iget-wide p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x190

    cmp-long p1, p3, p1

    if-ltz p1, :cond_3d

    goto :goto_3e

    :cond_9a
    iput-wide v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    goto :goto_9e

    :cond_9d
    move v4, p1

    :goto_9e
    invoke-virtual {p0, v4}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/launcher3/Alarm;)V
    .registers 2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    return-void
.end method


# virtual methods
.method public addPosition(Landroid/view/MotionEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public addPosition(Landroid/view/MotionEvent;I)V
    .registers 6

    sget-object v0, Lcom/android/launcher3/testing/TestProtocol;->sForcePauseTimeout:Ljava/lang/Long;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_12

    :cond_9
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mMakePauseHarderToTrigger:Z

    if-eqz v0, :cond_10

    const-wide/16 v0, 0x190

    goto :goto_12

    :cond_10
    const-wide/16 v0, 0x12c

    :goto_12
    iget-object v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->addMotionEvent(Landroid/view/MotionEvent;I)F

    move-result p2

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/quickstep/util/MotionPauseDetector;->checkMotionPaused(FFJ)V

    :cond_30
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    return-void
.end method

.method public clear()V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mVelocityProvider:Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;

    invoke-virtual {v0}, Lcom/android/quickstep/util/MotionPauseDetector$SystemVelocityProvider;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mPreviousVelocity:Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    iput-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mSlowStartTime:J

    iget-object p0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mForcePauseTimeout:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public isPaused()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    return p0
.end method

.method public setDisallowPause(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mDisallowPause:Z

    iget-boolean p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/MotionPauseDetector;->updatePaused(Z)V

    return-void
.end method

.method public setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    return-void
.end method

.method public updatePaused(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mDisallowPause:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move p1, v1

    :cond_6
    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    if-eq v0, p1, :cond_2f

    iput-boolean p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    iget-boolean v0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    const/4 v2, 0x1

    if-nez v0, :cond_14

    if-eqz p1, :cond_14

    move v1, v2

    :cond_14
    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendPauseDetectedEventToTest(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mHasEverBeenPaused:Z

    :cond_1d
    iget-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    if-eqz p1, :cond_2f

    if-eqz v1, :cond_26

    invoke-interface {p1}, Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;->onMotionPauseDetected()V

    :cond_26
    iget-object p1, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mOnMotionPauseListener:Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    if-eqz p1, :cond_2f

    iget-boolean p0, p0, Lcom/android/quickstep/util/MotionPauseDetector;->mIsPaused:Z

    invoke-interface {p1, p0}, Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;->onMotionPauseChanged(Z)V

    :cond_2f
    return-void
.end method
