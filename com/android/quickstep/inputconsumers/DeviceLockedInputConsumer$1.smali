.class Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->finishTouchTracking(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

.field public final synthetic val$dismissTask:Z


# direct methods
.method public constructor <init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iput-boolean p2, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    sget-boolean p1, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$000(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/TaskAnimationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quickstep/TaskAnimationManager;->getCurrentCallbacks()Lcom/android/quickstep/RecentsAnimationCallbacks;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$100(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/RecentsAnimationController;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    invoke-static {p1, v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$200(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)V

    goto :goto_4b

    :cond_21
    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1, v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$302(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)Z

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    iget-boolean v0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    invoke-static {p1, v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$402(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)Z

    goto :goto_4b

    :cond_2e
    iget-boolean p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->val$dismissTask:Z

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$500(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {v1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$600(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/GestureState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/GestureState;->getHomeIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/quickstep/OverviewComponentObserver;->startHomeIntentSafely(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p1, v0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$702(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;Z)Z

    :cond_4b
    :goto_4b
    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$900(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;)Lcom/android/quickstep/MultiStateCallback;

    move-result-object p0

    invoke-static {}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer;->access$800()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    return-void
.end method
