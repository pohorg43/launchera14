.class public final Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $handler:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;

.field public final synthetic this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;)V
    .registers 4

    iput-object p2, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    iput-object p3, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;

    invoke-direct {p0, p1}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    iget v0, v0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    invoke-static {p1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getRotationForUserDegreesRotated(FI)I

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->this$0:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;

    iget v1, v0, Lcom/android/quickstep/util/RecentsOrientedState;->mPreviousRotation:I

    if-eq p1, v1, :cond_39

    const/4 v1, 0x2

    if-eq p1, v1, :cond_39

    invoke-static {v0, p1}, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;->access$setMCurrentRotation$p(Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl;I)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$1;->$handler:Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_39
    return-void
.end method
