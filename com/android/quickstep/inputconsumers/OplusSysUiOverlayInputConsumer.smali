.class public final Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;
.super Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;
.source ""


# instance fields
.field private downEvent:Landroid/view/MotionEvent;

.field private final isTaskbarPresent:Z

.field private upEvent:Landroid/view/MotionEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/systemui/shared/system/InputMonitorCompat;Z)V
    .registers 6

    const-string v0, "deviceState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;-><init>(Landroid/content/Context;Lcom/android/quickstep/RecentsAnimationDeviceState;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    iput-boolean p4, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->isTaskbarPresent:Z

    return-void
.end method

.method private final reset()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusSysUiOverlayInputConsumer"

    const-string/jumbo v2, "reset()"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->downEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_11
    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->upEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->downEvent:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->upEvent:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final isTaskbarPresent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->isTaskbarPresent:Z

    return p0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->isTaskbarPresent:Z

    if-eqz v0, :cond_1d

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    goto :goto_1d

    :cond_10
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->upEvent:Landroid/view/MotionEvent;

    goto :goto_1d

    :cond_17
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->downEvent:Landroid/view/MotionEvent;

    :cond_1d
    :goto_1d
    invoke-super {p0, p1}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSwipeUpCancelled()V
    .registers 4

    invoke-super {p0}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->onSwipeUpCancelled()V

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->isTaskbarPresent:Z

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/quickstep/inputconsumers/SysUiOverlayInputConsumer;->allowInterceptByParent()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->downEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->upEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_16

    goto :goto_2a

    :cond_16
    const-string v0, "QuickStep"

    const-string v1, "OplusSysUiOverlayInputConsumer"

    const-string/jumbo v2, "swipe up canceled, so we inject event"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->downEvent:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->upEvent:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/oplus/quickstep/utils/OplusInputInjectorUtils;->notifyInjectEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/OplusSysUiOverlayInputConsumer;->reset()V

    :cond_2a
    :goto_2a
    return-void
.end method
