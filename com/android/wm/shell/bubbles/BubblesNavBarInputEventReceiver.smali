.class Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source ""


# instance fields
.field private final mMotionEventHandler:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/view/Choreographer;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;)V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;->mMotionEventHandler:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v1, :cond_9

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;->mMotionEventHandler:Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_16
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
