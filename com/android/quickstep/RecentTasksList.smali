.class public Lcom/android/quickstep/RecentTasksList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    }
.end annotation


# static fields
.field private static final INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;


# instance fields
.field public mChangeId:I

.field public final mKeyguardManager:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

.field private mLoadingTasksInBackground:Z

.field public final mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field private mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

.field private mRunningTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    sput-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    iput-object p2, p0, Lcom/android/quickstep/RecentTasksList;->mKeyguardManager:Lcom/android/systemui/shared/system/KeyguardManagerCompat;

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    iput-object p3, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const p1, 0x7fffffff

    invoke-virtual {p3, p1}, Lcom/android/quickstep/SystemUiProxy;->getRunningTasks(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentTasksList;->initRunningTasks(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic a(ILcom/android/quickstep/util/GroupTask;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$1(ILcom/android/quickstep/util/GroupTask;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/ArrayList;ILjava/util/function/Consumer;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$2(Ljava/util/ArrayList;ILjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic c()V
    .registers 0

    invoke-static {}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$3()V

    return-void
.end method

.method public static synthetic d(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$5(Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quickstep/RecentTasksList;ZIZLjava/util/function/Consumer;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$6(ZIZLjava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentTasksList;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/quickstep/RecentTasksList;->lambda$invalidateLoadedTasks$7()V

    return-void
.end method

.method public static synthetic g(ILcom/android/quickstep/util/GroupTask;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentTasksList;->lambda$getTasks$4(ILcom/android/quickstep/util/GroupTask;)V

    return-void
.end method

.method public static synthetic h(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/RecentTasksList;->lambda$getTaskKeys$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V

    return-void
.end method

.method private initRunningTasks(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$getTaskKeys$0(ILjava/util/function/Consumer;Ljava/util/ArrayList;)V
    .registers 6

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p0, :cond_9

    goto :goto_1e

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, p0, :cond_1d

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    move-object p2, v0

    :cond_1e
    :goto_1e
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getTasks$1(ILcom/android/quickstep/util/GroupTask;)V
    .registers 2

    iput p0, p1, Lcom/android/quickstep/util/GroupTask;->requestLoadId:I

    return-void
.end method

.method private static synthetic lambda$getTasks$2(Ljava/util/ArrayList;ILjava/util/function/Consumer;)V
    .registers 5

    new-instance v0, Lcom/android/launcher3/iconrender/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/iconrender/a;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$getTasks$3()V
    .registers 3

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/Executors;->RECENT_TASKS_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object v2

    check-cast v2, Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUxThreadValue(I)V

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v0

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    return-void
.end method

.method private static synthetic lambda$getTasks$4(ILcom/android/quickstep/util/GroupTask;)V
    .registers 2

    iput p0, p1, Lcom/android/quickstep/util/GroupTask;->requestLoadId:I

    return-void
.end method

.method private synthetic lambda$getTasks$5(Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;I)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    if-eqz p2, :cond_17

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/iconrender/a;

    const/4 v0, 0x1

    invoke-direct {p1, p3, v0}, Lcom/android/launcher3/iconrender/a;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$getTasks$6(ZIZLjava/util/function/Consumer;)V
    .registers 11

    const/16 v0, 0x7e4

    if-nez p1, :cond_19

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    :cond_19
    const-wide/16 v1, 0x8

    const-string p1, "RecentTasksList#getRecentTasks"

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-lez p2, :cond_27

    iget p1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    if-ge p2, p1, :cond_27

    goto :goto_28

    :cond_27
    move p1, p2

    :goto_28
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_86

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTasks(), requestLoadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", loadKeysOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mChangeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mResultsBg: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget v4, v4, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", keyOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget-boolean v4, v4, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mKeysOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newRequestLoadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "RecentTasksList"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    iget-object v3, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v3, p1, p3}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->isValidForRequest(IZ)Z

    move-result v3

    if-nez v3, :cond_9a

    const v3, 0x7fffffff

    invoke-virtual {p0, v3, p1, p3}, Lcom/android/quickstep/RecentTasksList;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->onloadTasksInBackgroundFinish(Ljava/util/ArrayList;)V

    :cond_9a
    iget-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget-object p3, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Ld0/b;

    invoke-direct {v3, p0, p1, p4, p2}, Ld0/b;-><init>(Lcom/android/quickstep/RecentTasksList;Lcom/android/quickstep/RecentTasksList$TaskLoadResult;Ljava/util/function/Consumer;I)V

    invoke-virtual {p3, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/common/util/LauncherBooster$CpuBoost;->setUx(ZI)V

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->releaseCpuResources(I)V

    return-void
.end method

.method private synthetic lambda$invalidateLoadedTasks$7()V
    .registers 2

    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsBg:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    return-void
.end method


# virtual methods
.method public convertSplitBounds(Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_11

    :cond_4
    new-instance p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    iget-object v0, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    :goto_11
    return-object p0
.end method

.method public copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    invoke-virtual {v1}, Lcom/android/quickstep/util/GroupTask;->copy()Lcom/android/quickstep/util/GroupTask;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "RecentTasksList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mChangeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    const-string v2, "  mResultsUi=[id="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget v1, v1, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "-1"

    const-string v3, " t2="

    const-string v4, "    t1="

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    invoke-static {p1, v4}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v3

    if-eqz v3, :cond_74

    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_74
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    const v5, 0x7fffffff

    invoke-virtual {p0, v5, v0}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  rawTasks=["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_bc
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-static {p1, v4}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_e9

    invoke-virtual {v0}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_ea

    :cond_e9
    move-object v0, v2

    :goto_ea
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_bc

    :cond_f5
    invoke-static {p1, v1, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getRunningTasks()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getTaskKeys(ILjava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/quickstep/e1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/quickstep/e1;-><init>(ILjava/util/function/Consumer;I)V

    invoke-virtual {p0, v1, v0}, Lcom/android/quickstep/RecentTasksList;->getTasks(ZLjava/util/function/Consumer;)I

    return-void
.end method

.method public declared-synchronized getTasks(ZLjava/util/function/Consumer;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v6, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "QuickStep"

    const-string v1, "RecentTasksList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTasks(), loadKeysOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", requestLoadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mResultsUi=[id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget v3, v3, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", keyOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget-boolean v3, v3, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->mKeysOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {v0, v6, p1}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;->isValidForRequest(IZ)Z

    move-result v0

    if-eqz v0, :cond_70

    if-eqz p2, :cond_6e

    iget-object p1, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/RecentTasksList;->copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mMainThreadExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/badge/c;

    invoke-direct {v1, p1, v6, p2}, Lcom/android/launcher/badge/c;-><init>(Ljava/util/ArrayList;ILjava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_9d

    :cond_6e
    monitor-exit p0

    return v6

    :cond_70
    const/4 v0, 0x1

    :try_start_71
    iput-boolean v0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    sget-object v7, Lcom/android/launcher3/util/Executors;->RECENT_TASKS_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v7}, Lcom/android/launcher3/util/LooperExecutor;->getThread()Ljava/lang/Thread;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_83

    goto :goto_84

    :cond_83
    const/4 v0, 0x0

    :goto_84
    move v2, v0

    if-eqz v2, :cond_8e

    sget-object v0, Lcom/oplus/util/OplusExecutors;->UX_TASK_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v1, Lcom/android/common/util/g;->c:Lcom/android/common/util/g;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_8e
    new-instance v8, Lcom/android/quickstep/d1;

    move-object v0, v8

    move-object v1, p0

    move v3, v6

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quickstep/d1;-><init>(Lcom/android/quickstep/RecentTasksList;ZIZLjava/util/function/Consumer;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_9b
    .catchall {:try_start_71 .. :try_end_9b} :catchall_9d

    monitor-exit p0

    return v6

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized invalidateLoadedTasks()V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/launcher3/util/Executors;->RECENT_TASKS_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/c1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/quickstep/RecentTasksList;->INVALID_RESULT:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iput-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mResultsUi:Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    iget v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "QuickStep"

    const-string v1, "RecentTasksList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalidateLoadedTasks, mChangeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLoadingTasksInBackground()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean p0, p0, Lcom/android/quickstep/RecentTasksList;->mLoadingTasksInBackground:Z

    return p0
.end method

.method public declared-synchronized isTaskListValid(I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "QuickStep"

    const-string v1, "RecentTasksList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTaskListValid, mChangeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", changeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    iget v0, p0, Lcom/android/quickstep/RecentTasksList;->mChangeId:I
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_32

    if-ne v0, p1, :cond_2f

    const/4 p1, 0x1

    goto :goto_30

    :cond_2f
    const/4 p1, 0x0

    :goto_30
    monitor-exit p0

    return p1

    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, p1, v0}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v0, Lcom/android/quickstep/RecentTasksList$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/RecentTasksList$1;-><init>(Lcom/android/quickstep/RecentTasksList;)V

    new-instance v1, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, p2, p3, v2}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-virtual {p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v4, v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz p3, :cond_44

    new-instance v5, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v5, v4}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    goto :goto_4e

    :cond_44
    iget v5, v4, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v5}, Lcom/android/quickstep/RecentTasksList$1;->get(I)Z

    move-result v5

    invoke-static {v4, v2, v5}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    :goto_4e
    invoke-virtual {v5, v2}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    const/4 v2, 0x0

    if-eqz v3, :cond_6f

    new-instance v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v2, v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    if-eqz p3, :cond_62

    new-instance v4, Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {v4, v2}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    move-object v2, v4

    goto :goto_6c

    :cond_62
    iget v4, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v4}, Lcom/android/quickstep/RecentTasksList$1;->get(I)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/shared/recents/model/Task;->from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    :goto_6c
    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/model/Task;->setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V

    :cond_6f
    invoke-virtual {p2}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getSplitBounds()Lcom/android/wm/shell/util/SplitBounds;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/quickstep/RecentTasksList;->convertSplitBounds(Lcom/android/wm/shell/util/SplitBounds;)Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    move-result-object p2

    new-instance v3, Lcom/android/quickstep/util/GroupTask;

    invoke-direct {v3, v5, v2, p2}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_80
    return-object v1
.end method

.method public onRecentTasksChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/RecentTasksList;->invalidateLoadedTasks()V

    return-void
.end method

.method public onRunningTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, v1, :cond_6

    return-void

    :cond_19
    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRunningTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v2, v3, :cond_19

    goto :goto_6

    :cond_19
    iget-object p0, p0, Lcom/android/quickstep/RecentTasksList;->mRunningTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method public onloadTasksInBackgroundFinish(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
