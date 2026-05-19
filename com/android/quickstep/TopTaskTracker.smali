.class public Lcom/android/quickstep/TopTaskTracker;
.super Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;,
        Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/quickstep/TopTaskTracker;",
            ">;"
        }
    .end annotation
.end field

.field public static final WINDOWING_MODE_ZOOM:I = 0x64


# instance fields
.field private final mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

.field private final mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

.field private final mOrderedTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

.field private mWrapper:Lcom/android/quickstep/ITopTaskTrackerWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/model/f0;->c:Lcom/android/launcher3/model/f0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/wm/shell/splitscreen/ISplitScreenListener$Stub;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {v0}, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    new-instance v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    invoke-direct {v1}, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    const-class v2, Lcom/android/quickstep/ITopTaskTrackerExt;

    invoke-static {v2}, Lcom/oplus/ext/core/ExtLoader;->type(Ljava/lang/Class;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lcom/oplus/ext/core/ExtLoader$ExtBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/ext/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/ITopTaskTrackerExt;

    iput-object v2, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    const/4 v0, 0x1

    iput v0, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stageType:I

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, p0}, Lcom/android/quickstep/SystemUiProxy;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/ISplitScreenListener;)V

    if-eqz v2, :cond_5a

    instance-of p0, p1, Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_56

    instance-of p0, p1, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_57

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/Launcher;

    if-eqz p0, :cond_57

    :cond_56
    move v3, v0

    :cond_57
    invoke-interface {v2, v3}, Lcom/android/quickstep/ITopTaskTrackerExt;->updateOverviewTargets(Z)V

    :cond_5a
    return-void
.end method

.method public static synthetic a(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskRemoved$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/quickstep/TopTaskTracker;)Ljava/util/LinkedList;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/quickstep/TopTaskTracker;)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/quickstep/TopTaskTracker;)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    return-object p0
.end method

