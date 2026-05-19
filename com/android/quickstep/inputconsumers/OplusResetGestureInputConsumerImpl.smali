.class public final Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;
.super Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusResetGestureInputConsumer"


# instance fields
.field private isValidTouchEvent:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->Companion:Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/TaskAnimationManager;)V
    .registers 3

    const-string/jumbo v0, "taskAnimationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;-><init>(Lcom/android/quickstep/TaskAnimationManager;)V

    return-void
.end method

.method private final processMotionEvent(Landroid/view/MotionEvent;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "OplusResetGestureInputConsumer"

    const-string v5, "QuickStep"

    if-eqz v0, :cond_37

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    goto :goto_54

    :cond_16
    const-string/jumbo v0, "processMotionEvent ACTION_POINTER_DOWN"

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->isValidTouchEvent:Z

    goto :goto_54

    :cond_22
    const-string/jumbo p1, "processMotionEvent ACTION_CANCEL"

    invoke-static {v5, v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->isValidTouchEvent:Z

    goto :goto_54

    :cond_2b
    const-string/jumbo v0, "processMotionEvent ACTION_UP inject up event"

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->isValidTouchEvent:Z

    goto :goto_54

    :cond_37
    const-string/jumbo v0, "processMotionEvent ACTION_DOWN"

    invoke-static {v5, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->isValidTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_51

    iput-boolean v3, p0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->isValidTouchEvent:Z

    return-void

    :cond_51
    invoke-static {p1, v2}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :goto_54
    return-void
.end method


# virtual methods
.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 6

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->isRecentsAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->resetDividerShownState(Z)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskAnimationManager;->getLastGestureState()Lcom/android/quickstep/GestureState;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/quickstep/GestureState;->getEndTarget()Lcom/android/quickstep/GestureState$GestureEndTarget;

    move-result-object v0

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->HOME:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v0, v3, :cond_30

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    goto :goto_35

    :cond_30
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :goto_35
    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/ResetGestureInputConsumer;->mTaskAnimationManager:Lcom/android/quickstep/TaskAnimationManager;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/TaskAnimationManager;->finishRunningRecentsAnimation(Z)V

    :cond_40
    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->isValidTouchEvent:Z

    if-nez v0, :cond_4b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4b

    return-void

    :cond_4b
    invoke-direct {p0, p1}, Lcom/android/quickstep/inputconsumers/OplusResetGestureInputConsumerImpl;->processMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
