.class public final Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;
.super Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusDeviceLockedInputConsumer"


# instance fields
.field private final context:Landroid/content/Context;

.field private downEvent:Landroid/view/MotionEvent;

.field private final gestureState:Lcom/android/quickstep/GestureState;

.field private final isGestureNavbarHidden:Z

.field private upEvent:Landroid/view/MotionEvent;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->Companion:Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/quickstep/TaskAnimationManager;Lcom/android/quickstep/GestureState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->gestureState:Lcom/android/quickstep/GestureState;

    sget-object p1, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->isGestureNavbarHidden()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->isGestureNavbarHidden:Z

    return-void
.end method


# virtual methods
.method public createRecentsIntent()Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->context:Landroid/content/Context;

    const-string v3, "LockScreenRecentsActivity."

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->gestureState:Lcom/android/quickstep/GestureState;

    if-eqz p0, :cond_27

    invoke-virtual {p0}, Lcom/android/quickstep/GestureState;->getGestureId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    const-string v1, "INTENT_EXTRA_LOG_TRACE_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x10008000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-string/jumbo v1, "recentapps"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->closeSystemWindows(Ljava/lang/String;)V

    const-string v0, "Intent(Intent.ACTION_MAI…REASON_RECENTS)\n        }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public finishTouchTracking(Landroid/view/MotionEvent;)V
    .registers 5

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const-string v0, "finishTouchTracking(), action="

    const-string v1, ", mThresholdCrossed="

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    const-string v2, "OplusDeviceLockedInputConsumer"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->isGestureNavbarHidden:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->mThresholdCrossed:Z

    if-eqz v0, :cond_26

    :cond_23
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    :cond_26
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->downEvent:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->upEvent:Landroid/view/MotionEvent;

    invoke-static {p1, v0}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    :cond_2d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->downEvent:Landroid/view/MotionEvent;

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->upEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getGestureState()Lcom/android/quickstep/GestureState;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->gestureState:Lcom/android/quickstep/GestureState;

    return-object p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->isGestureNavbarHidden:Z

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    goto :goto_23

    :cond_16
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->upEvent:Landroid/view/MotionEvent;

    goto :goto_23

    :cond_1d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusDeviceLockedInputConsumer;->downEvent:Landroid/view/MotionEvent;

    :cond_23
    :goto_23
    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method
