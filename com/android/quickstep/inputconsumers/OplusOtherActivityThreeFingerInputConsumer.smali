.class public final Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;
.super Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer$Companion;
    }
.end annotation


# static fields
.field public static final CANCEL_RECENTS_ANIMATION_DELAY:J = 0x64L

.field public static final Companion:Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusOtherActivityThreeFingerInputConsumer"

.field public static final THREE_POINTER:I = 0x3


# instance fields
.field private mIsHorizontalMove:Z

.field private mLastVelocityX:F

.field private mLastVelocityY:F

.field private mMayContinueThreeFingerInputConsumer:Z

.field private mStartTouchTracking:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->Companion:Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/oplus/quickstep/gesture/OplusGestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/quickstep/RecentsAnimationDeviceState;",
            "Lcom/android/quickstep/TaskAnimationManager;",
            "Lcom/oplus/quickstep/gesture/OplusGestureState;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;",
            ">;",
            "Lcom/android/systemui/shared/system/InputMonitorCompat;",
            "Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;",
            "Z",
            "Lcom/android/quickstep/AbsSwipeUpHandler$Factory;",
            "Z)V"
        }
    .end annotation

    const-string v0, "base"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "taskAnimationManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureState"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onCompleteCallback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handlerFactory"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p10}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/oplus/quickstep/gesture/OplusGestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V

    iput-boolean p11, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mMayContinueThreeFingerInputConsumer:Z

    return-void
.end method


