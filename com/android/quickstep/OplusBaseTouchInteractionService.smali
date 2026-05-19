.class public abstract Lcom/android/quickstep/OplusBaseTouchInteractionService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusBaseTouchInteractionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusBaseTouchInteractionService.kt\ncom/android/quickstep/OplusBaseTouchInteractionService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1279:1\n1855#2,2:1280\n1#3:1282\n*S KotlinDebug\n*F\n+ 1 OplusBaseTouchInteractionService.kt\ncom/android/quickstep/OplusBaseTouchInteractionService\n*L\n726#1:1280,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CHECK_INPUT_CONSUMER_DELAY:J = 0x12cL

.field public static final Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

.field private static final DEFAULT_STATE:Lcom/oplus/quickstep/gesture/OplusGestureState;

.field private static final TAG:Ljava/lang/String; = "OplusBaseTouchInteractionService"

.field private static sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;


# instance fields
.field private isInputMonitorRegistered:Z

.field private isInvalidEvent:Z

.field public mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mCheckRunnable:Ljava/lang/Runnable;

.field public mConsumer:Lcom/android/quickstep/InputConsumer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

.field public final mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mForceSendKeyWhenLanguageChange:Z

.field public mGestureState:Lcom/android/quickstep/GestureState;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

.field public mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mIsSpecialDownEvent:Z

.field public mLastConsumer:Lcom/android/quickstep/InputConsumer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mMayContinueThreeFingerInputConsumer:Z

.field private mNewContext:Landroid/content/Context;

.field public mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

.field public mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

.field private final mPendingInput:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

.field public mResetGestureInputConsumer:Lcom/android/quickstep/InputConsumer;

.field public mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

.field public mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mTmpDownEvent:Landroid/view/MotionEvent;

.field public mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private mainChoreographer:Landroid/view/Choreographer;

.field private statusBarHeight:I

.field private touchFinger:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>()V

    sput-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->DEFAULT_STATE:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/quickstep/f0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/f0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    new-instance v0, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v0, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    sget-object v0, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLastConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v0, Lcom/android/quickstep/GestureState;->DEFAULT_STATE:Lcom/android/quickstep/GestureState;

    const-string v1, "DEFAULT_STATE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mFallbackSwipeHandlerFactory$lambda$1(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/quickstep/OplusBaseTouchInteractionService;
    .registers 1

    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    return-object v0
.end method

