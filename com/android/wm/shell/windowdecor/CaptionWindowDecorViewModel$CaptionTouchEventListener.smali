.class Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptionTouchEventListener"
.end annotation


# instance fields
.field private final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field private mDragPointerId:I

.field private final mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field private mIsDragging:Z

.field private final mTaskId:I

.field private final mTaskToken:Landroid/window/WindowContainerToken;

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    iget p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    iget-object p1, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;)Lcom/android/wm/shell/windowdecor/DragDetector;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    return-object p0
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$300(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    return v2

    :cond_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_3a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_24

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3a

    return v1

    :cond_24
    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v2, v3, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return v1

    :cond_3a
    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v1, v3, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return p1

    :cond_52
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPointerId:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    invoke-interface {v0, v2, v1, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(IFF)V

    iput-boolean v2, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mIsDragging:Z

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/wm/shell/R$id;->close_window:I

    if-ne p1, v0, :cond_14

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$200(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->closeTask(Landroid/window/WindowContainerToken;)V

    goto :goto_4b

    :cond_14
    sget v0, Lcom/android/wm/shell/R$id;->back_button:I

    if-ne p1, v0, :cond_22

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$200(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->injectBackKey()V

    goto :goto_4b

    :cond_22
    sget v0, Lcom/android/wm/shell/R$id;->minimize_window:I

    if-ne p1, v0, :cond_32

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$200(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->minimizeTask(Landroid/window/WindowContainerToken;)V

    goto :goto_4b

    :cond_32
    sget v0, Lcom/android/wm/shell/R$id;->maximize_window:I

    if-ne p1, v0, :cond_4b

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$300(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$200(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/windowdecor/TaskOperations;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/TaskOperations;->maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/wm/shell/R$id;->caption:I

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_34

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$300(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-nez p1, :cond_34

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mTaskToken:Landroid/window/WindowContainerToken;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->this$0:Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;

    invoke-static {v0}, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;->access$400(Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel;)Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :cond_34
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/CaptionWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