# virtual methods
.method public finishTouchTracking(Landroid/view/MotionEvent;)V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mStartTouchTracking:Z

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v1, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-nez v1, :cond_f

    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    sput-boolean v0, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    return-void

    :cond_f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "OplusOtherActivityThreeFingerInputConsumer"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_50

    const-string v1, "finishTouchTracking(), mPassedWindowMoveSlop="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mInteractionHandler null ? "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-nez v5, :cond_2f

    move v5, v4

    goto :goto_30

    :cond_2f
    move v5, v0

    :goto_30
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_44

    :cond_43
    move-object v5, v3

    :goto_44
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "QuickStep"

    invoke-static {v5, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    invoke-virtual {p0, v0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyDragging(Z)V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v5, 0x4

    const-string v6, "OtherActivityInputConsumer.UP"

    invoke-virtual {v1, v6, v5}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    iget-boolean v5, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz v5, :cond_e5

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v5, :cond_e5

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_75

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    goto/16 :goto_14e

    :cond_75
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p1

    const/4 v5, 0x0

    cmpg-float v6, p1, v5

    if-nez v6, :cond_88

    move v0, v4

    :cond_88
    if-eqz v0, :cond_8f

    iget p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mLastVelocityX:F

    iget v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mLastVelocityY:F

    goto :goto_90

    :cond_8f
    move v0, v5

    :goto_90
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v4}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v4

    if-eqz v4, :cond_9a

    move v4, p1

    goto :goto_a5

    :cond_9a
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v4}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v4

    if-eqz v4, :cond_a4

    neg-float v4, p1

    goto :goto_a5

    :cond_a4
    move v4, v0

    :goto_a5
    iget-object v6, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v6, v5}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateDisplacement(F)V

    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v6, v5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v6, :cond_b3

    check-cast v5, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_b4

    :cond_b3
    move-object v5, v3

    :goto_b4
    if-eqz v5, :cond_14e

    const-string/jumbo v6, "velocity="

    const-string v7, ", velocityX="

    const-string v8, ", velocityY="

    invoke-static {v6, v4, v7, p1, v8}, La0/a;->a(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v5, v4, v2, p1, v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    sget-object p1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {p1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object p1

    invoke-virtual {v5}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    goto :goto_14e

    :cond_e5
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz p1, :cond_f8

    instance-of v2, p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v2, :cond_f8

    const-string/jumbo v2, "null cannot be cast to non-null type com.oplus.quickstep.gesture.OplusBaseSwipeUpHandler<@[FlexibleNullability] com.android.launcher3.statemanager.StatefulActivity<@[FlexibleNullability] com.android.launcher3.statemanager.BaseState<*>?>?, @[FlexibleNullability] com.android.quickstep.views.RecentsView<*, *>?, *>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->restoreStateIfNeed()V

    :cond_f8
    sget-boolean p1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_126

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz p1, :cond_126

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz p1, :cond_126

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_112

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    goto :goto_126

    :cond_112
    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->getMCleanupHandler()Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->setPostTime(J)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->getMCleanupHandler()Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_126
    :goto_126
    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onConsumerAboutToBeSwitched()V

    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->onInteractionGestureFinished()V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimationIfNeed()Z

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->getFinishRecentsAnimImmediately()Z

    move-result p1

    if-eqz p1, :cond_143

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_143
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sput-boolean v0, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    :cond_14e
    :goto_14e
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "TYPE_OTHER_ACTIVITY_THREE_FINGER"

    return-object p0
.end method

.method public getType()I
    .registers 1

    const/high16 p0, 0x10000000

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_351

    if-nez v1, :cond_c

    goto/16 :goto_351

    :cond_c
    iget-boolean v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz v2, :cond_3e

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v2, :cond_3e

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v2}, Lcom/android/quickstep/util/CachedEventDispatcher;->hasConsumer()Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v4}, Lcom/android/quickstep/util/NavBarPosition;->getRotation()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsViewDispatcher(F)Ljava/util/function/Consumer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/CachedEventDispatcher;->setConsumer(Ljava/util/function/Consumer;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v3, 0xfe

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    or-int/lit16 v3, v2, 0x100

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mStartTouchTracking:Z

    const/4 v4, 0x5

    const-string v5, "OplusOtherActivityThreeFingerInputConsumer"

    const-string v6, "QuickStep"

    const/4 v7, 0x0

    if-nez v3, :cond_6d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v4, :cond_6d

    const-string/jumbo v3, "transform POINTER_DOWN to DOWN when first detect Consumer"

    invoke-static {v6, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v8, v1}, Lcom/android/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_72

    :cond_6d
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {v3, v1}, Lcom/android/quickstep/util/CachedEventDispatcher;->dispatchEvent(Landroid/view/MotionEvent;)V

    :goto_72
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v3, :cond_e8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    if-ne v2, v10, :cond_e8

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v2

    iget-object v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v10

    cmpg-float v11, v2, v8

    if-nez v11, :cond_aa

    move v11, v9

    goto :goto_ab

    :cond_aa
    move v11, v7

    :goto_ab
    if-nez v11, :cond_ba

    cmpg-float v11, v10, v8

    if-nez v11, :cond_b3

    move v11, v9

    goto :goto_b4

    :cond_b3
    move v11, v7

    :goto_b4
    if-nez v11, :cond_ba

    iput v2, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mLastVelocityX:F

    iput v8, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mLastVelocityY:F

    :cond_ba
    const-string/jumbo v11, "onMotionEvent() record velocity, mLastVelocityX="

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mLastVelocityX:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", mLastVelocityY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mLastVelocityY:F

    const-string v13, ", velocityX="

    const-string v14, ", velocityY="

    invoke-static {v11, v12, v13, v2, v14}, Lcom/android/launcher/folder/recommend/view/c;->a(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v2}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    :cond_e8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const-string v10, ", mDownPos="

    const/4 v11, 0x3

    if-eqz v2, :cond_2c1

    if-eq v2, v9, :cond_285

    const/4 v12, 0x2

    if-eq v2, v12, :cond_167

    if-eq v2, v11, :cond_285

    if-eq v2, v4, :cond_2c1

    if-eq v2, v3, :cond_fe

    goto/16 :goto_340

    :cond_fe
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    if-ne v3, v4, :cond_141

    if-nez v2, :cond_10d

    move v7, v9

    :cond_10d
    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v8

    sub-float/2addr v3, v4

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v8, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v12, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float/2addr v8, v12

    sub-float/2addr v4, v8

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    :cond_141
    const-string v2, "ACTION_POINTER_UP, mActivePointerId="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mLastPos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_340

    :cond_167
    iget v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_171

    return-void

    :cond_171
    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->getDisplacement(Landroid/view/MotionEvent;)F

    move-result v2

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget-object v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v12, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v12

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    iget-boolean v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-nez v10, :cond_1ab

    iget-boolean v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    if-nez v10, :cond_1ab

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v12, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTouchSlop:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_1ab

    iput-boolean v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    neg-float v10, v12

    invoke-static {v2, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mStartDisplacement:F

    :cond_1ab
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    div-float v10, v12, v10

    float-to-double v13, v10

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    const-wide/high16 v15, 0x4035000000000000L  # 21.0

    cmpg-double v10, v13, v15

    if-gtz v10, :cond_1c6

    move v10, v9

    goto :goto_1c7

    :cond_1c6
    move v10, v7

    :goto_1c7
    invoke-static {v4, v3}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v13

    iget v14, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mSquaredTouchSlop:F

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_1d3

    move v13, v9

    goto :goto_1d4

    :cond_1d3
    move v13, v7

    :goto_1d4
    iget-boolean v14, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedSlopOnThisGesture:Z

    if-nez v14, :cond_1de

    if-eqz v13, :cond_1de

    iput-boolean v10, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mIsHorizontalMove:Z

    iput-boolean v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedSlopOnThisGesture:Z

    :cond_1de
    iget-boolean v14, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedSlopOnThisGesture:Z

    if-nez v14, :cond_1e8

    iget-boolean v14, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    if-eqz v14, :cond_1e8

    move v14, v9

    goto :goto_1e9

    :cond_1e8
    move v14, v7

    :goto_1e9
    if-nez v14, :cond_1f0

    if-eqz v10, :cond_1ee

    goto :goto_1f0

    :cond_1ee
    move v10, v7

    goto :goto_1f1

    :cond_1f0
    :goto_1f0
    move v10, v9

    :goto_1f1
    iget-boolean v14, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    if-nez v14, :cond_23b

    iget-boolean v14, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mIsHorizontalMove:Z

    if-eqz v14, :cond_23b

    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->startTouchTrackingForWindowAnimationCustomize(Landroid/view/MotionEvent;)V

    if-eqz v13, :cond_23b

    iget-boolean v13, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDisableHorizontalSwipe:Z

    if-eqz v13, :cond_214

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_214

    const-string v0, "horizontal gesture is not allowed in this region, so force cancel gesture"

    invoke-static {v6, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_214
    iput-boolean v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    invoke-virtual {v0, v3}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->shouldStartTouchTrackingForWindowAnimation(Z)Z

    move-result v3

    if-eqz v3, :cond_226

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->startTouchTrackingForWindowAnimation(J)V

    goto :goto_229

    :cond_226
    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->startTouchTrackingForWindowAnimationCustomize(Landroid/view/MotionEvent;)V

    :goto_229
    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-nez v3, :cond_238

    iput-boolean v9, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    iget v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTouchSlop:F

    neg-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mStartDisplacement:F

    :cond_238
    invoke-virtual {v0, v10}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyGestureStarted(Z)V

    :cond_23b
    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v2, :cond_340

    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz v3, :cond_246

    invoke-virtual {v2, v8}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateDisplacement(F)V

    :cond_246
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isHomeGestureLightAnimation()Z

    move-result v2

    if-nez v2, :cond_25a

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v2

    if-eqz v2, :cond_25a

    invoke-virtual {v0, v9}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyDragging(Z)V

    goto :goto_25d

    :cond_25a
    invoke-virtual {v0, v7}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyDragging(Z)V

    :goto_25d
    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v2

    if-eqz v2, :cond_280

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseMinDisplacement:F

    cmpg-float v3, v12, v3

    if-ltz v3, :cond_272

    if-eqz v10, :cond_270

    goto :goto_272

    :cond_270
    move v3, v7

    goto :goto_273

    :cond_272
    :goto_272
    move v3, v9

    :goto_273
    invoke-virtual {v2, v3}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v2, v10}, Lcom/android/quickstep/AbsSwipeUpHandler;->setIsLikelyToStartNewTask(Z)V

    :cond_280
    invoke-virtual {v0, v7}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyDragging(Z)V

    goto/16 :goto_340

    :cond_285
    iget v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMotionEvent(), ev.actionMasked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v11, :cond_2a6

    const-string v4, "cancel"

    goto :goto_2a9

    :cond_2a6
    const-string/jumbo v4, "up"

    :goto_2a9
    invoke-static {v3, v4, v6, v5}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {v0, v7}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->setMIsExpectStartWindowAnimOfNativeLogic(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    goto/16 :goto_340

    :cond_2c1
    sget-object v2, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetState()V

    iget-boolean v2, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mMayContinueThreeFingerInputConsumer:Z

    if-nez v2, :cond_2d5

    iget-object v2, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v2, v7}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    :cond_2d5
    sget-object v2, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v3, 0x4

    const-string v4, "OtherActivityInputConsumer.DOWN"

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v4, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object v4, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    xor-int/2addr v3, v9

    invoke-virtual {v0, v3}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->shouldStartTouchTrackingForWindowAnimation(Z)Z

    move-result v3

    if-eqz v3, :cond_310

    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mStartTouchTracking:Z

    if-nez v3, :cond_310

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->startTouchTrackingForWindowAnimation(J)V

    :cond_310
    sget-object v3, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DOWN or ACTION_POINTER_DOWN, mActivePointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mMayContinueThreeFingerInputConsumer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mMayContinueThreeFingerInputConsumer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mStartTouchTracking="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mStartTouchTracking:Z

    invoke-static {v2, v0, v6, v5}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_340
    :goto_340
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v11, :cond_34c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v9, :cond_351

    :cond_34c
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_WINDOW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    :cond_351
    :goto_351
    return-void
.end method

.method public startTouchTrackingForWindowAnimation(J)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;->mStartTouchTracking:Z

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->startTouchTrackingForWindowAnimation(J)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_11

    :cond_10
    move-object p0, p2

    :goto_11
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    goto :goto_19

    :cond_18
    move-object p0, p2

    :goto_19
    instance-of p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p1, :cond_20

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_21

    :cond_20
    move-object p0, p2

    :goto_21
    if-eqz p0, :cond_26

    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngle(Ljava/lang/Double;)V

    :cond_26
    return-void
.end method
