.class Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final GESTURE_MONITOR:Ljava/lang/String; = "bubbles-gesture"

.field private static final TAG:Ljava/lang/String; = "Bubbles"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mInputMonitor:Landroid/view/InputMonitor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->onInterceptTouch()V

    return-void
.end method

.method private onInterceptTouch()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_7
    return-void
.end method

.method private stopInternal()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_13
    return-void
.end method


# virtual methods
.method public start(Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->stopInternal()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    const-string v2, "bubbles-gesture"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;

    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    new-instance v4, Lcom/android/wm/shell/bubbles/o;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/bubbles/o;-><init>(Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;)V

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;-><init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubblePositioner;Ljava/lang/Runnable;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;)V

    new-instance p1, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {p1, v0, v2, v1}, Lcom/android/wm/shell/bubbles/BubblesNavBarInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/view/Choreographer;Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method public stop()V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/BubblesNavBarGestureTracker;->stopInternal()V

    return-void
.end method
