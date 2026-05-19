.class Lcom/android/wm/shell/windowdecor/TaskOperations;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskOperations"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-void
.end method

.method private sendBackEvent(I)V
    .registers 16

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v13, p1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mContext:Landroid/content/Context;

    const-class p1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v13, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    if-nez p0, :cond_3a

    const-string p0, "TaskOperations"

    const-string p1, "Inject input event fail"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void
.end method


# virtual methods
.method public closeTask(Landroid/window/WindowContainerToken;)V
    .registers 3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {v0, p1}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_12

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    invoke-interface {p0, v0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;->startRemoveTransition(Landroid/window/WindowContainerTransaction;)V

    goto :goto_17

    :cond_12
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_17
    return-void
.end method

.method public injectBackKey()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/wm/shell/windowdecor/TaskOperations;->sendBackEvent(I)V

    return-void
.end method

.method public maximizeTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 7

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x5

    :goto_f
    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v3

    iget-object v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    if-ne v1, v3, :cond_1d

    const/4 v3, 0x0

    goto :goto_1e

    :cond_1d
    move v3, v1

    :goto_1e
    invoke-virtual {v0, v4, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    if-ne v1, v2, :cond_29

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    :cond_29
    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_33

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    invoke-interface {p0, v1, v0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;->startWindowingModeTransition(ILandroid/window/WindowContainerTransaction;)V

    goto :goto_38

    :cond_33
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_38
    return-void
.end method

.method public minimizeTask(Landroid/window/WindowContainerToken;)V
    .registers 4

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mTransitionStarter:Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;

    invoke-interface {p0, v0}, Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;->startMinimizedModeTransition(Landroid/window/WindowContainerTransaction;)V

    goto :goto_18

    :cond_13
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->queue(Landroid/window/WindowContainerTransaction;)V

    :goto_18
    return-void
.end method
