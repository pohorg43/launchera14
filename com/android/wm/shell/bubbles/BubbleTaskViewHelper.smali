.class public Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BubbleTaskViewHelper"


# instance fields
.field private mBubble:Lcom/android/wm/shell/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private final mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
    .end annotation
.end field

.field private final mParentView:Landroid/view/View;

.field private mPendingIntent:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTaskId:I

.field private mTaskView:Lcom/android/wm/shell/taskview/TaskView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTaskViewListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

.field private mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;Landroid/view/View;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskViewListener:Lcom/android/wm/shell/taskview/TaskView$Listener;

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getMainExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mParentView:Landroid/view/View;

    new-instance p3, Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getTaskOrganizer()Lcom/android/wm/shell/ShellTaskOrganizer;

    move-result-object p4

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getTaskViewTransitions()Lcom/android/wm/shell/taskview/TaskViewTransitions;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleController;->getSyncTransactionQueue()Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-result-object p2

    invoke-direct {p3, p1, p4, v2, p2}, Lcom/android/wm/shell/taskview/TaskViewTaskController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/taskview/TaskViewTransitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    new-instance p2, Lcom/android/wm/shell/taskview/TaskView;

    iget-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskViewTaskController:Lcom/android/wm/shell/taskview/TaskViewTaskController;

    invoke-direct {p2, p1, p3}, Lcom/android/wm/shell/taskview/TaskView;-><init>(Landroid/content/Context;Lcom/android/wm/shell/taskview/TaskViewTaskController;)V

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    invoke-virtual {p2, v1, v0}, Lcom/android/wm/shell/taskview/TaskView;->setListener(Ljava/util/concurrent/Executor;Lcom/android/wm/shell/taskview/TaskView$Listener;)V

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/taskview/TaskView;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    return p0
.end method

.method public static synthetic access$402(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;I)I
    .registers 2

    iput p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    return p1
.end method

.method public static synthetic access$500(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mListener:Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper$Listener;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/Bubble;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Lcom/android/wm/shell/bubbles/BubbleController;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method private didBackingContentChange(Lcom/android/wm/shell/bubbles/Bubble;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_c

    move p0, v1

    goto :goto_d

    :cond_c
    move p0, v2

    :goto_d
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_15

    move p1, v1

    goto :goto_16

    :cond_15
    move p1, v2

    :goto_16
    if-eq p0, p1, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    return v1
.end method


# virtual methods
.method public cleanUpTaskView()V
    .registers 4

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_EXPANDED_VIEW:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->TAG:Ljava/lang/String;

    const-string v1, "cleanUpExpandedState: bubble="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->getBubbleKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    invoke-static {v1, v2, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_1d
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_36

    :try_start_22
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2b} :catch_2c

    goto :goto_36

    :catch_2c
    move-exception v0

    sget-object v1, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/wm/shell/taskview/TaskView;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    :cond_40
    return-void
.end method

.method public getBubbleKey()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getTaskId()I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskId:I

    return p0
.end method

.method public getTaskView()Lcom/android/wm/shell/taskview/TaskView;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    return-object p0
.end method

.method public isValidBubble()Z
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_e

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/Bubble;->hasMetadataShortcutId()Z

    move-result p0

    if-eqz p0, :cond_10

    :cond_e
    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public update(Lcom/android/wm/shell/bubbles/Bubble;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->didBackingContentChange(Lcom/android/wm/shell/bubbles/Bubble;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v1

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v2

    :goto_10
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/Bubble;->getBubbleIntent()Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleTaskViewHelper;->mPendingIntent:Landroid/app/PendingIntent;

    return v2

    :cond_1b
    return v1
.end method
