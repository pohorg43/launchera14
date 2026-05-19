.class public Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;
.super Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;
.source ""

# interfaces
.implements Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;,
        Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusOtherActivityInputConsumer"


# instance fields
.field private downPos:Landroid/graphics/PointF;

.field private finishRecentsAnimImmediately:Z

.field private forceNotInterceptEvent:Z

.field private hadBeenPeeked:Z

.field private lastPos:Landroid/graphics/PointF;

.field private final mCleanupHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

.field private mGestureStateChangeListener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

.field private mHasBeenInMove:Z

.field private mInMistouch:Z

.field private mInterceptCancelInvalidAnimationTask:Z

.field private mIsExpectStartWindowAnimOfNativeLogic:Z

.field private mIsOplusDeferredDownTarget:Z

.field private mLastGestureToNewTask:Z

.field private mOplusPassedPilferInputSlop:Z

.field private mOplusSquaredTouchSlop:F

.field private mPassedMinimumMoveSlop:Z

.field private mSquaredMinimumTouchSlop:F

.field private final motionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

.field private pointerDownInjected:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->Companion:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/oplus/quickstep/gesture/OplusGestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V
    .registers 12
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
            ")V"
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

    invoke-direct/range {p0 .. p10}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->downPos:Landroid/graphics/PointF;

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->lastPos:Landroid/graphics/PointF;

    iget p2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTouchSlop:F

    mul-float/2addr p2, p2

    const/4 p4, 0x2

    int-to-float p4, p4

    div-float/2addr p2, p4

    iput p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mSquaredMinimumTouchSlop:F

    new-instance p2, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    const-string p4, "CleanupHandler"

    invoke-direct {p2, p4}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mCleanupHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    new-instance p2, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p6, 0x7f070158

    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-direct {p2, p4}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;-><init>(F)V

    iput-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->motionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    sget-object p2, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    iget-object p6, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p4, p6}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setHandler(Landroid/os/Handler;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    iget-object p6, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p4, p6}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setVelocityTracker(Landroid/view/VelocityTracker;)V

    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    sget-object p6, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p6, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p4, p1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setDisplayRotation(I)V

    new-instance p1, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$1;-><init>(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mGestureStateChangeListener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p1

    const/4 p4, 0x0

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-eqz p1, :cond_ae

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p8, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p8, :cond_9e

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_9f

    :cond_9e
    move-object p1, p4

    :goto_9f
    if-eqz p1, :cond_a9

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning()Z

    move-result p1

    if-ne p1, p7, :cond_a9

    move p1, p7

    goto :goto_aa

    :cond_a9
    move p1, p6

    :goto_aa
    if-eqz p1, :cond_ae

    iput-boolean p7, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedSlopOnThisGesture:Z

    :cond_ae
    invoke-virtual {p2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    iget-object p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mGestureStateChangeListener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setListener(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;)V

    invoke-virtual {p3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_c8

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/FastGestureHelper;->isFastGesture()Z

    move-result p1

    if-eqz p1, :cond_c6

    goto :goto_c8

    :cond_c6
    move p1, p6

    goto :goto_c9

    :cond_c8
    :goto_c8
    move p1, p7

    :goto_c9
    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->forceNotInterceptEvent:Z

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p2, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p2, :cond_d4

    move-object p4, p1

    check-cast p4, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_d4
    if-eqz p4, :cond_db

    invoke-virtual {p4}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewTask()Z

    move-result p1

    goto :goto_dc

    :cond_db
    move p1, p6

    :goto_dc
    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mLastGestureToNewTask:Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070bf9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusSquaredTouchSlop:F

    invoke-virtual {p3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p1

    iget-boolean p2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    iput-boolean p2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusPassedPilferInputSlop:Z

    if-nez p1, :cond_fa

    sget-boolean p2, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_fa

    move p6, p7

    :cond_fa
    iput-boolean p6, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsOplusDeferredDownTarget:Z

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p2

    if-eqz p2, :cond_136

    const-string p2, "init: forceNotInterceptEvent = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean p3, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->forceNotInterceptEvent:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", lastGestureToNewTask = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mLastGestureToNewTask:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mOplusPassedPilferInputSlop = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusPassedPilferInputSlop:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mIsOplusDeferredDownTarget = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsOplusDeferredDownTarget:Z

    const-string p3, ", continuing="

    const-string p4, ", isDeferredDownTarget="

    invoke-static {p2, p0, p3, p1, p4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p0, "QuickStep"

    const-string p1, "OplusOtherActivityInputConsumer"

    invoke-static {p2, p5, p0, p1}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_136
    return-void
.end method

.method public static final synthetic access$superMotionEvent(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->superMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->startTouchTrackingForWindowAnimation$lambda$2(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;)V

    return-void
.end method

.method private final isTabletAndFromMouse(Landroid/view/MotionEvent;)Z
    .registers 2

    const/16 p0, 0x2002

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p0

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private final needPointerDownCancelGesture()Z
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    goto :goto_11

    :cond_10
    move-object p0, v0

    :goto_11
    instance-of v1, p0, Lcom/android/launcher3/BaseDraggingActivity;

    if-eqz v1, :cond_16

    move-object v0, p0

    :cond_16
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private static final startTouchTrackingForWindowAnimation$lambda$2(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->onInteractionGestureFinished()V

    return-void
.end method

.method private final superMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_c

    if-eq v0, v2, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimationIfNeed()Z

    :cond_1b
    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_WINDOW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method


# virtual methods
.method public addRecentsAnimationCallbackListener()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusOtherActivityInputConsumer"

    const-string v2, "addRecentsAnimationCallbackListener"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-nez p0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_15
    :goto_15
    return-void
.end method

.method public checkPreviousSwipeFinished()V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    goto :goto_15

    :cond_14
    move-object v1, v2

    :goto_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLastInputFinished, running="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", endTarget="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusOtherActivityInputConsumer"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    goto :goto_51

    :cond_3d
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const-string/jumbo v3, "mTaskAnimationManager"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :cond_4c
    move v1, v4

    :goto_4d
    const/4 v3, 0x2

    invoke-static {v0, v1, v4, v3, v2}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimation$default(Lcom/android/quickstep/OplusBaseTaskAnimationManager;ZZILjava/lang/Object;)V

    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    :cond_5d
    return-void
.end method

.method public finishTouchTracking(Landroid/view/MotionEvent;)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v0, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    sput-boolean v1, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    return-void

    :cond_d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_64

    const-string v0, "finishTouchTracking(), mPassedWindowMoveSlop="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mInteractionHandler null ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-nez v4, :cond_2b

    move v4, v2

    goto :goto_2c

    :cond_2b
    move v4, v1

    :goto_2c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_40

    :cond_3f
    move-object v4, v3

    :goto_40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", hasGestureStart="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v4, :cond_55

    invoke-virtual {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasGestureStart()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_56

    :cond_55
    move-object v4, v3

    :goto_56
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "QuickStep"

    const-string v5, "OplusOtherActivityInputConsumer"

    invoke-static {v4, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    invoke-virtual {p0, v1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyDragging(Z)V

    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v4, 0x4

    const-string v5, "OtherActivityInputConsumer.UP"

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/util/TraceHelper;->beginSection(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz v4, :cond_eb

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v4, :cond_eb

    invoke-virtual {v4}, Lcom/android/quickstep/AbsSwipeUpHandler;->hasGestureStart()Z

    move-result v4

    if-eqz v4, :cond_eb

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_8f

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureCancelled()V

    goto/16 :goto_14e

    :cond_8f
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {v2, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v4}, Lcom/android/quickstep/util/NavBarPosition;->isRightEdge()Z

    move-result v4

    if-eqz v4, :cond_ae

    move v4, v1

    goto :goto_b9

    :cond_ae
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mNavBarPosition:Lcom/android/quickstep/util/NavBarPosition;

    invoke-virtual {v4}, Lcom/android/quickstep/util/NavBarPosition;->isLeftEdge()Z

    move-result v4

    if-eqz v4, :cond_b8

    neg-float v4, v1

    goto :goto_b9

    :cond_b8
    move v4, v2

    :goto_b9
    iget-object v5, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->getDisplacement(Landroid/view/MotionEvent;)F

    move-result p1

    iget v6, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mStartDisplacement:F

    sub-float/2addr p1, v6

    invoke-virtual {v5, p1}, Lcom/android/quickstep/SwipeUpAnimationLogic;->updateDisplacement(F)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v5, p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v5, :cond_ce

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_cf

    :cond_ce
    move-object p1, v3

    :goto_cf
    if-eqz p1, :cond_14e

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v4, v5, v1, v2}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->onGestureEnded(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    sget-object v1, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v1}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    goto :goto_14e

    :cond_eb
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz p1, :cond_fe

    instance-of v2, p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v2, :cond_fe

    const-string/jumbo v2, "null cannot be cast to non-null type com.oplus.quickstep.gesture.OplusBaseSwipeUpHandler<@[FlexibleNullability] com.android.launcher3.statemanager.StatefulActivity<@[FlexibleNullability] com.android.launcher3.statemanager.BaseState<*>?>?, @[FlexibleNullability] com.android.quickstep.views.RecentsView<*, *>?, *>"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->restoreStateIfNeed()V

    :cond_fe
    sget-boolean p1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz p1, :cond_128

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_118

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1, v1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    goto :goto_128

    :cond_118
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mCleanupHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;->setPostTime(J)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mCleanupHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-virtual {p1, v2}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_128
    :goto_128
    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onConsumerAboutToBeSwitched()V

    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->onInteractionGestureFinished()V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->cancelRecentsAnimationIfNeed()Z

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->finishRecentsAnimImmediately:Z

    if-eqz p1, :cond_143

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_143
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sput-boolean v1, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    :cond_14e
    :goto_14e
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    sget-object p0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public final getDownPos()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->downPos:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getFinishRecentsAnimImmediately()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->finishRecentsAnimImmediately:Z

    return p0
.end method

.method public final getForceNotInterceptEvent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->forceNotInterceptEvent:Z

    return p0
.end method

.method public final getHadBeenPeeked()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->hadBeenPeeked:Z

    return p0
.end method

.method public final getLastPos()Landroid/graphics/PointF;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->lastPos:Landroid/graphics/PointF;

    return-object p0
.end method

.method public final getMCleanupHandler()Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mCleanupHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    return-object p0
.end method

.method public final getMGestureStateChangeListener()Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mGestureStateChangeListener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    return-object p0
.end method

.method public final getMHasBeenInMove()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mHasBeenInMove:Z

    return p0
.end method

.method public final getMInMistouch()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mInMistouch:Z

    return p0
.end method

.method public final getMIsExpectStartWindowAnimOfNativeLogic()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsExpectStartWindowAnimOfNativeLogic:Z

    return p0
.end method

.method public final getMIsOplusDeferredDownTarget()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsOplusDeferredDownTarget:Z

    return p0
.end method

.method public final getMLastGestureToNewTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mLastGestureToNewTask:Z

    return p0
.end method

.method public final getMOplusPassedPilferInputSlop()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusPassedPilferInputSlop:Z

    return p0
.end method

.method public final getMOplusSquaredTouchSlop()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusSquaredTouchSlop:F

    return p0
.end method

.method public final getMPassedMinimumMoveSlop()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mPassedMinimumMoveSlop:Z

    return p0
.end method

.method public final getMSquaredMinimumTouchSlop()F
    .registers 1

    iget p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mSquaredMinimumTouchSlop:F

    return p0
.end method

.method public final getPointerDownInjected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->pointerDownInjected:Z

    return p0
.end method

.method public notifyDragging(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-nez v1, :cond_7

    return-void

    :cond_7
    const-string/jumbo v1, "null cannot be cast to non-null type com.oplus.quickstep.gesture.OplusBaseSwipeUpHandler<@[FlexibleNullability] com.android.launcher3.statemanager.StatefulActivity<@[FlexibleNullability] com.android.launcher3.statemanager.BaseState<*>?>?, @[FlexibleNullability] com.android.quickstep.views.RecentsView<*, *>?, *>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedWindowMoveSlop:Z

    if-eqz p0, :cond_17

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->notifyDragging(Z)V

    return-void
.end method

.method public notifyGestureStarted(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_f

    :cond_e
    move-object v0, v2

    :goto_f
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarPresent()Z

    move-result v0

    if-ne v0, v1, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v3

    :goto_1c
    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean v0, v0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-nez v0, :cond_64

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v4}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v4, :cond_47

    move-object v2, v0

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_47
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarStashed()Z

    move-result v0

    if-ne v0, v1, :cond_50

    goto :goto_51

    :cond_50
    move v1, v3

    :goto_51
    if-nez v1, :cond_64

    :cond_53
    const-string v0, "QuickStep"

    const-string v1, "OplusOtherActivityInputConsumer"

    const-string/jumbo v2, "notifyGestureStarted: taskbar is present, so we force pilfer pointers"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_64

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->forcePilferPointers()V

    :cond_64
    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->notifyGestureStarted(Z)V

    return-void
.end method

.method public onConsumerHasBeenSwitched(Lcom/android/quickstep/InputConsumer;)V
    .registers 4

    const-string/jumbo v0, "switchedConsumer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->getType()I

    move-result v0

    invoke-interface {p1}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p1

    const/4 v1, 0x0

    if-ne v0, p1, :cond_28

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v0, p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v0, :cond_1a

    move-object v1, p1

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    :cond_1a
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->removeInvalidAnimationTask()Z

    move-result p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-nez p1, :cond_27

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mInterceptCancelInvalidAnimationTask:Z

    :cond_27
    return-void

    :cond_28
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of p1, p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p1, :cond_31

    move-object v1, p0

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    :cond_31
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->cancelInvalidAnimation()V

    :cond_36
    return-void
.end method

.method public onInteractionGestureFinished()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OplusOtherActivityInputConsumer"

    const-string/jumbo v1, "onInteractionGestureFinished"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v1, v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    if-eqz v1, :cond_17

    check-cast v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-super {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onInteractionGestureFinished()V

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;->releaseObject()V

    :cond_20
    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mInterceptCancelInvalidAnimationTask:Z

    if-nez p0, :cond_29

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->postCancelInvalidAnimation()V

    :cond_29
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 14

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2a1

    if-nez p1, :cond_8

    goto/16 :goto_2a1

    :cond_8
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_29

    sget-object v1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v1}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_29

    :cond_23
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->motionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->receiveEvent(Landroid/view/MotionEvent;)V

    goto :goto_49

    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v3, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v3, :cond_32

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_33

    :cond_32
    move-object v1, v2

    :goto_33
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    goto :goto_3b

    :cond_3a
    move-object v1, v2

    :goto_3b
    instance-of v3, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v3, :cond_42

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_43

    :cond_42
    move-object v1, v2

    :goto_43
    if-nez v1, :cond_46

    goto :goto_49

    :cond_46
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngle(Ljava/lang/Double;)V

    :goto_49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const-string v5, "OplusOtherActivityInputConsumer"

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_128

    if-eq v1, v8, :cond_cd

    if-eq v1, v4, :cond_5e

    if-eq v1, v3, :cond_cd

    goto/16 :goto_13a

    :cond_5e
    iget v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-eq v1, v6, :cond_90

    iget-object v9, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->lastPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {v9, v10, v1}, Landroid/graphics/PointF;->set(FF)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->lastPos:Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget-object v10, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->downPos:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v11

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v10, v10, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v10

    invoke-static {v9, v1}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v1

    iget v9, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mSquaredMinimumTouchSlop:F

    cmpl-float v1, v1, v9

    if-ltz v1, :cond_8d

    move v1, v8

    goto :goto_8e

    :cond_8d
    move v1, v7

    :goto_8e
    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mPassedMinimumMoveSlop:Z

    :cond_90
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v9, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v9, :cond_99

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_9a

    :cond_99
    move-object v1, v2

    :goto_9a
    if-eqz v1, :cond_a1

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    goto :goto_a2

    :cond_a1
    move-object v1, v2

    :goto_a2
    instance-of v9, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v9, :cond_a9

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_aa

    :cond_a9
    move-object v1, v2

    :goto_aa
    if-eqz v1, :cond_13a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_13a

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v0

    if-nez v0, :cond_c2

    goto/16 :goto_13a

    :cond_c2
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->motionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->getApproximateLineTiltAngle()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngle(Ljava/lang/Double;)V

    goto/16 :goto_13a

    :cond_cd
    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_WINDOW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of v9, v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz v9, :cond_db

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_dc

    :cond_db
    move-object v1, v2

    :goto_dc
    if-eqz v1, :cond_e3

    invoke-virtual {v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    goto :goto_e4

    :cond_e3
    move-object v1, v2

    :goto_e4
    instance-of v9, v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v9, :cond_eb

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_ec

    :cond_eb
    move-object v1, v2

    :goto_ec
    if-eqz v1, :cond_13a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_13a

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeSideGesture()Z

    move-result v0

    if-nez v0, :cond_103

    goto :goto_13a

    :cond_103
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->motionEventHandler:Lcom/oplus/quickstep/utils/OplusMotionEventHandler;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusMotionEventHandler;->getApproximateLineTiltAngle()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngle(Ljava/lang/Double;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "approximateLineTiltAngle update to "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getApproximateLineTiltAngle()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setApproximateLineTiltAngleChangeListener(Ljava/lang/Runnable;)V

    goto :goto_13a

    :cond_128
    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->GESTURE_DRAG_WINDOW:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->downPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {v0, v1, v9}, Landroid/graphics/PointF;->set(FF)V

    :cond_13a
    :goto_13a
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mLastGestureToNewTask:Z

    if-nez v0, :cond_14f

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mPassedMinimumMoveSlop:Z

    invoke-virtual {v0, p1, v1, v8}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptAndInjectMotionEvent(Landroid/view/MotionEvent;ZZ)Z

    move-result v0

    if-eqz v0, :cond_14f

    return-void

    :cond_14f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_197

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->sendGestureFailedEventIfNeed(Landroid/content/Context;)V

    iput-boolean v7, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mInMistouch:Z

    iput-boolean v7, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mHasBeenInMove:Z

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->forceNotInterceptEvent:Z

    if-nez v0, :cond_197

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-interface {v0, v1, v9}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->interceptDownEvent(FF)Z

    move-result v0

    if-eqz v0, :cond_197

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    :cond_197
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mInMistouch:Z

    const-string v1, "QuickStep"

    const/4 v9, 0x6

    const/4 v10, 0x5

    if-eqz v0, :cond_1cc

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1cc

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v10, :cond_1cc

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v9, :cond_1cc

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1cb

    const-string p0, "in mistouch, drop action: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v5, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1cb
    return-void

    :cond_1cc
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v8, :cond_28f

    if-eq v0, v4, :cond_235

    if-eq v0, v3, :cond_28f

    if-eq v0, v10, :cond_203

    if-eq v0, v9, :cond_1dc

    goto/16 :goto_29e

    :cond_1dc
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->pointerDownInjected:Z

    if-eqz v0, :cond_29e

    const-string/jumbo v0, "we must inject pointer up event, when pointer down event was injected"

    invoke-static {v1, v5, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    new-array v1, v8, [Landroid/view/MotionEvent;

    const-string/jumbo v3, "pointerUp"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v0, v1, v7

    invoke-static {v1}, Li4/o;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2, v2, v1}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_29e

    :cond_203
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mPassedPilferInputSlop:Z

    if-eqz v0, :cond_20d

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->needPointerDownCancelGesture()Z

    move-result v0

    if-eqz v0, :cond_29e

    :cond_20d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->isTabletAndFromMouse(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_29e

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_29e

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mLastGestureToNewTask:Z

    if-nez v0, :cond_29e

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->forceCancelGesture()V

    iput-boolean v8, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->pointerDownInjected:Z

    goto :goto_29e

    :cond_235
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mHasBeenInMove:Z

    if-nez v0, :cond_26b

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->forceNotInterceptEvent:Z

    if-nez v0, :cond_26b

    iget v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v6, :cond_26b

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->getDisplacement(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTouchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_26b

    iput-boolean v8, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mHasBeenInMove:Z

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object v1

    invoke-interface {v1}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;->interceptMoveEvent()Z

    move-result v1

    if-eqz v1, :cond_264

    iput-boolean v8, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mInMistouch:Z

    return-void

    :cond_264
    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getInterceptor()Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;

    move-result-object v0

    invoke-static {v0, v7, v8, v2}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->reset$default(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;ZILjava/lang/Object;)V

    :cond_26b
    iget v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v6, :cond_29e

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz v0, :cond_29e

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_29e

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isHomeGestureLightAnimation()Z

    move-result v0

    if-eqz v0, :cond_28b

    invoke-virtual {p0, v7}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyDragging(Z)V

    goto :goto_29e

    :cond_28b
    invoke-virtual {p0, v8}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyDragging(Z)V

    goto :goto_29e

    :cond_28f
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v7, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsExpectStartWindowAnimOfNativeLogic:Z

    :cond_29e
    :goto_29e
    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_2a1
    :goto_2a1
    return-void
.end method

.method public onPreDispatchEvent(I)V
    .registers 6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_50

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mRecentsViewDispatcher:Lcom/android/quickstep/util/CachedEventDispatcher;

    invoke-virtual {p1}, Lcom/android/quickstep/util/CachedEventDispatcher;->hasConsumer()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_50

    :cond_c
    const-string/jumbo p1, "onPreDispatchEvent(), mInteractionHandler null ? "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", recentsView null ? "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    move-object v0, v3

    :goto_2f
    if-nez v0, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    const-string v0, "QuickStep"

    const-string v2, "OplusOtherActivityInputConsumer"

    invoke-static {p1, v1, v0, v2}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz p0, :cond_43

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    goto :goto_44

    :cond_43
    move-object p0, v3

    :goto_44
    instance-of p1, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p1, :cond_4b

    move-object v3, p0

    check-cast v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_4b
    if-eqz v3, :cond_50

    invoke-virtual {v3}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->cancelEventFromDispatcher()V

    :cond_50
    :goto_50
    return-void
.end method

.method public onRecentsAnimationCanceled(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "thumbnailDatas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p0}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    return-void
.end method

.method public removeListener()V
    .registers 2

    invoke-super {p0}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->removeListener()V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_a
    return-void
.end method

.method public restoreBtvIconVisible()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->restoreBtvIconState()V

    :cond_7
    return-void
.end method

.method public final setDownPos(Landroid/graphics/PointF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->downPos:Landroid/graphics/PointF;

    return-void
.end method

.method public final setFinishRecentsAnimImmediately(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->finishRecentsAnimImmediately:Z

    return-void
.end method

.method public final setForceNotInterceptEvent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->forceNotInterceptEvent:Z

    return-void
.end method

.method public final setHadBeenPeeked(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->hadBeenPeeked:Z

    return-void
.end method

.method public final setLastPos(Landroid/graphics/PointF;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->lastPos:Landroid/graphics/PointF;

    return-void
.end method

.method public final setMGestureStateChangeListener(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mGestureStateChangeListener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    return-void
.end method

.method public final setMHasBeenInMove(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mHasBeenInMove:Z

    return-void
.end method

.method public final setMInMistouch(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mInMistouch:Z

    return-void
.end method

.method public final setMIsExpectStartWindowAnimOfNativeLogic(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsExpectStartWindowAnimOfNativeLogic:Z

    return-void
.end method

.method public final setMIsOplusDeferredDownTarget(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsOplusDeferredDownTarget:Z

    return-void
.end method

.method public final setMLastGestureToNewTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mLastGestureToNewTask:Z

    return-void
.end method

.method public final setMOplusPassedPilferInputSlop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusPassedPilferInputSlop:Z

    return-void
.end method

.method public final setMOplusSquaredTouchSlop(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusSquaredTouchSlop:F

    return-void
.end method

.method public final setMPassedMinimumMoveSlop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mPassedMinimumMoveSlop:Z

    return-void
.end method

.method public final setMSquaredMinimumTouchSlop(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mSquaredMinimumTouchSlop:F

    return-void
.end method

.method public final setPointerDownInjected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->pointerDownInjected:Z

    return-void
.end method

.method public shouldStartTouchTrackingForWindowAnimation(Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsExpectStartWindowAnimOfNativeLogic:Z

    if-eqz p1, :cond_a

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsOplusDeferredDownTarget:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public startTouchTrackingForWindowAnimation(J)V
    .registers 11

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v1

    const-string v2, "OplusOtherActivityInputConsumer"

    if-eqz v1, :cond_39

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long v1, v3, v5

    if-gez v1, :cond_22

    const-wide/16 p0, 0x0

    sput-wide p0, Lcom/android/systemui/shared/system/RemoteAnimationRunnerCompat;->LAST_START_TIMESTAMP:J

    const-string/jumbo p0, "not startRecentsActivity CAUSE pre-anim not ready!: "

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->forbidSwipeUp()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string p0, "forbidSwipeUp. Waiting for transition finish."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->enableSwipeUp()V

    return-void

    :cond_39
    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v3}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    const-string v5, ", isStarted="

    const-string/jumbo v6, "startTouchTrackingForWindowAnimation(), isRecentsAnimRunning="

    const/4 v7, 0x0

    if-eqz v4, :cond_7c

    const-string v4, ", mIsDeferredDownTarget="

    invoke-static {v6, v3, v4}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mIsDeferredDownTarget:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_6f

    :cond_6e
    move-object v5, v7

    :goto_6f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QuickStep"

    invoke-static {v5, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    :cond_7c
    invoke-static {v6, v3, v5}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_8c

    :cond_8b
    move-object v5, v7

    :goto_8c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_96
    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string/jumbo v4, "startRecentsAnimation"

    invoke-virtual {v2, v4}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    sget-object v2, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->enterSchedAssistScene()V

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-interface {v2, v4, p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler$Factory;->newHandler(Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    new-instance p2, Lcom/android/launcher3/model/c1;

    invoke-direct {p2, p0}, Lcom/android/launcher3/model/c1;-><init>(Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;)V

    invoke-virtual {p1, p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->setGestureEndCallback(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget-object p2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p2}, Lcom/android/quickstep/AbsSwipeUpHandler;->getMotionPauseListener()Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->initWhenReady()V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    instance-of p2, p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    if-eqz p2, :cond_d2

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    goto :goto_d3

    :cond_d2
    move-object p1, v7

    :goto_d3
    if-eqz p1, :cond_da

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    goto :goto_db

    :cond_da
    move-object p1, v7

    :goto_db
    instance-of p2, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p2, :cond_e2

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_e3

    :cond_e2
    move-object p1, v7

    :goto_e3
    const/4 p2, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_e8

    goto :goto_106

    :cond_e8
    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v5, v4, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v5, :cond_f1

    check-cast v4, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_f2

    :cond_f1
    move-object v4, v7

    :goto_f2
    if-eqz v4, :cond_102

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning()Z

    move-result v5

    if-nez v5, :cond_102

    invoke-virtual {v4}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isPreviousGestureToNewOrLastTask()Z

    move-result v4

    if-eqz v4, :cond_102

    move v4, v2

    goto :goto_103

    :cond_102
    move v4, p2

    :goto_103
    invoke-virtual {p1, v4}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setUseLooseTiltAngleThreshold(Z)V

    :goto_106
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    if-eqz p1, :cond_116

    invoke-virtual {p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p1

    goto :goto_117

    :cond_116
    move-object p1, v7

    :goto_117
    instance-of v4, p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v4, :cond_11e

    check-cast p1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_11f

    :cond_11e
    move-object p1, v7

    :goto_11f
    if-eqz p1, :cond_12a

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getBooster()Lcom/oplus/quickstep/utils/RecentsBooster;

    move-result-object p1

    if-eqz p1, :cond_12a

    invoke-virtual {p1, v2}, Lcom/oplus/quickstep/utils/RecentsBooster;->setIsGestureRunning(Z)V

    :cond_12a
    invoke-static {v2, v1}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v4, v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v4, :cond_13a

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_13b

    :cond_13a
    move-object v1, v7

    :goto_13b
    invoke-virtual {p1, v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setOnceGestureProcessing(Lcom/oplus/quickstep/gesture/OplusGestureState;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setClickAppView(Landroid/view/View;)V

    if-eqz v3, :cond_190

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v0, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v0, :cond_150

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_151

    :cond_150
    move-object p1, v7

    :goto_151
    if-nez p1, :cond_154

    goto :goto_157

    :cond_154
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setFirstStartTouchTracking(Z)V

    :goto_157
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TaskAnimationManager;->continueRecentsAnimation(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz p1, :cond_168

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mCleanupHandler:Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer$FinishImmediatelyHandler;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_168
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz p1, :cond_171

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_171
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/TaskAnimationManager;->notifyRecentsAnimationState(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v0, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v0, :cond_181

    move-object v7, p1

    check-cast v7, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_181
    if-eqz v7, :cond_18a

    invoke-virtual {v7}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning()Z

    move-result p1

    if-ne p1, v2, :cond_18a

    move p2, v2

    :cond_18a
    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->notifyGestureStarted(Z)V

    goto :goto_1c9

    :cond_190
    const-wide/16 p1, 0x8

    const-string/jumbo v0, "startTouchTrackingForWindowAnimation"

    invoke-static {p1, p2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_1a1

    move-object v7, v0

    check-cast v7, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_1a1
    if-nez v7, :cond_1a4

    goto :goto_1a7

    :cond_1a4
    invoke-virtual {v7, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setFirstStartTouchTracking(Z)V

    :goto_1a7
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result v1

    const-string v3, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    iget-object v3, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-object v4, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mInteractionHandler:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/quickstep/TaskAnimationManager;->startRecentsAnimation(Lcom/android/quickstep/GestureState;Landroid/content/Intent;Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    sput-boolean v2, Lcom/android/common/util/DisplayUtils;->isRemoteAnimationRunning:Z

    invoke-static {p1, p2}, Landroid/os/Trace;->traceEnd(J)V

    :goto_1c9
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mActiveCallbacks:Lcom/android/quickstep/RecentsAnimationCallbacks;

    if-eqz p1, :cond_1d0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V

    :cond_1d0
    return-void
.end method

.method public startTouchTrackingForWindowAnimationCustomize(Landroid/view/MotionEvent;)V
    .registers 6

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "startTouchTrackingForWindowAnimationCustomize; "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsOplusDeferredDownTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusPassedPilferInputSlop:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsExpectStartWindowAnimOfNativeLogic:Z

    const-string v2, "QuickStep"

    const-string v3, "OplusOtherActivityInputConsumer"

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/config/g;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsOplusDeferredDownTarget:Z

    if-eqz v0, :cond_60

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusPassedPilferInputSlop:Z

    if-nez v0, :cond_60

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mIsExpectStartWindowAnimOfNativeLogic:Z

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mLastPos:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->mDownPos:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusSquaredTouchSlop:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_54

    move v0, v1

    goto :goto_55

    :cond_54
    const/4 v0, 0x0

    :goto_55
    if-eqz v0, :cond_60

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->startTouchTrackingForWindowAnimation(J)V

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;->mOplusPassedPilferInputSlop:Z

    :cond_60
    return-void
.end method
