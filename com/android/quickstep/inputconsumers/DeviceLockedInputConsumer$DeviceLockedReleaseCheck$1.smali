.class Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;-><init>(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;->access$1200(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck$1;->this$0:Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;->access$1100(Lcom/android/quickstep/inputconsumers/DeviceLockedInputConsumer$DeviceLockedReleaseCheck;Z)V

    return-void
.end method
