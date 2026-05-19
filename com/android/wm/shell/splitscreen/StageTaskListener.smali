.class Lcom/android/wm/shell/splitscreen/StageTaskListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StageTaskListener"


# instance fields
.field private final mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

.field private final mChildrenLeashes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field public mChildrenTaskInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field public mDimLayer:Landroid/view/SurfaceControl;

.field private mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public mRootLeash:Landroid/view/SurfaceControl;

.field public mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;ILcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/view/SurfaceSession;Lcom/android/launcher3/icons/IconProvider;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    const/4 p4, 0x6

    invoke-virtual {p2, p3, p4, p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->createRootTask(IILcom/android/wm/shell/ShellTaskOrganizer$TaskListener;)V

    new-instance p2, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-direct {p2, p1, p0, p5}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/StageTaskListener;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$onTaskAppeared$5(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$onTaskVanished$9(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$onTaskInfoChanged$7(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private contains(Ljava/util/function/Predicate;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static synthetic d(Lcom/android/wm/shell/splitscreen/StageTaskListener;ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$onTaskAppeared$6(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic e(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$updateChildTaskSurface$10(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic f(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$getTopVisibleChildTaskId$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method private findTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, p1, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic g(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$getTopChildTaskUid$3(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/android/wm/shell/splitscreen/StageTaskListener;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$onTaskVanished$8(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic i(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$containsContainer$1(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$isFocused$4(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->lambda$containsToken$0(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$containsContainer$1(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static synthetic lambda$containsToken$0(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getTopChildTaskUid$3(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic lambda$getTopVisibleChildTaskId$2(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static synthetic lambda$isFocused$4(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    return p0
.end method

.method private synthetic lambda$onTaskAppeared$5(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    const-string v2, "Dim layer"

    invoke-static {p1, v0, v2, v1}, Lcom/android/wm/shell/common/SurfaceUtils;->makeDimLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    return-void
.end method

.method private synthetic lambda$onTaskAppeared$6(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onChildrenTaskAppeared(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onTaskInfoChanged$7(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onTaskVanished$8(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->release(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onRootTaskVanished(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private synthetic lambda$onTaskVanished$9(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onChildrenTaskVanished(ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private static synthetic lambda$updateChildTaskSurface$10(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 11

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->TAG:Ljava/lang/String;

    const-string p2, "Skip updating invalid child task surface of task#"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    const/4 p1, 0x0

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget p1, p2, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p4, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz p3, :cond_3d

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p4, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p4, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_3d
    return-void
.end method

.method private sendStatusChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onStatusChanged(ZZ)V

    return-void
.end method

.method private updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V
    .registers 6

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/i2;

    invoke-direct {v1, p2, p1, v0, p3}, Lcom/android/wm/shell/splitscreen/i2;-><init>(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Z)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method


# virtual methods
.method public addTask(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;)V
    .registers 6

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p0, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public childrenLeashesContainsTask(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public containsContainer(Landroid/os/IBinder;)Z
    .registers 3

    new-instance v0, Lcom/android/wm/shell/splitscreen/k2;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/k2;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public containsTask(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public containsToken(Landroid/window/WindowContainerToken;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    new-instance v0, Lcom/android/wm/shell/splitscreen/j2;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/j2;-><init>(Landroid/window/WindowContainerToken;)V

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_55

    const-string v1, "Children list:"

    invoke-static {p2, v1, p1}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    :goto_1d
    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_55

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Task#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " taskID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " baseActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    :cond_55
    return-void
.end method

.method public evictAllChildren(Landroid/window/WindowContainerTransaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    return-void
.end method

.method public evictAllChildren(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->evictAllChildren(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public evictChildren(Landroid/window/WindowContainerTransaction;I)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_11

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_11
    return-void
.end method

.method public evictInvisibleChildren(Landroid/window/WindowContainerTransaction;)V
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v2, :cond_1d

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public evictInvisibleChildren(Landroid/window/WindowContainerTransaction;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-nez v2, :cond_21

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq p2, v2, :cond_21

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_24
    return-void
.end method

.method public evictNonOpeningChildren([Landroid/view/RemoteAnimationTarget;Landroid/window/WindowContainerTransaction;)V
    .registers 12

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_13
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v3, v5, :cond_66

    sget-object v5, Lcom/android/wm/shell/splitscreen/StageTaskListener;->TAG:Ljava/lang/String;

    const-string v7, "evictNonOpeningChildren taskId "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v3

    iget v8, v8, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " mode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v3

    iget v8, v8, Landroid/view/RemoteAnimationTarget;->mode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, p1, v3

    iget v5, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v5, v6, :cond_4a

    aget-object v5, p1, v3

    iget v5, v5, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4a
    aget-object v5, p1, v3

    iget v5, v5, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v5, :cond_63

    aget-object v4, p1, v3

    iget v4, v4, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v4, p1, v3

    iget v4, v4, Landroid/view/RemoteAnimationTarget;->taskId:I

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->remove(I)V

    move v4, v6

    :cond_63
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_66
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v3, 0x0

    if-eqz v4, :cond_9b

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_72
    if-ltz p1, :cond_d3

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    iget v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    return-void

    :cond_93
    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v4, v3, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    add-int/lit8 p1, p1, -0x1

    goto :goto_72

    :cond_9b
    if-eq p1, v6, :cond_d3

    move v0, v2

    :goto_9e
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d3

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v4, :cond_af

    goto :goto_d3

    :cond_af
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, v4, v3, v2}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    sget-object v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "toBeEvictSize "

    const-string v7, " evictNonOpeningChild "

    invoke-static {v5, p1, v7}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/oplus/splitscreen/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    if-ne p1, v6, :cond_d0

    goto :goto_d3

    :cond_d0
    add-int/lit8 v0, v0, -0x1

    goto :goto_9e

    :cond_d3
    :goto_d3
    return-void
.end method

.method public evictOtherChildren(Landroid/window/WindowContainerTransaction;I)V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p2, v2, :cond_17

    goto :goto_1e

    :cond_17
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/window/WindowContainerTransaction;->reparent(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :goto_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_21
    return-void
.end method

.method public fadeOutDecor(Ljava/lang/Runnable;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->fadeOutDecor(Ljava/lang/Runnable;)V

    goto :goto_b

    :cond_8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_b
    return-void
.end method

.method public getChildCount()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Landroid/app/ActivityManager$RunningTaskInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtImpl()Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    return-object p0
.end method

.method public getSplitDecorManager()Lcom/android/wm/shell/common/split/SplitDecorManager;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    return-object p0
.end method

.method public getTargetChildSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_c

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopChildTaskUid()I
    .registers 2

    sget-object v0, Lcom/android/wm/shell/splitscreen/m2;->a:Lcom/android/wm/shell/splitscreen/m2;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_f

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public getTopSurface()Landroid/view/SurfaceControl;
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 3

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getTopVisibleChildTaskId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopVisibleChildTaskId()I
    .registers 2

    sget-object v0, Lcom/android/wm/shell/splitscreen/l2;->a:Lcom/android/wm/shell/splitscreen/l2;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->getChildTaskInfo(Ljava/util/function/Predicate;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_b

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public isFocused()Z
    .registers 2

    sget-object v0, Lcom/android/wm/shell/splitscreen/n2;->a:Lcom/android/wm/shell/splitscreen/n2;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->contains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isRootTaskId(I)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p0, :cond_a

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isSplitDecorManagerIdle()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitDecorManager;->getExtImpl()Lcom/android/wm/shell/common/split/SplitDecorManagerExt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/common/split/SplitDecorManagerExt;->isSplitDecorManagerIdle()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->onResized(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onResized(Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public onResized(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V

    :cond_8
    return-void
.end method

.method public onResizing(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_11

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/common/split/SplitDecorManager;->onResizing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V

    :cond_11
    return-void
.end method

.method public onSplitScreenListenerRegistered(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;I)V
    .registers 6
    .param p2  # I
        .annotation build Lcom/android/wm/shell/splitscreen/SplitScreen$StageType;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-interface {p1, v1, p2, v2}, Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;->onTaskStageChanged(IIZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v0, :cond_33

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance p1, Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {p1, p2, v0, v1}, Lcom/android/wm/shell/common/split/SplitDecorManager;-><init>(Landroid/content/res/Configuration;Lcom/android/launcher3/icons/IconProvider;Landroid/view/SurfaceSession;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object p2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onRootTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceSession;Lcom/android/wm/shell/common/split/SplitDecorManager;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onRootTaskAppeared()V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance p2, Lcom/android/wm/shell/splitscreen/h2;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/splitscreen/h2;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_82

    :cond_33
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v0, :cond_83

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/f2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/wm/shell/splitscreen/f2;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;II)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_5c

    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    if-eqz v2, :cond_5c

    move v3, v4

    :cond_5c
    invoke-interface {v1, v0, v4, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_6e

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->needGoLegacy()Z

    move-result v1

    if-nez v1, :cond_6e

    return-void

    :cond_6e
    invoke-direct {p0, p1, p2, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    invoke-interface {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onChildTaskAppeared(I)V

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->updateFocusIfNeed(Z)V

    :goto_82
    return-void

    :cond_83
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n Unknown task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->checkSupportsSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_17

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_17
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onNoLongerSupportMultiWindow()V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v2, :cond_5f

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v1, :cond_4d

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eq v0, v1, :cond_4d

    if-eqz v1, :cond_43

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/split/SplitDecorManager;->inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    goto :goto_4d

    :cond_43
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v1, Lcom/android/wm/shell/splitscreen/j1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/j1;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v0, v1, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onRootTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    goto/16 :goto_e5

    :cond_5f
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    if-ne v0, v1, :cond_107

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_71

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    goto :goto_72

    :cond_71
    move v0, v1

    :goto_72
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v2, :cond_101

    sget-object v2, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-eqz v2, :cond_101

    sget-object v2, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v2

    if-nez v2, :cond_90

    goto/16 :goto_101

    :cond_90
    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-boolean v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_a6

    iget-boolean v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisibleRequested:Z

    if-eqz v4, :cond_a6

    move v4, v5

    goto :goto_a7

    :cond_a6
    move v4, v1

    :goto_a7
    invoke-interface {v2, v3, v5, v4}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v2, :cond_e5

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_e5

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_e5

    if-nez v0, :cond_d8

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-direct {p0, p1, v0, v5}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    goto :goto_e5

    :cond_d8
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->updateChildTaskSurface(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Z)V

    :cond_e5
    :goto_e5
    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->isFocused()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->updateFocusIfNeed(Z)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_fd

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->needGoLegacy()Z

    move-result p1

    if-nez p1, :cond_fd

    return-void

    :cond_fd
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    return-void

    :cond_101
    :goto_101
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    invoke-interface {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onNoLongerSupportMultiWindow()V

    return-void

    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Unknown task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v0, :cond_1d

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onRootTaskVanished()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootLeash:Landroid/view/SurfaceControl;

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v0, Lcom/android/wm/shell/splitscreen/g2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/g2;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    goto :goto_54

    :cond_1d
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenLeashes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/splitscreen/f2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/wm/shell/splitscreen/f2;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;II)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mCallbacks:Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;

    const/4 v2, 0x0

    iget-boolean p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-interface {v1, v0, v2, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener$StageListenerCallbacks;->onChildTaskStatusChanged(IZZ)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_51

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitToggleHelper;->needGoLegacy()Z

    move-result p1

    if-nez p1, :cond_51

    return-void

    :cond_51
    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->sendStatusChanged()V

    :goto_54
    return-void

    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Unknown task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n mRootTaskInfo: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public relaeseSplitControlBar()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->relaeseSplitControlBar()V

    return-void
.end method

.method public reorderChild(IZLandroid/window/WindowContainerTransaction;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->containsTask(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p0, p2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public reparentTopTask(Landroid/window/WindowContainerTransaction;)V
    .registers 9

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget-object v3, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    sget-object v4, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/window/WindowContainerTransaction;->reparentTasks(Landroid/window/WindowContainerToken;Landroid/window/WindowContainerToken;[I[IZZ)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public resetBounds(Landroid/window/WindowContainerTransaction;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setAppBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mRootTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->setSmallestScreenWidthDp(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mSplitDecorManager:Lcom/android/wm/shell/common/split/SplitDecorManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V

    :cond_7
    return-void
.end method

.method public setControlBarListener(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->setControlBarListener(Lcom/android/wm/shell/splitscreen/SplitControlBarManager$ControlBarListener;)V

    return-void
.end method

.method public setDividerShow(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mExtImpl:Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageTaskListenerExt;->setDividerShow(Z)V

    return-void
.end method

.method public setSplitToZoomTaskId(I)V
    .registers 2

    invoke-static {p1}, Lcom/android/wm/shell/unfold/animation/SplitTaskUnfoldAnimator;->setSplitToZoomTaskId(I)V

    return-void
.end method
