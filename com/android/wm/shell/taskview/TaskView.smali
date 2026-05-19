.class public Lcom/android/wm/shell/taskview/TaskView;
.super Landroid/view/SurfaceView;
.source ""

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;
.implements Lcom/android/wm/shell/taskview/TaskViewBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/taskview/TaskView$Listener;
    }
.end annotation


# instance fields
.field private mObscuredTouchRegion:Landroid/graphics/Region;

.field private final mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

.field private final mTmpLocation:[I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRootRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIZ)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpLocation:[I

    iput-object p2, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p2, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setTaskViewBase(Lcom/android/wm/shell/taskview/TaskViewBase;)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public getCurrentBoundsOnScreen()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    return-object p0
.end method

.method public isInitialized()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 9

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v3, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpLocation:[I

    aget v5, v4, v2

    aget v4, v4, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v3, v5, v4, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRootRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    :cond_31
    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpLocation:[I

    aget v4, v3, v2

    aget v5, v3, v1

    aget v2, v3, v2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpLocation:[I

    aget v1, v2, v1

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v4, v5, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    if-eqz p0, :cond_65

    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_65
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method public onLocationChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setWindowBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskView;->onLocationChanged()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    :cond_e
    return-void
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setResizeBackgroundColor(I)V

    :cond_b
    return-void
.end method

.method public release()V
    .registers 2

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->release()V

    return-void
.end method

.method public removeTask()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->removeTask()V

    return-void
.end method

.method public setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    return-void
.end method

.method public setObscuredTouchRect(Landroid/graphics/Rect;)V
    .registers 3

    if-eqz p1, :cond_8

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0, p1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-object v0, p0, Lcom/android/wm/shell/taskview/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    return-void
.end method

.method public setObscuredTouchRegion(Landroid/graphics/Region;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/taskview/TaskView;->mObscuredTouchRegion:Landroid/graphics/Region;

    return-void
.end method

.method public setResizeBgColor(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setResizeBackgroundColor(Landroid/view/SurfaceControl$Transaction;I)V

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->startActivity(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    return-void
.end method

.method public startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->startShortcutActivity(Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;Landroid/graphics/Rect;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1  # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->setWindowBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    iget-object p1, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->surfaceCreated(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->surfaceDestroyed()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/taskview/TaskView;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p0}, Lcom/android/wm/shell/taskview/TaskViewTaskController;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
