.class public final Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;
.super Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl$Companion;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl$Companion;

.field private static final INVALID_ACTIVITY_TYPE:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusOverviewWithoutFocusConsumer"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private activityType:I

.field private appBounds:Landroid/graphics/Rect;

.field private downPos:Landroid/graphics/PointF;

.field private final goHomeImmediatelyTouchSlop:I

.field private isPointInValid:Z

.field private isRecentsAnimationFinishingToApp:Z

.field private isTrackerRecycled:Z

.field private onInterceptTouchMove:Z

.field private touchSlop:I

.field private final velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->Companion:Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;ZZ)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    iput-boolean p6, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isRecentsAnimationFinishingToApp:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->activityType:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->touchSlop:I

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_29

    const p2, 0x7f070c51

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_2b

    :cond_29
    iget p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->touchSlop:I

    :goto_2b
    iput p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->goHomeImmediatelyTouchSlop:I

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    const-string/jumbo p2, "obtain()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->velocityTracker:Landroid/view/VelocityTracker;

    iget-object p2, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    if-eqz p2, :cond_71

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    if-eqz p2, :cond_71

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_64

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    goto :goto_69

    :cond_64
    const-string p4, "it.appBounds ?: Rect()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_69
    iput-object p3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p2

    iput p2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->activityType:I

    :cond_71
    sget-object p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setVelocityTracker(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method private final checkPointInValid(Landroid/view/MotionEvent;)Z
    .registers 5

    iget v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->activityType:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1e

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_2e

    :cond_1c
    const/4 v2, 0x0

    goto :goto_2e

    :cond_1e
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    :cond_2e
    :goto_2e
    return v2
.end method

.method private final endTouchTrackingIfNeed(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isTrackerRecycled:Z

    if-nez v0, :cond_2e

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p1, v0, :cond_e

    if-ne p1, v1, :cond_2e

    :cond_e
    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isTrackerRecycled:Z

    :try_start_10
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_15
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_2e

    :catch_16
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tracker recycle exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusOverviewWithoutFocusConsumer"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    return-void
.end method


# virtual methods
.method public onInterceptTouch()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->onInterceptTouch()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->onInterceptTouchMove:Z

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 9

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isPointInValid:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->endTouchTrackingIfNeed(Landroid/view/MotionEvent;)V

    return-void

    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-string v1, "OplusOverviewWithoutFocusConsumer"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->checkPointInValid(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_47

    iput-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isPointInValid:Z

    const-string/jumbo p0, "onMotionEvent: point not in apps bounds, so we should not inject event"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isPointInValid:Z

    :cond_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->downPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v0, v4}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v5

    iget v6, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->touchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_67

    goto :goto_68

    :cond_67
    move v2, v3

    :goto_68
    sget-object v5, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v5}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v5, p1, v2}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptAndInjectMotionEvent(Landroid/view/MotionEvent;Z)Z

    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isRecentsAnimationFinishingToApp:Z

    if-eqz v2, :cond_9f

    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->onInterceptTouchMove:Z

    if-eqz v2, :cond_9f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9f

    invoke-static {v0, v4}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v2, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->goHomeImmediatelyTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_9f

    const-string v0, "QuickStep"

    const-string/jumbo v2, "recentsAnimationFinishingToApp==true, return to home."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p0, v3, v0}, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->onSwipeUp(ZLandroid/graphics/PointF;)V

    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->isRecentsAnimationFinishingToApp:Z

    :cond_9f
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;->endTouchTrackingIfNeed(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSwipeUp(ZLandroid/graphics/PointF;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->onSwipeUp(ZLandroid/graphics/PointF;)V

    const-string/jumbo p1, "recentapps"

    invoke-static {p1}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManager()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    new-instance p2, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;

    const/4 v0, 0x1

    invoke-direct {p2, v0, v0}, Lcom/oplus/quickstep/events/ui/FinishRunningRecentsAnimationEvent;-><init>(ZZ)V

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;->mContext:Landroid/content/Context;

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_26

    check-cast p0, Lcom/android/launcher/Launcher;

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    if-eqz p0, :cond_35

    const/4 p1, 0x0

    const-string p2, "app_recent_exit"

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->startWallpaperAnimation(ZLjava/lang/String;)V

    :cond_35
    return-void
.end method
