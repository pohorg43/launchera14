.class public final Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;
.super Landroid/os/Handler;
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
.field public final synthetic $rotationChangeTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;->$rotationChangeTask:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    if-eqz p1, :cond_9

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0xb

    if-nez v0, :cond_f

    goto :goto_1a

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/android/quickstep/util/OplusRecentsOrientedStateImpl$handler$1;->$rotationChangeTask:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
