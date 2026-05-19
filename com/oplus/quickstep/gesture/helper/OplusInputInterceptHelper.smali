.class public final Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;,
        Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;,
        Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusInputInterceptHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusInputInterceptHelper.kt\ncom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,326:1\n1855#2,2:327\n*S KotlinDebug\n*F\n+ 1 OplusInputInterceptHelper.kt\ncom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper\n*L\n275#1:327,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

.field private static SWIPE_TIMEOUT_MS:J = 0x0L

.field private static final SWIPE_TIMEOUT_MS_GAME:J = 0x64L

.field private static final SWIPE_TIMEOUT_MS_WITHOUT_MOVE:J = 0x258L

.field private static final SWIPE_TIMEOUT_MS_WITHOUT_MOVE_GAME:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "OplusInputInterceptHelper"

.field private static final VELOCITY_MINIMUM_THRESHOLD:I = 0xc8

.field private static final VELOCITY_MINIMUM_THRESHOLD_GAME:I = 0x1f4


# instance fields
.field private activePointerId:I

.field private displayRotation:I

.field private downEvent:Landroid/view/MotionEvent;

.field private downTime:J

.field private firstMoveTime:J

.field private gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

.field private handler:Landroid/os/Handler;

.field private hasInjectEvent:Z

.field private lastActionDownEventTime:J

.field private listener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

.field private mSwipeUpNoMoveTimeoutMs:J

.field private mSwipeUpTimeoutMs:J

.field private mVelocityThreshold:I

.field private needInject:Z

.field private passedMinimumVelocitySlop:Z

.field private pointerEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutRunnable:Ljava/lang/Runnable;

.field private upEvent:Landroid/view/MotionEvent;

.field private velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_11

    const-wide/16 v0, 0x190

    goto :goto_13

    :cond_11
    const-wide/16 v0, 0xfa

    :goto_13
    sput-wide v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->SWIPE_TIMEOUT_MS:J

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->activePointerId:I

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_DETECTING:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->pointerEvent:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->firstMoveTime:J

    sget-wide v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->SWIPE_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpTimeoutMs:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpNoMoveTimeoutMs:J

    const/16 v0, 0xc8

    iput v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mVelocityThreshold:I

    new-instance v0, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->timeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->timeoutRunnable$lambda$0(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;)V

    return-void
.end method

.method private final adjustThreshold()V
    .registers 3

    sget-object v0, Lcom/oplus/quickstep/mistouch/MistouchTracker;->INSTANCE:Lcom/oplus/quickstep/mistouch/MistouchTracker;

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->getGameModeObserver()Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/mistouch/observer/MistouchGameModeObserver;->isInGame()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_40

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->canLongClickInGameMode()Z

    move-result v0

    const-string v1, "OplusInputInterceptHelper"

    if-eqz v0, :cond_2e

    const-string v0, "canLongClickInGameMode()"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetThreshold()V

    goto :goto_43

    :cond_2e
    const-string v0, "adjustThreshold()"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpTimeoutMs:J

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpNoMoveTimeoutMs:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mVelocityThreshold:I

    goto :goto_43

    :cond_40
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetThreshold()V

    :goto_43
    return-void
.end method

.method private final detectSwipe(Z)V
    .registers 6

    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->firstMoveTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_9

    goto :goto_b

    :cond_9
    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downTime:J

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpTimeoutMs:J

    cmp-long v0, v2, v0

    const-string v1, "OplusInputInterceptHelper"

    if-lez v0, :cond_3f

    const-string v0, "swipe fail, passedMinimumMoveSlop="

    invoke-static {v0, p1, v1}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_FAIL:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-eqz p1, :cond_31

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->displayRotation:I

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->speedFailedInc(I)V

    goto :goto_3e

    :cond_31
    sget-object p1, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->displayRotation:I

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->moveDistanceFailedInc(I)V

    :goto_3e
    return-void

    :cond_3f
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_48

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_FAIL:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    return-void

    :cond_48
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->activePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mVelocityThreshold:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_7c

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->activePointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mVelocityThreshold:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9a

    :cond_7c
    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->passedMinimumVelocitySlop:Z

    if-nez v0, :cond_9a

    const-string v0, "detectSwipe -> velocity greater than "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mVelocityThreshold:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " px/s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->passedMinimumVelocitySlop:Z

    :cond_9a
    if-eqz p1, :cond_a9

    iget-boolean p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->passedMinimumVelocitySlop:Z

    if-eqz p1, :cond_a9

    const-string p1, "detectSwipe -> set gestureState to SWIPE_SUCCESS"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_SUCCESS:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    :cond_a9
    return-void