.method public static synthetic b(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/TopTaskTracker;->lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c()[Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    invoke-static {}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$2()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/android/quickstep/TopTaskTracker;
    .registers 2

    new-instance v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-direct {v0, p0}, Lcom/android/quickstep/TopTaskTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic e()[Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    invoke-static {}, Lcom/android/quickstep/TopTaskTracker;->lambda$getCachedTopTask$3()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getCachedTopTask$2()[Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getCachedTopTask$3()[Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$onTaskMovedToFront$1(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$onTaskRemoved$0(ILandroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V
    .registers 2

    const/4 p0, -0x1

    iput p0, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    return-void
.end method


# virtual methods
.method public getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .registers 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-eqz p1, :cond_16

    sget-object p0, Lcom/android/quickstep/l2;->b:Lcom/android/quickstep/l2;

    const-string p1, "getCachedTopTask.true"

    invoke-static {p1, p0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance p1, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_16
    iget-object p1, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    if-eqz p1, :cond_22

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/quickstep/ITopTaskTrackerExt;->getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_22

    return-object p1

    :cond_22
    iget-object p1, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_39

    sget-object p1, Lcom/android/quickstep/k2;->a:Lcom/android/quickstep/k2;

    const-string v0, "getCachedTopTask.false"

    invoke-static {v0, p1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_39
    new-instance p1, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p1, v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public getExt()Lcom/android/quickstep/ITopTaskTrackerExt;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    return-object p0
.end method

.method public getRunningSplitTaskIds()[I
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_21

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p0, v2, :cond_f

    goto :goto_21

    :cond_f
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    const/4 v4, 0x1

    if-nez v0, :cond_1c

    aput v1, v2, v3

    aput p0, v2, v4

    goto :goto_20

    :cond_1c
    aput v1, v2, v4

    aput p0, v2, v3

    :goto_20
    return-object v2

    :cond_21
    :goto_21
    new-array p0, v3, [I

    return-object p0
.end method

.method public getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mWrapper:Lcom/android/quickstep/ITopTaskTrackerWrapper;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quickstep/TopTaskTracker$TopTaskTrackerWrapper;-><init>(Lcom/android/quickstep/TopTaskTracker;Lcom/android/quickstep/TopTaskTracker$1;)V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mWrapper:Lcom/android/quickstep/ITopTaskTrackerWrapper;

    :cond_c
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mWrapper:Lcom/android/quickstep/ITopTaskTrackerWrapper;

    return-object p0
.end method

.method public onActivityPinned(Ljava/lang/String;III)V
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    if-eqz p0, :cond_7

    invoke-interface {p0, p3}, Lcom/android/quickstep/ITopTaskTrackerExt;->onPinnedTaskChanged(I)V

    :cond_7
    return-void
.end method

.method public onActivityUnpinned()V
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    if-eqz p0, :cond_8

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lcom/android/quickstep/ITopTaskTrackerExt;->onPinnedTaskChanged(I)V

    :cond_8
    return-void
.end method

.method public onStagePositionChanged(II)V
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/launcher3/util/SplitConfigurationOptions$StageType;
        .end annotation
    .end param

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    goto :goto_b

    :cond_7
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p2, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->stagePosition:I

    :goto_b
    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    invoke-interface {v0, p1}, Lcom/android/quickstep/ITopTaskTrackerExt;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/launcher/badge/m;

    invoke-direct {v1, p1}, Lcom/android/launcher/badge/m;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_4c

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v2, :cond_2b

    iget-object v2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-eq v1, v2, :cond_2b

    iget-object v2, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-eq v1, v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_4c
    return-void
.end method

.method public onTaskRemoved(I)V
    .registers 4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "onTaskRemoved(), taskId="

    const-string v1, "TopTaskTracker"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_e
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mOrderedTaskList:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/launcher/m;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/m;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/quickstep/ITopTaskTrackerExt;->onTaskStackChangedBackground()V

    :cond_7
    return-void
.end method

.method public onTaskStageChanged(IIZ)V
    .registers 7
    .param p2  # I
        .annotation build Lcom/android/launcher3/util/SplitConfigurationOptions$StageType;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "onTaskStageChanged(), taskId="

    const-string v1, ", stage="

    const-string v2, ", visible="

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", main: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", side: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    const-string v2, "TopTaskTracker"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_2e
    if-nez p3, :cond_44

    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p3, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p3, p1, :cond_3a

    invoke-direct {p0, p2}, Lcom/android/quickstep/TopTaskTracker;->resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    goto :goto_43

    :cond_3a
    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p3, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p3, p1, :cond_43

    invoke-direct {p0, p2}, Lcom/android/quickstep/TopTaskTracker;->resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    const/4 p3, -0x1

    if-ne p2, p3, :cond_67

    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    if-eqz p2, :cond_5a

    iget-object p3, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p3, p3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    invoke-interface {p2, p1, p3, v0}, Lcom/android/quickstep/ITopTaskTrackerExt;->isTaskInAnyStagePosition(III)Z

    move-result p2

    if-nez p2, :cond_5a

    return-void

    :cond_5a
    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iget p3, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p1, p3, :cond_61

    goto :goto_63

    :cond_61
    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    :goto_63
    invoke-direct {p0, p2}, Lcom/android/quickstep/TopTaskTracker;->resetTaskId(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;)V

    return-void

    :cond_67
    if-nez p2, :cond_6e

    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mMainStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p1, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    goto :goto_72

    :cond_6e
    iget-object p2, p0, Lcom/android/quickstep/TopTaskTracker;->mSideStagePosition:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    iput p1, p2, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    :goto_72
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTracker;->mExt:Lcom/android/quickstep/ITopTaskTrackerExt;

    if-eqz p0, :cond_79

    invoke-interface {p0, p1}, Lcom/android/quickstep/ITopTaskTrackerExt;->notifyTaskStageChanged(I)V

    :cond_79
    return-void
.end method