.method public static synthetic b(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->interceptConfigurationChanged$lambda$9(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initInputMonitor$lambda$6(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V

    return-void
.end method

.method private final canRespondGesture()Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    instance-of v2, v0, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_1a

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/Launcher;

    :cond_1a
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v1

    if-ne v1, v0, :cond_2c

    move v1, v0

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    const-string v3, "OplusBaseTouchInteractionService"

    const-string v4, "QuickStep"

    if-eqz v1, :cond_39

    const-string p0, "canRespondGesture=false for isGlobalDragging"

    invoke-static {v4, v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_39
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->isStartingMultipleTasks()Z

    move-result v1

    if-eqz v1, :cond_45

    const-string p0, "isStartingMultipleTasks, do not response gesture"

    invoke-static {v4, v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_45
    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->isAutoRotateOn()Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    if-nez v1, :cond_7a

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6b

    goto :goto_6d

    :cond_6b
    move v1, v2

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v1, v0

    :goto_6e
    if-nez v1, :cond_7a

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result p0

    if-nez p0, :cond_79

    goto :goto_7a

    :cond_79
    move v0, v2

    :cond_7a
    :goto_7a
    return v0
.end method

.method private final canStartGesture()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isFocusedWindowIgnoreHomeMenuKey(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_12
    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-virtual {v1, p0}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->forceStartGesture(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canStartGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canStartSystemGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseTouchInteractionService"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return p0
.end method

.method private static final checkInputConsumerAbnormal$lambda$20(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->recreateInputConsumerIfNeed(JLandroid/os/Handler;)V

    return-void
.end method

.method private final continueThreeFingerIfNeeded(Landroid/view/InputEvent;)Z
    .registers 4

    const-string v0, "continueThreeFingerIfNeeded(), isRecentsAnimationRunning="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", touchFinger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBaseTouchInteractionService"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p0

    if-eqz p0, :cond_38

    const/16 p0, 0x2002

    invoke-virtual {p1, p0}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result p0

    if-eqz p0, :cond_38

    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method private final createGestureState(Lcom/android/quickstep/OverviewComponentObserver;)Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 7

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v1}, Lcom/android/quickstep/util/ActiveGestureLog;->incrementLogId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;IZ)V

    const-string v1, "createGestureState: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusBaseTouchInteractionService"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_c5

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isMultiOpen()Z

    move-result p1

    if-eqz p1, :cond_5a

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    sget-object v1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v1, v4}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    :cond_5a
    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p1

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getLastStartedSecondTaskId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(II)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/GestureState;->updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getPreviouslyNonHandledAppearedTaskIds()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/quickstep/GestureState;->updatePreviouslyNonHandledAppearedTargets(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_8d

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_8e

    :cond_8d
    move-object p1, v2

    :goto_8e
    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarPresent()Z

    move-result p1

    goto :goto_96

    :cond_95
    move p1, v4

    :goto_96
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setTaskbarPresent(Z)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v1, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_a2

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_a3

    :cond_a2
    move-object p1, v2

    :goto_a3
    if-eqz p1, :cond_a9

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isTaskbarStashed()Z

    move-result v4

    :cond_a9
    invoke-virtual {v0, v4}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setTaskbarStashed(Z)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    iget-boolean p1, p0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    iput-boolean p1, v0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    instance-of p1, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p1, :cond_b9

    move-object v2, p0

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    :cond_b9
    if-eqz v2, :cond_c0

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getStartingNewTaskId()I

    move-result p0

    goto :goto_c1

    :cond_c0
    const/4 p0, -0x1

    :goto_c1
    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->updateStartingNewTaskId(I)V

    goto :goto_10c

    :cond_c5
    invoke-virtual {p1}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    :cond_d3
    if-eqz v2, :cond_ed

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz p1, :cond_ed

    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    goto :goto_fc

    :cond_ed
    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0, v4}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    :goto_fc
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setTaskbarPresent(Z)V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashed()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setTaskbarStashed(Z)V

    iput-boolean v4, v0, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    :goto_10c
    return-object v0
.end method

.method private final createOplusDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;
    .registers 9

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    return-object v0

    :cond_23
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private final createOplusOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;
    .registers 14

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_f
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isStartActivityBetweenTransitionEndAndFinish()Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v1, "OplusBaseTouchInteractionService"

    const-string v2, "createOplusOverviewInputConsumer: isStartActivityBetweenTransitionEndAndFinish"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_a4

    invoke-static {v3}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->needOverviewInputConsumer(Lcom/android/launcher3/statemanager/StatefulActivity;)Z

    move-result v1

    if-nez v1, :cond_a4

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result v1

    if-nez v1, :cond_a4

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_44

    if-nez p4, :cond_a4

    :cond_44
    sget-object p4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p4

    if-eqz p4, :cond_56

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/quickstep/BaseActivityInterface;->isInLiveTileMode()Z

    move-result p4

    if-nez p4, :cond_a4

    :cond_56
    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result p4

    if-eqz p4, :cond_62

    invoke-static {v3}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarAllAppsAndFileMangerShowing(Lcom/android/launcher3/views/ActivityContext;)Z

    move-result p4

    if-nez p4, :cond_a4

    :cond_62
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object p4

    iget-boolean p4, p4, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    if-eqz p4, :cond_a4

    if-eqz v0, :cond_6d

    goto :goto_a4

    :cond_6d
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result p3

    if-eqz p3, :cond_93

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->getController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/quickstep/RecentsAnimationController;->isFinishRequested()Z

    move-result p3

    if-eqz p3, :cond_93

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->getController()Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/quickstep/RecentsAnimationController;->mWillFinishToHome:Z

    if-nez p1, :cond_93

    move v7, v2

    goto :goto_94

    :cond_93
    move v7, v4

    :goto_94
    new-instance p1, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p3

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-object v1, p1

    move-object v2, v3

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/inputconsumers/OplusOverviewWithoutFocusInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;ZZ)V

    goto :goto_c3

    :cond_a4
    :goto_a4
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result p1

    if-eqz p1, :cond_b2

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-nez p1, :cond_b2

    move v8, v2

    goto :goto_b3

    :cond_b2
    move v8, v4

    :goto_b3
    new-instance p1, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    iget-object v4, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;-><init>(Lcom/android/quickstep/GestureState;Lcom/android/launcher3/statemanager/StatefulActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    :goto_c3
    return-object p1
.end method

.method private final createOtherActivityInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .registers 16

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mFallbackSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    goto :goto_f

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLauncherSwipeHandlerFactory:Lcom/android/quickstep/AbsSwipeUpHandler$Factory;

    :goto_f
    move-object v11, v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/BaseActivityInterface;->deferStartingActivity(Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2b

    :cond_29
    const/4 v0, 0x0

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    :goto_2c
    move v6, v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result v10

    iget-boolean p2, p1, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-nez p2, :cond_57

    iget-boolean p2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mMayContinueThreeFingerInputConsumer:Z

    if-nez p2, :cond_57

    new-instance p2, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    new-instance v7, Lcom/android/launcher3/g;

    invoke-direct {v7, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    iget-object v8, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v9, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-object v1, p2

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/oplus/quickstep/gesture/OplusGestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;)V

    return-object p2

    :cond_57
    new-instance p2, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    new-instance v7, Lcom/android/quickstep/j0;

    invoke-direct {v7, p0}, Lcom/android/quickstep/j0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    iget-object v8, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v9, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-boolean v12, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mMayContinueThreeFingerInputConsumer:Z

    move-object v1, p2

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v12}, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/oplus/quickstep/gesture/OplusGestureState;ZLjava/util/function/Consumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;ZLcom/android/quickstep/AbsSwipeUpHandler$Factory;Z)V

    return-object p2
.end method

.method public static synthetic d(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/InputConsumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V

    return-void
.end method

.method private final detectTouchFinger(Landroid/view/MotionEvent;)V
    .registers 6

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_58

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_58

    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    iput v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v0, :cond_35

    if-eq v0, v2, :cond_32

    if-eq v0, v3, :cond_32

    const/4 v1, 0x5

    if-eq v0, v1, :cond_35

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2b

    goto :goto_58

    :cond_2b
    iget p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    goto :goto_58

    :cond_32
    iput v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    goto :goto_58

    :cond_35
    iget v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    if-le v0, v3, :cond_58

    const-string v0, "detectTouchFinger(), touchFinger="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", set event.action to ACTION_CANCEL"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusBaseTouchInteractionService"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_58
    :goto_58
    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->checkInputConsumerAbnormal$lambda$20(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/MotionEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initInputMonitor$lambda$5$lambda$4(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->notifyGestureDisable()V

    return-void
.end method

.method private final getInputMonitor()Lcom/android/systemui/shared/system/InputMonitorCompat;
    .registers 7

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    const-string v2, "getInputMonitor()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_a
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v3

    const-string/jumbo v4, "swipe-up"

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getDisplayId()I

    move-result p0

    invoke-virtual {v3, v4, p0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_22

    :try_start_1d
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_20

    goto :goto_28

    :catchall_20
    move-exception v3

    goto :goto_24

    :catchall_22
    move-exception v3

    move-object p0, v2

    :goto_24
    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_28
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_43

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "monitor gesture input failed, msg is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    if-nez p0, :cond_4b

    const-string p0, "failed register gesture monitor"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4b
    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    return-object v0
.end method

.method public static final getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->Companion:Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService$Companion;->getInstance()Lcom/android/quickstep/OplusBaseTouchInteractionService;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLauncherSwipeHandlerFactory$lambda$0(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onOverviewToggle$lambda$8(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    return-void
.end method

.method private final inheritLastRecentParams(Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/GestureState;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object p2

    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p2, v0, :cond_2e

    iget-object p2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v0, p2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v0, :cond_1e

    check-cast p2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_1f

    :cond_1e
    move-object p2, v3

    :goto_1f
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getMaybeReverseGestureAnimation()Z

    move-result p2

    if-ne p2, v1, :cond_29

    move p2, v1

    goto :goto_2a

    :cond_29
    move p2, v2

    :goto_2a
    if-eqz p2, :cond_2e

    move p2, v1

    goto :goto_2f

    :cond_2e
    move p2, v2

    :goto_2f
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setReverseGestureAnimationRunning(Z)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning()Z

    move-result p2

    if-eqz p2, :cond_95

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of p2, p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz p2, :cond_41

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_42

    :cond_41
    move-object p0, v3

    :goto_42
    if-eqz p0, :cond_49

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getOriginalBtv()Landroid/view/View;

    move-result-object p2

    goto :goto_4a

    :cond_49
    move-object p2, v3

    :goto_4a
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setOriginalBtv(Landroid/view/View;)V

    if-eqz p0, :cond_54

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLauncherContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object p2

    goto :goto_55

    :cond_54
    move-object p2, v3

    :goto_55
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setLauncherContentAnimParam(Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;)V

    if-eqz p0, :cond_5f

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getWindowAnimParam()Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-result-object p2

    goto :goto_60

    :cond_5f
    move-object p2, v3

    :goto_60
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setWindowAnimParam(Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;)V

    if-eqz p0, :cond_69

    invoke-virtual {p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getReverseToFullscreenAnim()Lcom/android/quickstep/util/OplusRectFSpringAnim;

    move-result-object v3

    :cond_69
    invoke-virtual {p1, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setReverseToFullscreenAnim(Lcom/android/quickstep/util/OplusRectFSpringAnim;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_94

    const-string p0, "Reverse param inherit, launcherParam = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLauncherContentAnimParam()Lcom/oplus/quickstep/anim/AbsLauncherContentAnim$LauncherContentAnimParam;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", windowParam = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getWindowAnimParam()Lcom/oplus/quickstep/anim/RecentToHomeAnimWindowParam;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseTouchInteractionService"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    return v1

    :cond_95
    return v2
.end method

.method private static final initInputMonitor$lambda$5$lambda$4(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/MotionEvent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private static final initInputMonitor$lambda$6(Lcom/android/quickstep/OplusBaseTouchInteractionService;Landroid/view/InputEvent;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private final initSystemGestureInfo(Landroid/content/Context;)V
    .registers 9

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    sget-object v6, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    const-string/jumbo v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->init$default(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;Landroid/graphics/Point;IZILjava/lang/Object;)V

    new-instance v0, Lcom/android/quickstep/OplusBaseTouchInteractionService$initSystemGestureInfo$1;

    invoke-direct {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService$initSystemGestureInfo$1;-><init>()V

    invoke-virtual {v6, v0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->setCallbacks(Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper$Callbacks;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "initSystemGestureInfo: size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", statusBarHeight = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBaseTouchInteractionService"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method private static final interceptConfigurationChanged$lambda$9(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/TaskAnimationManager;->finishRecentForLauncherRelaunch()V

    return-void
.end method

.method private final isInExitFocusMode(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode()Z

    move-result p0

    return p0

    :cond_b
    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isInExitFocusMode(Landroid/content/Intent;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInExitFocusMode(Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "isInExitFocusMode: inExitFocusMode = "

    const-string v0, "OplusBaseTouchInteractionService"

    invoke-static {p1, p0, v0}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2b
    return p0
.end method

.method private final isMotionEventInvalid(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInvalidEvent:Z

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_39

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p1, "QuickStep"

    const-string v0, "OplusBaseTouchInteractionService"

    const-string v1, "isMotionEventInvalid: oplus input has registered, so we do not intercept event"

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_37

    :cond_2b
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->interceptInjectEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_37
    iput-boolean p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInvalidEvent:Z

    :cond_39
    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInvalidEvent:Z

    return p0
.end method

.method private final isThreeFingerGestureByTouchPad()Z
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    iget p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    and-int/2addr p0, v0

    return p0
.end method

.method private final isValidGestureState(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z
    .registers 10

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    iput-boolean v2, v1, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->ignoreNavHidden:Z

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result p1

    if-nez p1, :cond_87

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->isAppLunchAnimationRunning()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_24

    invoke-static {}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeNavigationBarDisabled()Z

    move-result p1

    if-eqz p1, :cond_24

    move p1, v0

    goto :goto_25

    :cond_24
    move p1, v1

    :goto_25
    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v2}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureDisabled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserSetupComplete()Z

    move-result v3

    invoke-static {}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->getState()I

    move-result v4

    if-nez v4, :cond_41

    move v4, v0

    goto :goto_42

    :cond_41
    move v4, v1

    :goto_42
    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isDisableGesturesGuideHomeMenuKey()Z

    move-result v5

    if-nez p1, :cond_5d

    if-nez v2, :cond_5d

    if-eqz v3, :cond_5d

    if-nez v5, :cond_5d

    if-nez v4, :cond_5d

    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/utils/TaskViewAnimationUtil$TaskViewOpenCloseAnimation;->isStartingMultipleTasks()Z

    move-result v6

    if-nez v6, :cond_5d

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->canStartGesture()Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_5e

    :cond_5d
    move v0, v1

    :goto_5e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_87

    const-string v1, "isValidGestureState , isNavBarDisabled="

    const-string v6, ", isGestureDisabled="

    const-string v7, ", isUserSetupCompleted="

    invoke-static {v1, p1, v6, v2, v7}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", isInGesturesGuide="

    const-string v2, ", isLocateIcon="

    invoke-static {p1, v3, v1, v5, v2}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isValidGestureState="

    const-string v2, ", ignoreNavHidden="

    invoke-static {p1, v4, v1, v0, v2}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->ignoreNavHidden:Z

    const-string v1, "OplusBaseTouchInteractionService"

    invoke-static {p1, p0, v1}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_87
    return v0
.end method

.method private static final mFallbackSwipeHandlerFactory$lambda$1(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 14

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/FallbackSwipeHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v1

    if-ne v1, v2, :cond_2a

    move v1, v2

    goto :goto_2b

    :cond_2a
    move v1, v5

    :goto_2b
    if-eqz v1, :cond_2f

    move v8, v2

    goto :goto_30

    :cond_2f
    move v8, v5

    :goto_30
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v9

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/quickstep/FallbackSwipeHandler;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    return-object v0
.end method

.method private static final mLauncherSwipeHandlerFactory$lambda$0(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/GestureState;J)Lcom/android/quickstep/AbsSwipeUpHandler;
    .registers 14

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    const-string v1, "gestureState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v1

    if-ne v1, v2, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    move v1, v5

    :goto_30
    if-eqz v1, :cond_4a

    instance-of v1, p1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v1, :cond_3a

    move-object v1, p1

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isReverseGestureAnimationRunning()Z

    move-result v1

    if-ne v1, v2, :cond_45

    move v1, v2

    goto :goto_46

    :cond_45
    move v1, v5

    :goto_46
    if-nez v1, :cond_4a

    move v8, v2

    goto :goto_4b

    :cond_4a
    move v8, v5

    :goto_4b
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v9

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/quickstep/OplusLauncherSwipeHandlerV2Impl;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;JZLcom/android/systemui/shared/system/InputConsumerController;)V

    return-object v0
.end method

.method private final newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .registers 10

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isKeyguardShowingOccluded()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOplusDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_12
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->isStarted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_43

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    :cond_38
    move-object v0, v1

    :goto_39
    const-string v4, "android.intent.action.CHOOSER"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    move v0, v2

    goto :goto_44

    :cond_43
    move v0, v3

    :goto_44
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_52

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->isExcludedAssistant()Z

    move-result v4

    if-ne v4, v2, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v3

    :goto_53
    if-eqz v4, :cond_8f

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_83

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v4, :cond_83

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_84

    :cond_83
    move-object v4, v1

    :goto_84
    if-eqz v4, :cond_8e

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    move v0, v2

    goto :goto_8f

    :cond_8e
    move v0, v3

    :cond_8f
    :goto_8f
    iget-boolean v4, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mForceSendKeyWhenLanguageChange:Z

    if-eqz v4, :cond_b5

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/Launcher;

    if-eqz v5, :cond_a6

    check-cast v4, Lcom/android/launcher3/Launcher;

    goto :goto_a7

    :cond_a6
    move-object v4, v1

    :goto_a7
    if-eqz v4, :cond_b1

    invoke-virtual {v4}, Lcom/android/launcher3/BaseActivity;->forceNonGesture()Z

    move-result v4

    if-ne v4, v2, :cond_b1

    move v4, v2

    goto :goto_b2

    :cond_b1
    move v4, v3

    :goto_b2
    iput-boolean v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mForceSendKeyWhenLanguageChange:Z

    goto :goto_b6

    :cond_b5
    move v4, v3

    :goto_b6
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v5

    if-eqz v5, :cond_c7

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v5

    if-nez v5, :cond_c7

    goto :goto_c8

    :cond_c7
    move v2, v3

    :goto_c8
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_146

    const-string/jumbo v3, "newBaseConsumer: isResumed="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRawActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/BaseActivityInterface;->isResumed()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isRecentsAnimationRunning="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", endTarget="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", runningTask="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v5

    if-eqz v5, :cond_10b

    invoke-virtual {v5}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTaskId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_10b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInExitFocusMode="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", launcherResumedThroughShellTransition = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useSpecialInputConsumer="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getUseSpecialInputConsumer()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", forceOverview="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , isRecentsAnimRealFinished: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/quickstep/OplusBaseTaskAnimationManager;->mIsRecentsAnimRealFinish:Z

    const-string v5, "OplusBaseTouchInteractionService"

    invoke-static {v3, v1, v5}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_146
    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    if-nez v1, :cond_155

    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto/16 :goto_1e6

    :cond_155
    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRunningAnimationToLauncher()Z

    move-result v1

    if-nez v1, :cond_1df

    if-nez v2, :cond_1df

    if-eqz v0, :cond_161

    goto/16 :goto_1df

    :cond_161
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isGestureBlockedActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_17c

    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto/16 :goto_1e6

    :cond_17c
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result p1

    if-eqz p1, :cond_1a9

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->useSpecialInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z

    move-result p1

    if-eqz p1, :cond_1a9

    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLastConsumer:Lcom/android/quickstep/InputConsumer;

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->createInputConsumer(Landroid/content/Context;Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1e6

    :cond_1a9
    if-nez v4, :cond_1c2

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInExitFocusMode(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z

    move-result p1

    if-eqz p1, :cond_1b2

    goto :goto_1c2

    :cond_1b2
    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->isAssistantOpenAnimRunning()Z

    move-result p1

    if-eqz p1, :cond_1bd

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1e6

    :cond_1bd
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOtherActivityInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1e6

    :cond_1c2
    :goto_1c2
    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLastConsumer:Lcom/android/quickstep/InputConsumer;

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->createInputConsumer(Landroid/content/Context;Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_1e6

    :cond_1df
    :goto_1df
    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOplusOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    :goto_1e6
    return-object p0
.end method

.method private final newConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;
    .registers 14

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isValidGestureState(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v1

    const-string v2, "OplusBaseTouchInteractionService"

    if-eqz v1, :cond_35

    const-string/jumbo v1, "newConsumer(), skipCheckGestureAvailable="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isGestureValid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isValidGestureState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    invoke-virtual {p2, v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setGestureValid(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_53

    const-string p1, "locked"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4e

    invoke-direct {p0, p2}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createOplusDeviceLockedInputConsumer(Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    goto :goto_52

    :cond_4e
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    :goto_52
    return-object p0

    :cond_53
    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->isUsedSpecialInputConsumer()Z

    move-result v3

    if-nez v3, :cond_1ed

    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isCustomizeRecentTaskDisabled()Z

    move-result v3

    if-nez v3, :cond_1ed

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v3

    if-eqz v3, :cond_75

    goto/16 :goto_1ed

    :cond_75
    if-nez v0, :cond_86

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_7e

    goto :goto_86

    :cond_7e
    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    goto :goto_8a

    :cond_86
    :goto_86
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->newBaseConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v1

    :goto_8a
    move-object v6, v1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isGesturalNavMode()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v6}, Lcom/android/quickstep/InputConsumer;->notifyOrientationSetup()V

    :cond_98
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v1

    if-eqz v1, :cond_189

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_bc

    new-instance v1, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;

    iget-object v7, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v8

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V

    move-object v6, v1

    :cond_bc
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result v1

    if-eqz v1, :cond_125

    iget-boolean v3, p2, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    if-nez v3, :cond_125

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_d0

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v3

    goto :goto_d1

    :cond_d0
    move-object v3, v4

    :goto_d1
    if-eqz v3, :cond_11c

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarStashed()Z

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz v3, :cond_ec

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v3

    if-eqz v3, :cond_ec

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v3

    if-eqz v3, :cond_ec

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/TaskbarView;->areIconsVisible()Z

    move-result v3

    goto :goto_ed

    :cond_ec
    const/4 v3, 0x0

    :goto_ed
    if-nez v2, :cond_10b

    if-eqz v3, :cond_10b

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isNavbarHidden()Z

    move-result v2

    if-nez v2, :cond_10b

    new-instance v2, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz v5, :cond_107

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    :cond_107
    invoke-direct {v2, v6, v3, v4}, Lcom/android/quickstep/inputconsumers/OplusTaskbarUnStashInputConsumer;-><init>(Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    goto :goto_11a

    :cond_10b
    new-instance v2, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskbarManager:Lcom/android/launcher3/taskbar/OplusTaskbarManager;

    if-eqz v5, :cond_117

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarManager;->getCurrentActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v4

    :cond_117
    invoke-direct {v2, p0, v6, v3, v4}, Lcom/android/quickstep/inputconsumers/TaskbarStashInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V

    :goto_11a
    move-object v6, v2

    goto :goto_12b

    :cond_11c
    const-string v3, "Taskbar"

    const-string/jumbo v4, "taskbarStashInputConsumer base failed because taskbarActivityContext is null"

    invoke-static {v3, v2, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12b

    :cond_125
    const-string/jumbo v3, "newConsumer isTaskbarPresent false or skip TaskbarInputConsumer"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12b
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isBubblesExpanded()Z

    move-result v2

    if-nez v2, :cond_13f

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isSystemUiDialogShowing()Z

    move-result v2

    if-eqz v2, :cond_14e

    :cond_13f
    new-instance v6, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v6, v2, v3, v4, v1}, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V

    :cond_14e
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v1

    if-eqz v1, :cond_15d

    new-instance v6, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    invoke-direct {v6, p0, p2}, Lcom/android/quickstep/inputconsumers/ScreenPinnedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;)V

    :cond_15d
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_173

    new-instance p2, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p3

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {p2, p0, p3, v6, v1}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object v6, p2

    :cond_173
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuAvailable()Z

    move-result p2

    if-eqz p2, :cond_1ad

    new-instance p2, Lcom/android/quickstep/inputconsumers/OplusAccessibilityInputConsumerImpl;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p3

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {p2, p0, p3, v6, v1}, Lcom/android/quickstep/inputconsumers/OplusAccessibilityInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    goto :goto_1ac

    :cond_189
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result p2

    if-eqz p2, :cond_197

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object v6

    :cond_197
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1ad

    new-instance p2, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p3

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {p2, p0, p3, v6, v1}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    :goto_1ac
    move-object v6, p2

    :cond_1ad
    if-nez v0, :cond_1ec

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result p1

    if-nez p1, :cond_1ec

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;

    move-result-object p1

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1ec

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;

    if-eqz p1, :cond_1ec

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isNavbarHidden()Z

    move-result p1

    if-eqz p1, :cond_1ec

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->canStartWithNavHidden()Z

    move-result p1

    if-nez p1, :cond_1ec

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureDisabled()Z

    move-result p1

    if-nez p1, :cond_1ec

    invoke-direct {p0, p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initSystemGestureInfo(Landroid/content/Context;)V

    :cond_1ec
    return-object v6

    :cond_1ed
    :goto_1ed
    invoke-static {}, Lcom/oplus/quickstep/utils/AssistantScreenRemoteAnimUtil;->resetStartTimeMillis()V

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLastConsumer:Lcom/android/quickstep/InputConsumer;

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->createInputConsumer(Landroid/content/Context;Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;)Lcom/android/quickstep/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private final notifyGestureDisable()V
    .registers 5

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    const-string/jumbo v2, "notifyGestureDisable()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "intent.action.GAME_FOCUS_LAUNCH_INTERCEPTED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_26

    goto :goto_2b

    :catchall_26
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_46

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyGestureDisable -- Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_46
    return-void
.end method

.method private final onConsumerInactive(Lcom/android/quickstep/InputConsumer;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->reset()V

    :cond_13
    return-void
.end method

.method private final onDispatchInputEvent(Landroid/view/MotionEvent;)V
    .registers 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDispatchInputEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/gesture/helper/OplusGestureHelper;->offsetEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    const-string v1, "TIS"

    const-string v2, "TouchInteractionService.onInputEvent"

    invoke-static {v1, v2, v8}, Lcom/android/launcher3/testing/TestLogging;->recordMotionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/view/MotionEvent;)V

    sget-object v1, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/android/launcher3/util/TraceHelper;->beginFlagsOverride(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-direct {v7, v8}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->detectTouchFinger(Landroid/view/MotionEvent;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    const/4 v11, 0x3

    const-string v12, "OplusBaseTouchInteractionService"

    const/4 v3, 0x0

    if-eqz v2, :cond_86

    const/16 v2, 0x2002

    invoke-virtual {v8, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_86

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4d

    if-nez v1, :cond_86

    :cond_4d
    iget-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    instance-of v5, v4, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;

    if-nez v5, :cond_6a

    instance-of v5, v4, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;

    if-eqz v5, :cond_5a

    check-cast v4, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;

    goto :goto_5b

    :cond_5a
    const/4 v4, 0x0

    :goto_5b
    if-eqz v4, :cond_62

    invoke-virtual {v4}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->getDelegate()Lcom/android/quickstep/InputConsumer;

    move-result-object v4

    goto :goto_63

    :cond_62
    const/4 v4, 0x0

    :goto_63
    instance-of v4, v4, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;

    if-eqz v4, :cond_68

    goto :goto_6a

    :cond_68
    move v0, v3

    goto :goto_6e

    :cond_6a
    :goto_6a
    invoke-direct/range {p0 .. p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->continueThreeFingerIfNeeded(Landroid/view/InputEvent;)Z

    move-result v0

    :goto_6e
    iput-boolean v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mMayContinueThreeFingerInputConsumer:Z

    if-ne v1, v2, :cond_82

    iget v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    if-ne v2, v11, :cond_82

    const-string v0, "QuickStep"

    const-string/jumbo v1, "maybe threeFinger gesture, set action to ACTION_DOWN"

    invoke-static {v0, v12, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v9, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mIsSpecialDownEvent:Z

    move v14, v3

    goto :goto_89

    :cond_82
    if-eqz v0, :cond_88

    const/4 v1, -0x1

    goto :goto_88

    :cond_86
    iput-boolean v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mMayContinueThreeFingerInputConsumer:Z

    :cond_88
    :goto_88
    move v14, v1

    :goto_89
    if-nez v14, :cond_470

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSwipeUpToAssistantAnimationOptimize()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_a6

    sget-object v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->runDeferredCallback()V

    :cond_a6
    sget-object v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SwipeToAssistantScreenHelper;->clearDeferredCallback()V

    :cond_b1
    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    if-nez v0, :cond_c8

    iget-boolean v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mIsSpecialDownEvent:Z

    if-eqz v0, :cond_bc

    goto :goto_c8

    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    goto :goto_dc

    :cond_c8
    :goto_c8
    invoke-static {v8}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mIsSpecialDownEvent:Z

    :goto_dc
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_130

    const-string/jumbo v0, "onInputEvent(), ACTION_DOWN, x="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isOffsetState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/view/OplusScreenDragUtil;->isOffsetState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", displayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchFinger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->touchFinger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMayContinueThreeFingerInputConsumer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mMayContinueThreeFingerInputConsumer:Z

    invoke-static {v0, v1, v12}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_130
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_137

    invoke-interface {v0}, Lcom/android/quickstep/inputconsumers/IOplusBaseInputConsumer;->checkPreviousSwipeFinished()V

    :cond_137
    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->DEFAULT_STATE:Lcom/oplus/quickstep/gesture/OplusGestureState;

    sget-object v4, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    iput-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/quickstep/RotationTouchHelper;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isThreeFingerGestureByTouchPad()Z

    move-result v2

    if-nez v2, :cond_153

    iget-boolean v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mMayContinueThreeFingerInputConsumer:Z

    if-eqz v2, :cond_154

    :cond_153
    move v3, v9

    :cond_154
    if-nez v1, :cond_19e

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v5, v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v5, :cond_15f

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_160

    :cond_15f
    const/4 v2, 0x0

    :goto_160
    if-eqz v2, :cond_16a

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getCanReverseGestureAnim()Z

    move-result v2

    if-ne v2, v9, :cond_16a

    move v2, v9

    goto :goto_16b

    :cond_16a
    const/4 v2, 0x0

    :goto_16b
    if-eqz v2, :cond_19e

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v2, v5, :cond_181

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v5, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v5, :cond_19e

    :cond_181
    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v2}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_19e

    const-string v2, "Inherit last gesture state"

    invoke-static {v12, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v5, v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v5, :cond_197

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_198

    :cond_197
    const/4 v2, 0x0

    :goto_198
    if-nez v2, :cond_19b

    goto :goto_19c

    :cond_19b
    move-object v0, v2

    :goto_19c
    move v15, v9

    goto :goto_1a0

    :cond_19e
    const/4 v2, 0x0

    move v15, v2

    :goto_1a0
    if-nez v1, :cond_257

    if-eqz v3, :cond_1a6

    goto/16 :goto_257

    :cond_1a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_230

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v1

    if-eqz v1, :cond_230

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v1, :cond_1e7

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isAssistantActionValid(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1e7

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createGestureState(Lcom/android/quickstep/OverviewComponentObserver;)Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v0

    if-eqz v0, :cond_1dd

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_1dd

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    goto :goto_1de

    :cond_1dd
    const/4 v1, 0x0

    :goto_1de
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->canTriggerAssistant(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    goto :goto_1e8

    :cond_1e7
    const/4 v1, 0x0

    :goto_1e8
    move-object/from16 v16, v0

    if-eqz v1, :cond_205

    new-instance v6, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;

    iget-object v5, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, v17

    move-object v13, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/inputconsumers/OplusAssistantInputConsumerImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/GestureState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/android/quickstep/RecentsAnimationDeviceState;Landroid/view/MotionEvent;)V

    iput-object v13, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_229

    :cond_205
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_227

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v0

    if-nez v0, :cond_227

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, v7, v1, v4, v2}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto :goto_229

    :cond_227
    iput-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    :goto_229
    invoke-virtual {v7, v8}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->checkInputConsumerAbnormal(Landroid/view/MotionEvent;)V

    move-object/from16 v0, v16

    goto/16 :goto_437

    :cond_230
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/quickstep/RecentsAnimationDeviceState;->canTriggerOneHandedAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_253

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isOneHandedModeActive()Z

    move-result v1

    if-nez v1, :cond_253

    new-instance v1, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v2

    iget-object v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v1, v7, v2, v4, v3}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto/16 :goto_437

    :cond_253
    iput-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    goto/16 :goto_437

    :cond_257
    :goto_257
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->canRespondGesture()Z

    move-result v1

    const-string/jumbo v2, "onInputEvent(), ACTION_DOWN, canRespondGesture="

    invoke-static {v2, v1, v12}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz v2, :cond_3d4

    if-eqz v1, :cond_3d4

    iput-object v8, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTmpDownEvent:Landroid/view/MotionEvent;

    new-instance v0, Lcom/android/quickstep/GestureState;

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-direct {v0, v1}, Lcom/android/quickstep/GestureState;-><init>(Lcom/android/quickstep/GestureState;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->createGestureState(Lcom/android/quickstep/OverviewComponentObserver;)Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_288

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v2

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v4, :cond_288

    move v2, v9

    goto :goto_289

    :cond_288
    const/4 v2, 0x0

    :goto_289
    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setPreviousGestureToNewTask(Z)V

    iput-boolean v3, v1, Lcom/android/quickstep/GestureState;->isThreeFingerGesture:Z

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_2a6

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->NEW_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v3, v4, :cond_2a4

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v3

    sget-object v4, Lcom/android/quickstep/GestureState$GestureEndTarget;->LAST_TASK:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v3, v4, :cond_2a6

    :cond_2a4
    move v3, v9

    goto :goto_2a7

    :cond_2a6
    const/4 v3, 0x0

    :goto_2a7
    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setPreviousGestureToNewOrLastTask(Z)V

    invoke-direct {v7, v1, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->inheritLastRecentParams(Lcom/oplus/quickstep/gesture/OplusGestureState;Lcom/android/quickstep/GestureState;)Z

    move-result v3

    if-nez v3, :cond_2b5

    if-eqz v2, :cond_2b3

    goto :goto_2b5

    :cond_2b3
    const/4 v2, 0x0

    goto :goto_2b6

    :cond_2b5
    :goto_2b5
    move v2, v9

    :goto_2b6
    const-string/jumbo v4, "onInputEvent-isReverseGestureAnimationRunning: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v6, v5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v6, :cond_2e2

    check-cast v5, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_2e3

    :cond_2e2
    const/4 v5, 0x0

    :goto_2e3
    if-eqz v5, :cond_2ee

    invoke-virtual {v5}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getMaybeReverseGestureAnimation()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2ef

    :cond_2ee
    const/4 v5, 0x0

    :goto_2ef
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", isInheritForReverseAnim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", continuePreviousGesture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v4

    if-eqz v4, :cond_375

    if-eqz v2, :cond_375

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v2, v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v2, :cond_375

    invoke-virtual {v1, v9}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setContinueLastGesture(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    const-string/jumbo v4, "null cannot be cast to non-null type com.oplus.quickstep.gesture.OplusGestureState"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isGestureValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setGestureValid(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getLastGestureConfig()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setLastGestureConfig(Landroid/content/res/Configuration;)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInSplitScreenMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInSplitScreenMode(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isSupportFloatingWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setSupportFloatingWindow(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getUseSpecialInputConsumer()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setUseSpecialInputConsumer(Z)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->isInExitFocusMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setInExitFocusMode(Z)V

    :cond_375
    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mLastConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v2, :cond_37e

    invoke-interface {v2}, Lcom/android/quickstep/InputConsumer;->onConsumerAboutToBeSwitched()V

    :cond_37e
    invoke-direct {v7, v0, v1, v8}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->newConsumer(Lcom/android/quickstep/GestureState;Lcom/oplus/quickstep/gesture/OplusGestureState;Landroid/view/MotionEvent;)Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    if-eqz v0, :cond_38d

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_38d

    move v2, v9

    goto :goto_38e

    :cond_38d
    const/4 v2, 0x0

    :goto_38e
    if-nez v2, :cond_39c

    const-string v2, "Try restoreBtvIconVisible"

    invoke-static {v12, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v2, :cond_39c

    invoke-interface {v2}, Lcom/android/quickstep/InputConsumer;->restoreBtvIconVisible()V

    :cond_39c
    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v2, :cond_3a3

    invoke-interface {v2, v0}, Lcom/android/quickstep/inputconsumers/IOplusBaseInputConsumer;->onConsumerHasBeenSwitched(Lcom/android/quickstep/InputConsumer;)V

    :cond_3a3
    iput-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    instance-of v2, v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    if-eqz v2, :cond_3ad

    move-object v2, v0

    check-cast v2, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    goto :goto_3ae

    :cond_3ad
    const/4 v2, 0x0

    :goto_3ae
    if-eqz v2, :cond_3b4

    invoke-virtual {v2}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->setLayoutRotationIfNeed()V

    goto :goto_3d1

    :cond_3b4
    instance-of v2, v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    if-eqz v2, :cond_3bb

    check-cast v0, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;

    goto :goto_3bc

    :cond_3bb
    const/4 v0, 0x0

    :goto_3bc
    if-eqz v0, :cond_3c3

    invoke-virtual {v0}, Lcom/android/quickstep/inputconsumers/OplusOneHandedModeInputConsumer;->getDelegate()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    goto :goto_3c4

    :cond_3c3
    const/4 v0, 0x0

    :goto_3c4
    instance-of v2, v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    if-eqz v2, :cond_3cb

    check-cast v0, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;

    goto :goto_3cc

    :cond_3cb
    const/4 v0, 0x0

    :goto_3cc
    if-eqz v0, :cond_3d1

    invoke-virtual {v0}, Lcom/android/quickstep/inputconsumers/OplusOverviewInputConsumerImpl;->setLayoutRotationIfNeed()V

    :cond_3d1
    :goto_3d1
    move-object v0, v1

    move v15, v3

    goto :goto_3dd

    :cond_3d4
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->reset()V

    iput-object v4, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    :goto_3dd
    sget-object v1, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    const-string/jumbo v2, "setInputConsumer: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v3, :cond_3ef

    invoke-interface {v3}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3f0

    :cond_3ef
    const/4 v3, 0x0

    :goto_3f0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/ActiveGestureLog;->addLog(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    iput-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v1

    iget-object v1, v1, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    instance-of v2, v1, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    if-eqz v2, :cond_40f

    check-cast v1, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;

    goto :goto_410

    :cond_40f
    const/4 v1, 0x0

    :goto_410
    if-eqz v1, :cond_417

    invoke-virtual {v1}, Lcom/android/quickstep/OplusOrientationTouchTransformerImpl;->isTouchRotationSameAsDisplayRotation()Z

    move-result v1

    goto :goto_418

    :cond_417
    move v1, v9

    :goto_418
    iget-object v2, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v2, :cond_421

    invoke-interface {v2}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v2

    goto :goto_422

    :cond_421
    const/4 v2, 0x0

    :goto_422
    sget-object v3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    const/high16 v4, 0x8000000

    and-int/2addr v2, v4

    if-nez v2, :cond_433

    if-eqz v1, :cond_433

    move v1, v9

    goto :goto_434

    :cond_433
    const/4 v1, 0x0

    :goto_434
    invoke-virtual {v3, v1}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setNeedInject(Z)V

    :goto_437
    if-nez v15, :cond_452

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v1, v2, :cond_452

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    instance-of v2, v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    if-eqz v2, :cond_44c

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusGestureState;

    goto :goto_44d

    :cond_44c
    const/4 v1, 0x0

    :goto_44d
    if-eqz v1, :cond_452

    invoke-virtual {v1, v9}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setIconVisible(Z)V

    :cond_452
    iput-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    const-string/jumbo v0, "onInputEvent(), ACTION_DOWN, Consumer="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v1, :cond_464

    invoke-interface {v1}, Lcom/android/quickstep/InputConsumer;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_465

    :cond_464
    const/4 v1, 0x0

    :goto_465
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4aa

    :cond_470
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    instance-of v1, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;

    if-nez v1, :cond_49d

    instance-of v1, v0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;

    if-eqz v1, :cond_47d

    check-cast v0, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;

    goto :goto_47e

    :cond_47d
    const/4 v0, 0x0

    :goto_47e
    if-eqz v0, :cond_485

    invoke-virtual {v0}, Lcom/android/quickstep/inputconsumers/DelegateInputConsumer;->getDelegate()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    goto :goto_486

    :cond_485
    const/4 v0, 0x0

    :goto_486
    instance-of v0, v0, Lcom/android/quickstep/inputconsumers/OplusOtherActivityThreeFingerInputConsumer;

    if-eqz v0, :cond_48b

    goto :goto_49d

    :cond_48b
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    sget-object v1, Lcom/android/quickstep/InputConsumer;->NO_OP:Lcom/android/quickstep/InputConsumer;

    if-eq v0, v1, :cond_4aa

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/quickstep/RotationTouchHelper;->setOrientationTransformIfNeeded(Landroid/view/MotionEvent;)V

    goto :goto_4aa

    :cond_49d
    :goto_49d
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->getRotationTouchHelper()Lcom/android/quickstep/RotationTouchHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/RotationTouchHelper;->mOrientationTouchTransformer:Lcom/android/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0, v8}, Lcom/android/quickstep/OrientationTouchTransformer;->transform(Landroid/view/MotionEvent;)V

    :cond_4aa
    :goto_4aa
    if-eq v14, v9, :cond_4ae

    if-ne v14, v11, :cond_4c5

    :cond_4ae
    iget-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_4c0

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getActiveConsumerInHierarchy()Lcom/android/quickstep/InputConsumer;

    move-result-object v0

    if-eqz v0, :cond_4c0

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->isConsumerDetachedFromGesture()Z

    move-result v0

    if-nez v0, :cond_4c0

    move v0, v9

    goto :goto_4c1

    :cond_4c0
    const/4 v0, 0x0

    :goto_4c1
    if-eqz v0, :cond_4c5

    move v0, v9

    goto :goto_4c6

    :cond_4c5
    const/4 v0, 0x0

    :goto_4c6
    iget-object v1, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v1, :cond_4cd

    invoke-interface {v1, v8}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_4cd
    sget-object v1, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    invoke-virtual {v1, v8}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->onMotionEvent(Landroid/view/MotionEvent;)V

    if-eqz v0, :cond_4d7

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->reset()V

    :cond_4d7
    if-eq v14, v9, :cond_4dc

    if-eq v14, v11, :cond_4dc

    goto :goto_4df

    :cond_4dc
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTmpDownEvent:Landroid/view/MotionEvent;

    :goto_4df
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/util/TraceHelper;->endFlagsOverride(Ljava/lang/Object;)V

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private final onInputEvent(Landroid/view/InputEvent;)V
    .registers 9

    instance-of v0, p1, Landroid/view/MotionEvent;

    const-string v1, "OplusBaseTouchInteractionService"

    if-nez v0, :cond_1b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    instance-of v2, v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    if-eqz v2, :cond_2f

    const-string/jumbo v2, "null cannot be cast to non-null type com.android.launcher3.dragndrop.GlobalInputReceiverClient"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/GlobalInputReceiverClient;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_2f
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    return-void

    :cond_3a
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isMotionEventInvalid(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->canRetryDetect()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_53

    invoke-direct {p0, p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->initSystemGestureInfo(Landroid/content/Context;)V

    :cond_53
    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/utils/SystemGesturesDetectHelper;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void

    :cond_57
    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_6a

    const-string p0, "QuickStep"

    const-string/jumbo p1, "onInputEvent(), mDeviceState user is not unlocked"

    invoke-static {p0, v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7f

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7f
    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->canInterceptGesture()Z

    move-result v2

    if-nez v2, :cond_cd

    const-string/jumbo v2, "pendingInput: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v5

    const-string v6, "ev.copy()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v1, :cond_bd

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c9

    :cond_bd
    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;->resetInterceptState()V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_c9
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_cd
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_f1

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onDispatchInputEvent(Landroid/view/MotionEvent;)V

    goto :goto_dc

    :cond_ec
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPendingInput:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_f1
    invoke-direct {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onDispatchInputEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private static final onOverviewToggle$lambda$8(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOverviewToggle() isSplitTaskLaunchRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isSplitTaskLaunchRunning()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OplusBaseTouchInteractionService"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isSplitTaskLaunchRunning()Z

    move-result v0

    if-nez v0, :cond_60

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_44

    aget v1, v0, v2

    const/4 v4, -0x1

    if-eq v1, v4, :cond_44

    aget v0, v0, v3

    if-eq v0, v4, :cond_44

    move v2, v3

    :cond_44
    if-eqz v2, :cond_4f

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->addCommand(I)V

    goto :goto_68

    :cond_4f
    new-instance v0, Lcom/android/quickstep/RecentsActivityCommand;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/quickstep/RecentsActivityCommand;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/OverviewComponentObserver;)V

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsActivityCommand;->run()V

    goto :goto_68

    :cond_60
    const-string p0, "QuickStep"

    const-string/jumbo v0, "onOverviewToggle(), isSplitTaskLaunchRunning return."

    invoke-static {p0, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    return-void
.end method

.method private final updateConfigurationDiff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p0

    sget-object p1, Lcom/oplus/quickstep/utils/ConfigurationUtils;->INSTANCE:Lcom/oplus/quickstep/utils/ConfigurationUtils;

    and-int/lit16 p2, p0, 0x1000

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_e

    const/4 p2, 0x1

    goto :goto_f

    :cond_e
    const/4 p2, 0x0

    :goto_f
    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->setDensityDefault(Z)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateConfigurationDiff(), diff="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isDensityDefault="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isDensityDefault()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QuickStep"

    const-string p2, "OplusBaseTouchInteractionService"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final updateContext(Landroid/content/Context;)V
    .registers 6

    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayDensity(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v2, "context.resources.displayMetrics"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    const-string/jumbo v3, "resources.configuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.createConfigurationContext(configuration)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mNewContext:Landroid/content/Context;

    const-string/jumbo p0, "updateContext configuration.densityDpi "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, v2, Landroid/content/res/Configuration;->densityDpi:I

    const-string v0, "OplusBaseTouchInteractionService"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private final useSpecialInputConsumer(Lcom/oplus/quickstep/gesture/OplusGestureState;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getContinueLastGesture()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->getUseSpecialInputConsumer()Z

    move-result p0

    return p0

    :cond_b
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "this.packageName"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->canUseGestureInputConsumer(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/quickstep/OverviewComponentObserver;Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setUseSpecialInputConsumer(Z)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "useSpecialInputConsumer(), useSpecialInputConsumer="

    const-string v1, ", runningTaskId="

    invoke-static {v0, p0, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;->getTopTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_52

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_53

    :cond_52
    const/4 p1, 0x0

    :goto_53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusBaseTouchInteractionService"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    return p0
.end method


# virtual methods
.method public final afterOnCreate()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseTouchInteractionService"

    const-string v2, "afterOnCreate()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->init(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/DisplayController;->updateWindowContext(Landroid/content/Context;)V

    return-void
.end method

.method public final checkInputConsumerAbnormal(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mGestureState:Lcom/android/quickstep/GestureState;

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    if-eqz v0, :cond_81

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->isOpeningAnim()Z

    move-result v0

    if-nez v0, :cond_81

    const-string v0, "checkInputConsumerAbnormal check if recents_animation_input_consumer is abnormal"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseTouchInteractionService"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mCheckRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_69

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mCheckRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string p1, "checkInputConsumerAbnormal mCheckRunnable = null ? "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mCheckRunnable:Ljava/lang/Runnable;

    if-nez p0, :cond_58

    const/4 p0, 0x1

    goto :goto_59

    :cond_58
    const/4 p0, 0x0

    :goto_59
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    new-instance p1, Lcom/android/quickstep/u0;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/quickstep/u0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;J)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mCheckRunnable:Ljava/lang/Runnable;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_81
    return-void
.end method

.method public final createOplusGestureState(Lcom/android/quickstep/GestureState;)Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 6

    const-string/jumbo v0, "previousGestureState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v1

    sget-object v2, Lcom/android/quickstep/util/ActiveGestureLog;->INSTANCE:Lcom/android/quickstep/util/ActiveGestureLog;

    invoke-virtual {v2}, Lcom/android/quickstep/util/ActiveGestureLog;->incrementLogId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/quickstep/gesture/OplusGestureState;-><init>(Lcom/android/quickstep/OverviewComponentObserver;IZ)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getRunningTask()Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getLastStartedTaskId()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getLastStartedSecondTaskId()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/quickstep/GestureState;->updateLastStartedTaskId(II)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getPreviouslyAppearedTaskIds()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updatePreviouslyAppearedTaskIds(Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/android/quickstep/GestureState;->getPreviouslyNonHandledAppearedTaskIds()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updatePreviouslyNonHandledAppearedTargets(Ljava/util/Set;)V

    goto :goto_50

    :cond_41
    sget-object p1, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTracker;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/GestureState;->updateRunningTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;)V

    :goto_50
    return-object v0
.end method

.method public abstract createOverviewInputConsumer(Lcom/android/quickstep/GestureState;Lcom/android/quickstep/GestureState;Landroid/view/MotionEvent;Z)Lcom/android/quickstep/InputConsumer;
.end method

.method public final forceUpdateMonitorIfNeed()Z
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    :goto_18
    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v3

    if-nez v3, :cond_30

    :cond_24
    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result p0

    if-nez p0, :cond_31

    :cond_30
    move v1, v2

    :cond_31
    return v1
.end method

.method public final getMAM()Lcom/android/systemui/shared/system/ActivityManagerWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mAM"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mDeviceState"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mInputConsumer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "mOverviewCommandHelper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "mOverviewComponentObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMPhoneGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    return-object p0
.end method

.method public final getMResetGestureInputConsumer()Lcom/android/quickstep/InputConsumer;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "mResetGestureInputConsumer"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string/jumbo p0, "mTaskAnimationManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecentsAnimationDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object p0

    return-object p0
.end method

.method public initInputMonitor()V
    .registers 5

    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getInputMonitor()Lcom/android/systemui/shared/system/InputMonitorCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_24

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Landroid/view/InputMonitor;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputMonitorCompat:Lcom/android/systemui/shared/system/InputMonitorCompat;

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    new-instance v1, Landroidx/core/location/a;

    invoke-direct {v1, p0}, Landroidx/core/location/a;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/OplusInputManager;->setConsumer(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->registerInputEvent()V

    goto :goto_42

    :cond_24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mainChoreographer:Landroid/view/Choreographer;

    if-nez v3, :cond_36

    const-string/jumbo v3, "mainChoreographer"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_37

    :cond_36
    move-object v1, v3

    :goto_37
    new-instance v3, Lcom/android/quickstep/g0;

    invoke-direct {v3, p0}, Lcom/android/quickstep/g0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :goto_42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    return-void
.end method

.method public final interceptConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 10

    const-string/jumbo v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v2, "OplusBaseTouchInteractionService"

    const-string v3, "QuickStep"

    if-eqz v1, :cond_35

    const-string/jumbo v1, "onConfigurationChanged(), newRotation = "

    const-string v4, ", orientation="

    invoke-static {v1, v0, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mNewContext:Landroid/content/Context;

    if-nez v0, :cond_40

    const-string/jumbo v0, "mNewContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_40
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string/jumbo v1, "mNewContext.resources.configuration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->updateConfigurationDiff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string/jumbo v4, "resources.configuration"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    if-nez v0, :cond_77

    goto/16 :goto_12f

    :cond_77
    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "applicationContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-nez v0, :cond_97

    return v1

    :cond_97
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_9e

    return v1

    :cond_9e
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/quickstep/OverviewComponentObserver;->canHandleConfigChanges(Landroid/content/ComponentName;I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_ff

    const-string/jumbo v4, "onConfigurationChanged(), handle config changes by self, so return -- diff = "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v4, v0, Lcom/android/launcher/Launcher;

    if-eqz v4, :cond_fe

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v4

    if-nez v4, :cond_fe

    sget-object v4, Lcom/oplus/quickstep/utils/ConfigurationUtils;->INSTANCE:Lcom/oplus/quickstep/utils/ConfigurationUtils;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getLastActivityConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v5, "activity.lastActivityConfiguration"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0, p1}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->forceRelaunchLauncher(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_fe

    const-string/jumbo p1, "onConfigurationChanged(), force relaunch launcher"

    invoke-static {v3, v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->preloadOverview(Z)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/t0;

    invoke-direct {v0, p0, v7}, Lcom/android/quickstep/t0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_fe
    return v1

    :cond_ff
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12a

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/oplus/quickstep/utils/ConfigurationUtils;->isOldSkinChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_12c

    :cond_12a
    iput-boolean v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mForceSendKeyWhenLanguageChange:Z

    :cond_12c
    invoke-virtual {p0, v7}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->preloadOverview(Z)V

    :cond_12f
    :goto_12f
    return v1
.end method

.method public final interceptDisposeEventHandlers()Z
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/OplusInputManager;->unregisterInputEvent()V

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    iput-boolean v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->isInputMonitorRegistered:Z

    return v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    const/4 v1, 0x0

    const-string v2, "OplusBaseTouchInteractionService"

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onCreate, destroy last service sInstance: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    if-eqz v3, :cond_24

    invoke-static {v3}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_25

    :cond_24
    move-object v3, v1

    :goto_25
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->onDestroy()V

    :cond_36
    const-string/jumbo v0, "onCreate "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-direct {p0, p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->updateContext(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mainChoreographer:Landroid/view/Choreographer;

    sget-object v0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->registerObserver(Landroid/content/Context;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->registerTelephonyCallback()V

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    iget-object v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mPhoneGestureState:Lcom/oplus/quickstep/gesture/OplusGestureState;

    invoke-virtual {v0, v2}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->setMGestureState(Lcom/oplus/quickstep/gesture/OplusGestureState;)V

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string v2, "getInstance().configuration"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mNewContext:Landroid/content/Context;

    if-nez v2, :cond_a2

    const-string/jumbo v2, "mNewContext"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a3

    :cond_a2
    move-object v1, v2

    :goto_a3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string/jumbo v2, "mNewContext.resources.configuration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->updateConfigurationDiff(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    if-eqz v0, :cond_cd

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object v2, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->SUPER_POWERSAVE_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->setInSuperPowerSaveMode(Z)V

    :cond_cd
    sget-object v0, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    const-class v1, Landroid/app/StatusBarManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->setStatusBarManager(Landroid/app/StatusBarManager;)V

    sget-object v0, Lcom/oplus/quickstep/utils/FingerPrintUtils;->INSTANCE:Lcom/oplus/quickstep/utils/FingerPrintUtils;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/config/ScreenInfo$Companion;->getRealStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->statusBarHeight:I

    sget-object v0, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/learning/NotificationHelper;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .registers 10

    const-string v0, "OplusBaseTouchInteractionService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-object v2, Lcom/android/quickstep/OplusBaseTouchInteractionService;->sInstance:Lcom/android/quickstep/OplusBaseTouchInteractionService;

    invoke-static {}, Lcom/oplus/quickstep/mistouch/MistouchTracker;->destory()V

    sget-object v3, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->INSTANCE:Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager$INSTANCE;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;

    invoke-virtual {v3, p0}, Lcom/oplus/quickstep/common/observers/SpecialSceneObserverManager;->unregisterObserver(Landroid/content/Context;)V

    sget-object v3, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;

    invoke-virtual {v3, p0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->unregisterTelephonyCallback()V

    sget-object v3, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper$INSTANCE;

    invoke-virtual {v3}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/SystemAutoRotateHelper;->release()V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_b3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    if-eqz v3, :cond_b3

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v3

    if-eqz v3, :cond_b3

    invoke-virtual {v3}, Landroid/app/Activity;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_b3

    instance-of v6, v3, Lcom/android/launcher3/Launcher;

    if-eqz v6, :cond_62

    move-object v6, v3

    check-cast v6, Lcom/android/launcher3/Launcher;

    goto :goto_63

    :cond_62
    move-object v6, v2

    :goto_63
    if-eqz v6, :cond_9f

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-ne v7, v8, :cond_9a

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v6

    if-eqz v6, :cond_7c

    invoke-virtual {v6}, Lcom/android/launcher3/OplusDragLayer;->getActiveController()Lcom/android/launcher3/util/TouchController;

    move-result-object v6

    goto :goto_7d

    :cond_7c
    move-object v6, v2

    :goto_7d
    instance-of v7, v6, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    if-eqz v7, :cond_84

    check-cast v6, Lcom/android/quickstep/touch/SwipeToRecentTouchController;

    goto :goto_85

    :cond_84
    move-object v6, v2

    :goto_85
    if-eqz v6, :cond_95

    invoke-virtual {v6}, Lcom/android/quickstep/touch/SwipeToRecentTouchController;->getHelper()Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    move-result-object v6

    if-eqz v6, :cond_95

    invoke-virtual {v6}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->isAnimatingToOverView()Z

    move-result v6

    if-ne v6, v4, :cond_95

    move v6, v4

    goto :goto_96

    :cond_95
    move v6, v5

    :goto_96
    if-nez v6, :cond_9a

    move v6, v4

    goto :goto_9b

    :cond_9a
    move v6, v5

    :goto_9b
    if-ne v6, v4, :cond_9f

    move v6, v4

    goto :goto_a0

    :cond_9f
    move v6, v5

    :goto_a0
    if-eqz v6, :cond_b3

    invoke-virtual {v3}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v3

    instance-of v6, v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v6, :cond_ad

    check-cast v3, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_ae

    :cond_ad
    move-object v3, v2

    :goto_ae
    if-eqz v3, :cond_b3

    invoke-virtual {v3, v5, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    :cond_b3
    sget-object v1, Lcom/oplus/quickstep/utils/SystemBarHelper;->INSTANCE:Lcom/oplus/quickstep/utils/SystemBarHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SystemBarHelper;->release()V

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    if-eqz v1, :cond_db

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    if-eqz v1, :cond_db

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_db

    const-string v1, "QuickStep"

    const-string/jumbo v3, "we must finish recents animation before gesture service destroyed"

    invoke-static {v1, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMTaskAnimationManager()Lcom/android/quickstep/TaskAnimationManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :cond_db
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_e8

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e8

    move v0, v4

    goto :goto_e9

    :cond_e8
    move v0, v5

    :goto_e9
    if-nez v0, :cond_fa

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v0, :cond_f7

    invoke-interface {v0}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f7

    goto :goto_f8

    :cond_f7
    move v4, v5

    :goto_f8
    if-eqz v4, :cond_112

    :cond_fa
    iget-object v0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTmpDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_112

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz v1, :cond_10d

    invoke-interface {v1, v0}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_10d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v2, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTmpDownEvent:Landroid/view/MotionEvent;

    :cond_112
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onOplusNavigationModeChanged(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V
    .registers 7

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onOplusNavigationModeChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuickStep"

    const-string v2, "OplusBaseTouchInteractionService"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/GestureBooster;->INSTANCE:Lcom/oplus/quickstep/utils/GestureBooster;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/GestureBooster;->removeExtendTimeCallbacks()V

    sget-object v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne p1, v0, :cond_88

    sget-object p1, Lcom/oplus/quickstep/gesture/OplusInputManager;->INSTANCE:Lcom/oplus/quickstep/gesture/OplusInputManager$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/OplusInputManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/gesture/OplusInputManager;->hasRegistered()Z

    move-result p1

    if-nez p1, :cond_88

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    invoke-interface {p1}, Lcom/android/quickstep/InputConsumer;->getType()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_49

    const/4 p1, 0x1

    goto :goto_4a

    :cond_49
    move p1, v0

    :goto_4a
    if-eqz p1, :cond_88

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->isDownEventValid()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {v3}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->getDownEvent()Landroid/view/MotionEvent;

    move-result-object v3

    if-nez v3, :cond_67

    return-void

    :cond_67
    const-string/jumbo v4, "nav mode changed, so cancel the gesture anim"

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;

    invoke-virtual {p1, v0}, Lcom/oplus/quickstep/gesture/helper/OplusInputInterceptHelper;->setNeedInject(Z)V

    invoke-static {v3}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mUncheckedConsumer:Lcom/android/quickstep/InputConsumer;

    if-eqz p0, :cond_85

    invoke-interface {p0, p1}, Lcom/android/quickstep/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_88
    return-void
.end method

.method public final onOverviewToggle()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result v0

    if-ne v0, v2, :cond_26

    move v0, v2

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    if-eqz v0, :cond_2a

    return-void

    :cond_2a
    const-string/jumbo v0, "onOverviewToggle(), isScreenPinningActive="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QuickStep"

    const-string v4, "OplusBaseTouchInteractionService"

    invoke-static {v3, v4, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    new-instance v5, Lcom/android/launcher/locateaction/LocateEvent;

    const-string/jumbo v6, "onOverviewTogglePressed"

    invoke-direct {v5, v6}, Lcom/android/launcher/locateaction/LocateEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isUserActive()Z

    move-result v5

    if-nez v5, :cond_7b

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Lcom/android/launcher3/BaseActivity;->hasSomeInvisibleFlag(I)Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-virtual {v0, v5}, Lcom/android/launcher3/BaseActivity;->clearForceInvisibleFlag(I)V

    :cond_7b
    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-eqz v0, :cond_8e

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OplusBaseRecentsAnimationDeviceState;->resetActiveRotation()V

    :cond_8e
    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->needIgnoreToRecents()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewCommandHelper()Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/OplusOverviewCommandHelperImpl;->isInSuperPowerSaveMode()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/quickstep/OverviewComponentObserver;->isPowerSaveLauncher()Z

    move-result v7

    and-int/2addr v6, v7

    sget-object v7, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v7}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v7}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureDisabled()Z

    move-result v7

    sget-object v8, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v8}, Lcom/android/common/util/AppFeatureUtils;->isCustomizeRecentTaskDisabled()Z

    move-result v8

    invoke-static {}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->getState()I

    move-result v9

    if-nez v9, :cond_c6

    move v1, v2

    :cond_c6
    if-nez v0, :cond_11e

    if-nez v5, :cond_11e

    if-nez v7, :cond_11e

    if-nez v6, :cond_11e

    if-nez v8, :cond_11e

    if-eqz v1, :cond_d3

    goto :goto_11e

    :cond_d3
    sget-object v0, Lcom/android/common/util/ContextUtils;->INSTANCE:Lcom/android/common/util/ContextUtils;

    invoke-virtual {v0, p0}, Lcom/android/common/util/ContextUtils;->updateDefaultContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMDeviceState()Lcom/android/quickstep/RecentsAnimationDeviceState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_e9

    const-string/jumbo p0, "onOverviewToggle(), isScreenPinningActive return"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e9
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/android/quickstep/SystemUiProxy;->getIsStartingMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_fe

    const-string/jumbo p0, "onOverviewToggle(), isStartingMultipleTasks return"

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_fe
    const-string/jumbo v0, "recentapps"

    invoke-static {v0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->getMOverviewComponentObserver()Lcom/android/quickstep/OverviewComponentObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/OverviewComponentObserver;->getActivityInterface()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/BaseActivityInterface;->getCreatedActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/common/util/ScreenUtils;->lockOrientationInTablet(ZLandroid/app/Activity;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/t0;

    invoke-direct {v1, p0, v2}, Lcom/android/quickstep/t0;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_11e
    :goto_11e
    if-eqz v7, :cond_12a

    sget-object v2, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/android/quickstep/t;

    invoke-direct {v9, p0}, Lcom/android/quickstep/t;-><init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_12a
    const-string/jumbo p0, "onOverviewToggle(), needIgnoreToRecents = "

    const-string v2, ", isInSuperPowerSaveMode = "

    const-string v9, ", isGestureDisabled = "

    invoke-static {p0, v0, v2, v5, v9}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "isLauncherChanging = "

    const-string v2, ", isCustomizeRecentTaskDisabled = "

    invoke-static {p0, v7, v0, v6, v2}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isLocateIcon = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract preloadOverview(Z)V
.end method

.method public abstract reset()V
.end method

.method public final setMAM(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mAM:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    return-void
.end method

.method public final setMDeviceState(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mDeviceState:Lcom/android/quickstep/RecentsAnimationDeviceState;

    return-void
.end method

.method public final setMInputConsumer(Lcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mInputConsumer:Lcom/android/systemui/shared/system/InputConsumerController;

    return-void
.end method

.method public final setMOverviewCommandHelper(Lcom/android/quickstep/OplusOverviewCommandHelperImpl;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewCommandHelper:Lcom/android/quickstep/OplusOverviewCommandHelperImpl;

    return-void
.end method

.method public final setMOverviewComponentObserver(Lcom/android/quickstep/OverviewComponentObserver;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mOverviewComponentObserver:Lcom/android/quickstep/OverviewComponentObserver;

    return-void
.end method

.method public final setMResetGestureInputConsumer(Lcom/android/quickstep/InputConsumer;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mResetGestureInputConsumer:Lcom/android/quickstep/InputConsumer;

    return-void
.end method

.method public final setMTaskAnimationManager(Lcom/android/quickstep/TaskAnimationManager;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    return-void
.end method
