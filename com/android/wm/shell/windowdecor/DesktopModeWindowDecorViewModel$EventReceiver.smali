.class Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;
.super Landroid/view/InputEventReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventReceiver"
.end annotation


# instance fields
.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mTasksOnDisplay:I

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    invoke-direct {p0, p3, p4}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    return-void
.end method

.method public static synthetic access$1000(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->decrementTaskNumber()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->getTasksOnDisplay()I

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->incrementTaskNumber()V

    return-void
.end method

.method private decrementTaskNumber()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    return-void
.end method

.method private getTasksOnDisplay()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    return p0
.end method

.method private incrementTaskNumber()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_a
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 6

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-static {v1, v2, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->access$800(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/MotionEvent;Landroid/view/InputMonitor;)V

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method