.end method

.method private final injectAllEvent()V
    .registers 4

    const-string v0, "injectAllEvent: needInject="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->needInject:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasInjectEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->hasInjectEvent:Z

    const-string v2, "OplusInputInterceptHelper"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->needInject:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->hasInjectEvent:Z

    if-eqz v0, :cond_20

    goto :goto_3c

    :cond_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->hasInjectEvent:Z

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->pointerEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->upEvent:Landroid/view/MotionEvent;

    invoke-static {v0, p0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_3c

    :cond_33
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->upEvent:Landroid/view/MotionEvent;

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->pointerEvent:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectAllEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Ljava/util/List;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private final injectUpEventIfNeed()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->needInject:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->upEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_9

    goto :goto_16

    :cond_9
    const-string v0, "OplusInputInterceptHelper"

    const-string v1, "injectUpEventIfNeed: inject up event"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->upEvent:Landroid/view/MotionEvent;

    invoke-static {v0, p0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_16
    :goto_16
    return-void
.end method

.method private final onGestureStateChange(Landroid/view/MotionEvent;)V
    .registers 3

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_DETECTING:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_FAIL:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne p1, v0, :cond_10

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->injectAllEvent()V

    :cond_10
    return-void
.end method

.method private final resetThreshold()V
    .registers 3

    sget-wide v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->SWIPE_TIMEOUT_MS:J

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpTimeoutMs:J

    const-wide/16 v0, 0x258

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpNoMoveTimeoutMs:J

    const/16 v0, 0xc8

    iput v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mVelocityThreshold:I

    return-void
.end method

.method private static final timeoutRunnable$lambda$0(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_DETECTING:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne v0, v1, :cond_28

    const-string v0, "OplusInputInterceptHelper"

    const-string v1, "swipe fail, time out"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_FAIL:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->onGestureStateChange(Landroid/view/MotionEvent;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->displayRotation:I

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/helper/GestureFailedStatisticHelper;->timeOutInc(I)V

    :cond_28
    return-void
.end method


# virtual methods
.method public final forceCancelGesture()V
    .registers 3

    const-string v0, "OplusInputInterceptHelper"

    const-string v1, "forceCancelGesture()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->injectAllEvent()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetState()V

    return-void
.end method

.method public final forceResetStateIfNeed()V
    .registers 3

    const-string v0, "OplusInputInterceptHelper"

    const-string v1, "forceResetStateIfNeed()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_SUCCESS_BUT_NEED_INJECT:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-eq v0, v1, :cond_e

    return-void

    :cond_e
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetState()V

    return-void
.end method

.method public final getDisplayRotation()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->displayRotation:I

    return p0
.end method

.method public final getDownEvent()Landroid/view/MotionEvent;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getListener()Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->listener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    return-object p0
.end method

.method public final getNeedInject()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->needInject:Z

    return p0
.end method

.method public final getVelocityTracker()Landroid/view/VelocityTracker;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method public final interceptAndInjectMotionEvent(Landroid/view/MotionEvent;Z)Z
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptAndInjectMotionEvent(Landroid/view/MotionEvent;ZZ)Z

    move-result p0

    return p0
.end method

.method public final interceptAndInjectMotionEvent(Landroid/view/MotionEvent;ZZ)Z
    .registers 11

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c7

    const/4 p3, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_49

    const/4 v3, 0x2

    if-eq v0, v3, :cond_28

    if-eq v0, p3, :cond_49

    const/4 p2, 0x5

    if-eq v0, p2, :cond_1d

    const/4 p2, 0x6

    if-eq v0, p2, :cond_1d

    goto/16 :goto_eb

    :cond_1d
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->pointerEvent:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_eb

    :cond_28
    iget-wide v3, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->firstMoveTime:J

    const-wide/16 v5, -0x1

    cmp-long p3, v3, v5

    if-nez p3, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->firstMoveTime:J

    :cond_36
    iget-object p3, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_DETECTING:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne p3, v0, :cond_3f

    invoke-direct {p0, p2}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->detectSwipe(Z)V

    :cond_3f
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->onGestureStateChange(Landroid/view/MotionEvent;)V

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_FAIL:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne p0, p1, :cond_eb

    return v2

    :cond_49
    const-string p2, "interceptAndInjectMotionEvent: event finished, and action is "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OplusInputInterceptHelper"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->upEvent:Landroid/view/MotionEvent;

    iget-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_DETECTING:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne p2, v0, :cond_9d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-ne p2, p3, :cond_81

    const/16 p2, 0x2002

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p2

    if-eqz p2, :cond_81

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_81

    move p2, v2

    goto :goto_82

    :cond_81
    move p2, v1

    :goto_82
    if-nez p2, :cond_93

    iget-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_8f

    iget-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->listener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    if-eqz p2, :cond_8f

    invoke-interface {p2, p1, v2}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;->onSwipeFailed(Landroid/view/MotionEvent;Z)V

    :cond_8f
    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->injectAllEvent()V

    goto :goto_c3

    :cond_93
    iget-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_c3

    iget-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_c3

    :cond_9d
    sget-object p3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_FAIL:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne p2, p3, :cond_b6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-ne p2, v2, :cond_aa

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->injectUpEventIfNeed()V

    :cond_aa
    iget-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_c3

    iget-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->listener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    if-eqz p2, :cond_c3

    invoke-interface {p2, p1, v1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;->onSwipeFailed(Landroid/view/MotionEvent;Z)V

    goto :goto_c3

    :cond_b6
    sget-object p3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_SUCCESS_BUT_NEED_INJECT:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    if-ne p2, p3, :cond_c3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_c3

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->injectUpEventIfNeed()V

    :cond_c3
    :goto_c3
    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetState()V

    goto :goto_eb

    :cond_c7
    if-eqz p3, :cond_cc

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->adjustThreshold()V

    :cond_cc
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->activePointerId:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downTime:J

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    iget-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_e9

    iget-object p2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->timeoutRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->mSwipeUpNoMoveTimeoutMs:J

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e9
    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->passedMinimumVelocitySlop:Z

    :cond_eb
    :goto_eb
    return v1
.end method

.method public final interceptInjectEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_37

    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_28

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2e

    :cond_28
    iget-wide p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_37

    :cond_2e
    const-string p0, "OplusInputInterceptHelper"

    const-string p1, "interceptInjectEvent -> the event is injected event"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public final interceptInjectEvent(Landroid/view/MotionEvent;Lkotlin/jvm/functions/Function1;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valid"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_46

    iget-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_32

    iget-wide v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_38

    :cond_32
    iget-wide p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->lastActionDownEventTime:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_46

    :cond_38
    const-string p0, "OplusInputInterceptHelper"

    const-string p1, "interceptInjectEvent -> the event is injected event"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_46
    const/4 p0, 0x0

    return p0
.end method

.method public final isDownEventValid()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final notifyInjectEventWhenSwipeSuccess()V
    .registers 3

    const-string v0, "OplusInputInterceptHelper"

    const-string v1, "notifyInjectEventWhenSwipeSuccess()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->injectAllEvent()V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_SUCCESS_BUT_NEED_INJECT:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    return-void
.end method

.method public final resetState()V
    .registers 4

    const-string v0, "OplusInputInterceptHelper"

    const-string v1, "resetState()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->firstMoveTime:J

    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_12
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->upEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_19
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->pointerEvent:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1f

    :cond_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->downEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->upEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->pointerEvent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->passedMinimumVelocitySlop:Z

    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->hasInjectEvent:Z

    iput-boolean v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->needInject:Z

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;->SWIPE_DETECTING:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iput-object v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->gestureState:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$State;

    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_56

    iget-object v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_51

    return-void

    :cond_51
    iget-object v2, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_56
    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->handler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->listener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->resetThreshold()V

    return-void
.end method

.method public final setDisplayRotation(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->displayRotation:I

    return-void
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final setListener(Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->listener:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$IGestureStateChangeListener;

    return-void
.end method

.method public final setNeedInject(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->needInject:Z

    return-void
.end method

.method public final setVelocityTracker(Landroid/view/VelocityTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method
