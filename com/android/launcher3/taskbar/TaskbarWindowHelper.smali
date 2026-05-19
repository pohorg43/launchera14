.class public final Lcom/android/launcher3/taskbar/TaskbarWindowHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarWindowHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarWindowHelper$Companion;

.field private static final DELAY_ADD_TASKBAR:J = 0x3e8L

.field private static final MAX_RETRY_ADD_TASKBAR_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TaskbarWindowHelper"

.field private static sAddedDragLayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/taskbar/TaskbarDragLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddTaskbarTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

.field private mIsDestroyed:Z

.field private mPendingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRetryAddTaskbarCount:I

.field private mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->Companion:Lcom/android/launcher3/taskbar/TaskbarWindowHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static final synthetic access$addTaskbarInner(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->addTaskbarInner(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public static final synthetic access$getMRetryAddTaskbarCount$p(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    return p0
.end method

.method public static final synthetic access$setMAddTaskbarTask$p(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;Lcom/oplus/quickstep/utils/SimpleCancellableTask;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mAddTaskbarTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    return-void
.end method

.method public static final synthetic access$setMRetryAddTaskbarCount$p(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    return-void
.end method

.method private final addTaskbarInner(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;Z)V
    .registers 11

    const-string v0, ", mRetryAddTaskbarCount: "

    const-string v1, "addTaskbarInner "

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->cancelAddTaskbarTask()V

    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mIsDestroyed:Z

    const-string v3, "TaskbarWindowHelper"

    if-eqz v2, :cond_18

    const-string p0, "addTaskbarInner return, destroyed"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    const/4 v2, 0x0

    if-eqz p3, :cond_1d

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    :cond_1d
    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    const/4 v4, 0x6

    if-le p3, v4, :cond_35

    const-string p1, "addTaskbarInner return, beyond max retry count. "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    sget-object p3, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->sAddedDragLayerRef:Ljava/lang/ref/WeakReference;

    const/4 v4, 0x0

    if-eqz p3, :cond_47

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0, v5, p3}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->safeRemoveViewImmediate(Landroid/view/WindowManager;Landroid/view/View;)V

    sput-object v4, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->sAddedDragLayerRef:Ljava/lang/ref/WeakReference;

    :cond_47
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mPendingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p3, :cond_69

    const-string v5, "addTaskbarInner mPendingWindowLayoutParams: "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mPendingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", windowLayoutParams: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mPendingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :cond_69
    if-nez p3, :cond_6c

    goto :goto_6d

    :cond_6c
    move-object p2, p3

    :goto_6d
    :try_start_6d
    invoke-static {p2}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getNavBarInsets(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , layoutHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", navbarInsets: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3, p1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success, mRetryAddTaskbarCount: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p3, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->sAddedDragLayerRef:Ljava/lang/ref/WeakReference;

    sget-object p3, Lh4/z;->a:Lh4/z;
    :try_end_d1
    .catchall {:try_start_6d .. :try_end_d1} :catchall_d2

    goto :goto_d7

    :catchall_d2
    move-exception p3

    invoke-static {p3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p3

    :goto_d7
    invoke-static {p3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_12b

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_ea

    const/4 v5, 0x2

    const-string v6, "has already been added to the window manager"

    invoke-static {v4, v6, v2, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    :cond_ea
    if-eqz v2, :cond_f1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->safeRemoveViewImmediate(Landroid/view/WindowManager;Landroid/view/View;)V

    :cond_f1
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper$addTaskbarInner$3$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarWindowHelper;Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;)V

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mAddTaskbarTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mAddTaskbarTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_12b
    return-void
.end method

.method private final cancelAddTaskbarTask()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mAddTaskbarTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mAddTaskbarTask:Lcom/oplus/quickstep/utils/SimpleCancellableTask;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SimpleCancellableTask;->cancel()V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method private final safeRemoveViewImmediate(Landroid/view/WindowManager;Landroid/view/View;)V
    .registers 5

    const-string/jumbo p0, "safeRemoveViewImmediate "

    const-string v0, "TaskbarWindowHelper"

    if-eqz p2, :cond_51

    :try_start_7
    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " success"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    goto :goto_2d

    :catchall_28
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_2d
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_51

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2}, Lcom/android/common/debug/LogUtils;->debugFormat(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " error, "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return-void
.end method


# virtual methods
.method public final addTaskbar(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    const-string v0, "dragLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mPendingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->addTaskbarInner(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;Z)V

    return-void
.end method

.method public final removeTaskbar()V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mIsDestroyed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mPendingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_b

    return-void

    :cond_b
    const-string v1, "TaskbarWindowHelper"

    const-string/jumbo v2, "removeTaskbar"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->cancelAddTaskbarTask()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mRetryAddTaskbarCount:I

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->safeRemoveViewImmediate(Landroid/view/WindowManager;Landroid/view/View;)V

    sget-object v1, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->sAddedDragLayerRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->sAddedDragLayerRef:Ljava/lang/ref/WeakReference;

    :cond_34
    return-void
.end method

.method public final updateWindowLayout(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 10

    const-string/jumbo v0, "windowLayoutParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mTaskbarDragLayer:Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    if-eqz v0, :cond_ae

    if-nez v1, :cond_16

    goto/16 :goto_ae

    :cond_16
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    const-string/jumbo v3, "updateWindowLayout reason: "

    const-string v4, "TaskbarWindowHelper"

    if-eqz v2, :cond_6d

    const-string v2, ", "

    invoke-static {v3, p2, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x78

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", navBarInsets: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getNavBarInsets(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", attachToWindow: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isAddedWindow: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v5

    if-eqz v5, :cond_62

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isAddedWindow()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_63

    :cond_62
    const/4 v5, 0x0

    :goto_63
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_85

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v2

    const/4 v6, 0x0

    if-eqz v2, :cond_82

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isAddedWindow()Z

    move-result v2

    if-ne v2, v5, :cond_82

    move v6, v5

    :cond_82
    if-eqz v6, :cond_85

    return-void

    :cond_85
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",  taskbar not attached, set pending: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->mPendingWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1, p1, v5}, Lcom/android/launcher3/taskbar/TaskbarWindowHelper;->addTaskbarInner(Lcom/android/launcher3/taskbar/TaskbarDragLayer;Landroid/view/WindowManager$LayoutParams;Z)V

    :cond_ae
    :goto_ae
    return-void
.end method
