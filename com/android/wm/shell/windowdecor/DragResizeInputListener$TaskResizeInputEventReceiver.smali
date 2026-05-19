.class Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source ""

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/DragResizeInputListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskResizeInputEventReceiver"
.end annotation


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mConsumeBatchEventRunnable:Ljava/lang/Runnable;

.field private mConsumeBatchEventScheduled:Z

.field private mShouldHandleEvents:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    new-instance p1, Lcom/android/wm/shell/windowdecor/n;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/n;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->lambda$new$0()V

    return-void
.end method

.method private calculateCornersCtrlType(FF)I
    .registers 4
    .annotation build Lcom/android/wm/shell/windowdecor/DragPositioningCallback$CtrlType;
    .end annotation

    float-to-int p1, p1

    float-to-int p2, p2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$700(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x5

    return p0

    :cond_10
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$800(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 p0, 0x9

    return p0

    :cond_1f
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$900(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 p0, 0x6

    return p0

    :cond_2d
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$1000(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_3c

    const/16 p0, 0xa

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method private calculateCtrlType(ZFF)I
    .registers 4
    .annotation build Lcom/android/wm/shell/windowdecor/DragPositioningCallback$CtrlType;
    .end annotation

    if-eqz p1, :cond_7

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCornersCtrlType(FF)I

    move-result p0

    return p0

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    move-result p0

    return p0
.end method

.method private calculateResizeHandlesCtrlType(FF)I
    .registers 6
    .annotation build Lcom/android/wm/shell/windowdecor/DragPositioningCallback$CtrlType;
    .end annotation

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {v2}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$500(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_15

    or-int/lit8 v1, v1, 0x2

    :cond_15
    cmpg-float p1, p2, v0

    if-gez p1, :cond_1b

    or-int/lit8 v1, v1, 0x4

    :cond_1b
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$600(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_28

    or-int/lit8 v1, v1, 0x8

    :cond_28
    return v1
.end method

.method private handleInputEvent(Landroid/view/InputEvent;)Z
    .registers 3

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$100(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Lcom/android/wm/shell/windowdecor/DragDetector;

    move-result-object p0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private isInCornerBounds(FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCornersCtrlType(FF)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private isInResizeHandleBounds(FF)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->scheduleConsumeBatchEvent()V

    :cond_12
    return-void
.end method

.method private scheduleConsumeBatchEvent()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    return-void
.end method

.method private updateCursorType(FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    move-result p1

    packed-switch p1, :pswitch_data_20

    :pswitch_7  #0x3, 0x7
    const/16 p1, 0x3e8

    goto :goto_15

    :pswitch_a  #0x6, 0x9
    const/16 p1, 0x3f8

    goto :goto_15

    :pswitch_d  #0x5, 0xa
    const/16 p1, 0x3f9

    goto :goto_15

    :pswitch_10  #0x4, 0x8
    const/16 p1, 0x3f7

    goto :goto_15

    :pswitch_13  #0x1, 0x2
    const/16 p1, 0x3f6

    :goto_15
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$400(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13  #00000001
        :pswitch_13  #00000002
        :pswitch_7  #00000003
        :pswitch_10  #00000004
        :pswitch_d  #00000005
        :pswitch_a  #00000006
        :pswitch_7  #00000007
        :pswitch_10  #00000008
        :pswitch_a  #00000009
        :pswitch_d  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x1002

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_d

    move v0, v2

    goto :goto_e

    :cond_d
    move v0, v3

    :goto_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_8d

    if-eq v1, v2, :cond_65

    const/4 v0, 0x2

    if-eq v1, v0, :cond_43

    const/4 v0, 0x3

    if-eq v1, v0, :cond_65

    const/4 v0, 0x7

    if-eq v1, v0, :cond_36

    const/16 v0, 0x9

    if-eq v1, v0, :cond_36

    const/16 p1, 0xa

    if-eq v1, p1, :cond_29

    goto/16 :goto_c7

    :cond_29
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$400(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Landroid/hardware/input/InputManager;

    move-result-object p0

    const/16 p1, 0x3e8

    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto/16 :goto_c8

    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->updateCursorType(FF)V

    goto/16 :goto_c8

    :cond_43
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-nez v0, :cond_49

    goto/16 :goto_c7

    :cond_49
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$200(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$300(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    goto :goto_c8

    :cond_65
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$200(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$300(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v1, v4, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    :cond_84
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$202(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;I)I

    goto :goto_c8

    :cond_8d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    if-eqz v0, :cond_9e

    invoke-direct {p0, v1, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->isInCornerBounds(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    goto :goto_a4

    :cond_9e
    invoke-direct {p0, v1, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->isInResizeHandleBounds(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    :goto_a4
    iget-boolean v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-eqz v5, :cond_c7

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$202(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;I)I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-direct {p0, v0, v1, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCtrlType(ZFF)I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->access$300(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    move-result-object p0

    invoke-interface {p0, v0, v5, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(IFF)V

    goto :goto_c8

    :cond_c7
    :goto_c7
    move v2, v3

    :goto_c8
    return v2
.end method

.method public onBatchedInputEventPending(I)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->scheduleConsumeBatchEvent()V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->handleInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
