.class public Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;
    }
.end annotation


# static fields
.field private static final LAUNCH_SCENARIO_DEFAULT:I = 0x0

.field public static final OPLUS_FLAG_POCKET_STUDIO_EMBEDDED:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "FullscreenTaskListener"


# instance fields
.field private final mRecentTasksOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;"
        }
    .end annotation
.end field

.field private final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field private final mTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowDecorViewModelOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .registers 8

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v4

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p3, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p4, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    iput-object p5, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    if-eqz p1, :cond_1c

    new-instance p2, Lcom/android/quickstep/c1;

    invoke-direct {p2, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->lambda$onTaskAppeared$0(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public static synthetic b(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->lambda$updateRecentsForVisibleFullscreenTask$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->onInit()V

    return-void
.end method

.method public static synthetic d(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->lambda$onTaskInfoChanged$1(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private findTaskSurface(I)Landroid/view/SurfaceControl;
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    return-object p0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no surface for taskId="

    invoke-static {v0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getScenario(Landroid/content/res/Configuration;)I
    .registers 6

    const-class p0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {p0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    const/4 p1, -0x1

    if-eqz p0, :cond_2a

    :try_start_13
    const-class v0, Loplus/content/res/OplusExtraConfiguration;

    const-string v1, "getScenario"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_2a

    :catchall_2a
    :cond_2a
    return p1
.end method

.method private isEmebeddedTask(Landroid/content/Intent;)Z
    .registers 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    :try_start_2
    const-class v1, Lcom/oplus/content/OplusIntent;

    const-string v2, "getOplusFlags"

    new-array v3, p0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Intent;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, p0, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_23

    goto :goto_24

    :catchall_23
    move p1, v0

    :goto_24
    const v1, 0x8000

    and-int/2addr p1, v1

    if-eqz p1, :cond_2b

    return p0

    :cond_2b
    return v0
.end method

.method private synthetic lambda$onTaskAppeared$0(Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->getScenario(Landroid/content/res/Configuration;)I

    move-result v0

    if-gtz v0, :cond_46

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget v0, p3, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p4, p1, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    const/high16 p3, 0x3f800000  # 1.0f

    invoke-virtual {p4, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-static {}, Lcom/oplus/putt/OPlusPuttTaskObserver;->getInstance()Lcom/oplus/putt/OPlusPuttTaskObserver;

    move-result-object p3

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p3, v0}, Lcom/oplus/putt/OPlusPuttTaskObserver;->isPuttDisplay(I)Z

    move-result p3

    if-nez p3, :cond_39

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p4

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_46

    :cond_39
    const-string p3, "Skip setting putt task to 1, taskId : "

    invoke-static {p3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v1, "FullscreenTaskListener"

    invoke-static {p3, v0, v1}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_46
    :goto_46
    iget-boolean p3, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz p3, :cond_55

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->isEmebeddedTask(Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_55

    invoke-virtual {p4, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_55
    return-void
.end method

.method private synthetic lambda$onTaskInfoChanged$1(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    iget-object v0, p1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_10

    iget-object p2, p1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p5, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_10
    iget-object p2, p3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {p0, p2}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->getScenario(Landroid/content/res/Configuration;)I

    move-result p0

    if-gtz p0, :cond_23

    iget-object p0, p1, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    iget p1, p4, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    iget p2, p4, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    invoke-virtual {p5, p0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_23
    return-void
.end method

.method private static synthetic lambda$updateRecentsForVisibleFullscreenTask$2(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .registers 3

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_9

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/recents/RecentTasksController;->removeSplitPair(I)V

    :cond_9
    return-void
.end method

.method private onInit()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, -0x2

    aput v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->addListenerForType(Lcom/android/wm/shell/ShellTaskOrganizer$TaskListener;[I)V

    return-void
.end method

.method private updateRecentsForVisibleFullscreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mRecentTasksOptional:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/b;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/wm/shell/b;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public attachChildSurfaceToTask(ILandroid/view/SurfaceControl$Builder;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "  "

    invoke-static {p2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Tasks"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_88

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v3, v0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v5, 0x6a88320

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v0, v5, v6, v2, v7}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    new-instance v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    invoke-direct {v3, v2}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$1;)V

    iput-object p2, v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mLeash:Landroid/view/SurfaceControl;

    iput-object p1, v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v2, :cond_3b

    return-void

    :cond_3b
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v2

    if-eqz v2, :cond_5b

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isMaintainLayerTask(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string p0, "don\'t change layer properties for:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string p2, "FullscreenTaskListener"

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/common/j;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->updateRecentsForVisibleFullscreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_7b

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v2, p1, p2, v1, v1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    move v1, v2

    :cond_7b
    if-nez v1, :cond_87

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v2, Lcom/android/wm/shell/fullscreen/a;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/wm/shell/fullscreen/a;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Landroid/view/SurfaceControl;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_87
    return-void

    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "Task appeared more than once: #"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iget-object v0, v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {v2, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_24
    iput-object p1, v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v2, :cond_2b

    return-void

    :cond_2b
    invoke-direct {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->updateRecentsForVisibleFullscreenTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v2, v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    invoke-virtual {v1, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-nez v0, :cond_42

    iget-object v0, v3, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v0, :cond_42

    move v4, v2

    goto :goto_44

    :cond_42
    const/4 v0, 0x0

    move v4, v0

    :goto_44
    if-nez v4, :cond_48

    if-eqz v1, :cond_55

    :cond_48
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v7, Lcom/android/wm/shell/fullscreen/b;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/fullscreen/b;-><init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    :cond_55
    return-void
.end method

.method public onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 10

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_TASK_ORG_enabled:Z

    if-eqz v0, :cond_1a

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TASK_ORG:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x7e312686

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mTasks:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_26

    return-void

    :cond_26
    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object p0, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->mWindowDecorViewModelOptional:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_39
    return-void
.end method

.method public reparentChildSurfaceToTask(ILandroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->findTaskSurface(I)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string p0, "FullscreenTaskListener:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->taskListenerTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
