.class public Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/quickstep/ITopTaskTrackerExt;
.implements Lcom/oplus/ext/core/IExtCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/TopTaskTrackerExtOplusImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/quickstep/ITopTaskTrackerExt;",
        "Lcom/oplus/ext/core/IExtCreator<",
        "Lcom/android/quickstep/ITopTaskTrackerExt;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTopTaskTrackerExtOplusImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TopTaskTrackerExtOplusImpl.kt\ncom/android/quickstep/TopTaskTrackerExtOplusImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,335:1\n1855#2,2:336\n1855#2,2:338\n1855#2,2:340\n13309#3,2:342\n*S KotlinDebug\n*F\n+ 1 TopTaskTrackerExtOplusImpl.kt\ncom/android/quickstep/TopTaskTrackerExtOplusImpl\n*L\n218#1:336,2\n230#1:338,2\n283#1:340,2\n329#1:342,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/TopTaskTrackerExtOplusImpl$Companion;

.field public static final DISPLAY_ID_LISTEN_EPISODE_MODE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "TopTaskTrackerExtOplusImpl"


# instance fields
.field private forceUpdateOrderedTaskList:Z

.field private final mGetRunningTaskCallback:Ljava/lang/Runnable;

.field private mHost:Lcom/android/quickstep/TopTaskTracker;

.field private mIsDefaultLauncher:Z

.field private volatile mIsGettingTask:Z

.field private final mOnTaskStageChangedListener:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPinnedTaskId:I

.field private final mRunningTaskChangedListener:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateRunningTaskCallback:Ljava/lang/Runnable;

.field private volatile updateOrderedTaskList:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->Companion:Lcom/android/quickstep/TopTaskTrackerExtOplusImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lcom/android/quickstep/p0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/p0;-><init>(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mUpdateRunningTaskCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/quickstep/t;

    invoke-direct {v0, p0}, Lcom/android/quickstep/t;-><init>(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mGetRunningTaskCallback:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mOnTaskStageChangedListener:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mRunningTaskChangedListener:Ljava/util/LinkedList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mPinnedTaskId:I

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mUpdateRunningTaskCallback$lambda$0(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V

    return-void
.end method

.method public static synthetic b()[Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 1

    invoke-static {}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getCachedTopTask$lambda$3()[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mGetRunningTaskCallback$lambda$1(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V

    return-void
.end method

.method private final createCachedTaskInfo(ZZ)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .registers 14

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    const/4 v1, 0x0

    if-eqz v0, :cond_b6

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v0

    if-eqz v0, :cond_b6

    invoke-interface {v0}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getOrderedTaskList()Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_13

    goto/16 :goto_b6

    :cond_13
    new-instance v2, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_9a

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_28

    goto/16 :goto_9a

    :cond_28
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v5

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_51

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_52

    :cond_51
    move-object v7, v1

    :goto_52
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v9, -0x1

    const/16 v10, 0x2710

    if-eq v8, v9, :cond_65

    if-eqz v8, :cond_65

    if-ge v8, v10, :cond_65

    move v9, v7

    goto :goto_66

    :cond_65
    move v9, v3

    :goto_66
    if-lt v8, v10, :cond_6a

    move v8, v7

    goto :goto_6b

    :cond_6a
    move v8, v3

    :goto_6b
    const/4 v10, 0x3

    if-eq v5, v10, :cond_75

    const/4 v10, 0x2

    if-ne v5, v10, :cond_74

    if-nez v6, :cond_74

    goto :goto_75

    :cond_74
    move v7, v3

    :cond_75
    :goto_75
    if-nez v7, :cond_2c

    if-eqz p2, :cond_7b

    if-nez v9, :cond_2c

    :cond_7b
    if-nez v8, :cond_2c

    move-object v1, v4

    :cond_7e
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    if-eqz p0, :cond_b5

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object p0

    if-eqz p0, :cond_b5

    if-nez v1, :cond_96

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "allCachedTasks[0]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_96
    invoke-interface {p0, v2, v1}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->setCachedTaskInfoTopTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_b5

    :cond_9a
    :goto_9a
    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    if-eqz p0, :cond_b5

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object p0

    if-eqz p0, :cond_b5

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ab

    goto :goto_b2

    :cond_ab
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    :goto_b2
    invoke-interface {p0, v2, v1}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->setCachedTaskInfoTopTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_b5
    :goto_b5
    return-object v2

    :cond_b6
    :goto_b6
    return-object v1
.end method

.method private static final getCachedTopTask$lambda$3()[Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTasks(Z)[Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private static final mGetRunningTaskCallback$lambda$1(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsGettingTask:Z

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->needUpdateTaskWhenStackChangedBackground(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "mGetRunningTaskCallback run: update="

    const-string v3, ", "

    invoke-static {v2, v1, v3}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "TopTaskTrackerExtOplusImpl"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mUpdateRunningTaskCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsGettingTask:Z

    return-void
.end method

.method private static final mUpdateRunningTaskCallback$lambda$0(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V
    .registers 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getOrderedTaskList()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    const-string v0, "TopTaskTrackerExtOplusImpl"

    const-string v2, "QuickStep"

    if-eqz v1, :cond_2d

    const-string/jumbo p0, "mOrderedTaskList is empty, so return"

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-interface {v3}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getOrderedTaskList()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    goto :goto_4d

    :cond_4c
    const/4 v3, 0x0

    :goto_4d
    invoke-virtual {p0, v1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->onUpdateRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    if-eqz v1, :cond_c5

    if-eqz v3, :cond_c5

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v4, v5, :cond_c5

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v4, v5, :cond_c5

    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    if-ne v4, v5, :cond_c5

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_c5

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_c5

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c5

    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c5

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8f

    goto :goto_c5

    :cond_8f
    iget-object v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_c1

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_c1

    invoke-direct {p0, v1, v3}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->notifyRunningTaskChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_c1

    const-string/jumbo v4, "update top-activity, current: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", latest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    iget-object p0, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object p0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :cond_c5
    :goto_c5
    return-void
.end method

.method private final notifyRunningTaskChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)V
    .registers 4

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mRunningTaskChangedListener:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;->onRunningTaskChanged(Landroid/app/TaskInfo;Landroid/app/TaskInfo;)V

    goto :goto_6

    :cond_16
    return-void
.end method


# virtual methods
.method public addOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mRunningTaskChangedListener:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public addOnTaskStageChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mOnTaskStageChangedListener:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/ITopTaskTrackerExt;
    .registers 3

    instance-of v0, p1, Lcom/android/quickstep/TopTaskTracker;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/quickstep/TopTaskTracker;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    return-object p0
.end method

.method public bridge synthetic createExtWith(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->createExtWith(Ljava/lang/Object;)Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object p0

    return-object p0
.end method

.method public fillRunningTasksForOrderedTaskList(Ljava/util/LinkedList;[Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;[",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ")V"
        }
    .end annotation

    const-string/jumbo p0, "orderedTaskList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "runningTasks"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p2

    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public getCachedTopTask(Z)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;
    .registers 10

    iget-object p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    const/4 v0, 0x0

    if-eqz p1, :cond_1a3

    invoke-virtual {p1}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object p1

    if-eqz p1, :cond_1a3

    invoke-interface {p1}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getOrderedTaskList()Ljava/util/LinkedList;

    move-result-object p1

    if-nez p1, :cond_13

    goto/16 :goto_1a3

    :cond_13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, -0x1

    if-eqz v1, :cond_31

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_31

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_31

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v1

    goto :goto_32

    :cond_31
    move v1, v2

    :goto_32
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v3

    const-string v4, ", first="

    const-string v5, "TopTaskTrackerExtOplusImpl"

    const-string v6, "QuickStep"

    if-eqz v3, :cond_82

    const-string v3, "getCachedTopTask(), update="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getUpdateOrderedTaskList()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", forceUpdate="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getForceUpdateOrderedTaskList()Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", activityType="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_77

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v7, :cond_77

    invoke-virtual {p0, v7}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v7

    goto :goto_78

    :cond_77
    move-object v7, v0

    :goto_78
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v5, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getUpdateOrderedTaskList()Z

    move-result v3

    const/4 v7, 0x0

    if-nez v3, :cond_10c

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->getForceUpdateOrderedTaskList()Z

    move-result v3

    if-nez v3, :cond_10c

    const/4 v3, 0x2

    if-eq v1, v3, :cond_10c

    const/4 v3, 0x3

    if-ne v1, v3, :cond_97

    goto/16 :goto_10c

    :cond_97
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_115

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_c4

    const-string v1, "getCachedTopTask(), set1, first="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c0

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_c0

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c1

    :cond_c0
    move-object v3, v0

    :goto_c1
    invoke-static {v1, v3, v6, v5}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c4
    iget v1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mPinnedTaskId:I

    if-eq v1, v2, :cond_102

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v2, :cond_102

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v3, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mPinnedTaskId:I

    if-eq v2, v3, :cond_102

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v2}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    const-string p1, "getCachedTopTask() in pip mode"

    invoke-static {v6, v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    if-eqz p0, :cond_101

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object p0

    if-eqz p0, :cond_101

    invoke-interface {p0, v0, v1}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->setCachedTaskInfoTopTask(Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_101
    return-object v0

    :cond_102
    iget-object v1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_115

    :cond_10c
    :goto_10c
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->setUpdateOrderedTaskList(Z)V

    invoke-virtual {p0, v7}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->setForceUpdateOrderedTaskList(Z)V

    :cond_115
    :goto_115
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_198

    sget-object v1, Lcom/android/quickstep/m2;->a:Lcom/android/quickstep/m2;

    const-string v2, "getCachedTopTask.false"

    invoke-static {v2, v1}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "allowIpcs(\"getCachedTopT…(false)\n                }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v2

    if-eqz v2, :cond_144

    const-string v2, "getCachedTopTask(), getRunningTasks: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print([Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v5, v2}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_144
    invoke-virtual {p0, p1, v1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->fillRunningTasksForOrderedTaskList(Ljava/util/LinkedList;[Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_158

    iget-object v1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_158
    const-string v1, "getCachedTopTask(), empty, isDefault="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsDefaultLauncher:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_188

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_188

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_188
    invoke-static {v1, v0, v6, v5}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsDefaultLauncher:Z

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->createCachedTaskInfo(ZZ)Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    move-result-object p0

    return-object p0

    :cond_198
    new-instance p0, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/quickstep/TopTaskTracker$CachedTaskInfo;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_1a3
    :goto_1a3
    return-object v0
.end method

.method public getForceUpdateOrderedTaskList()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->forceUpdateOrderedTaskList:Z

    return p0
.end method

.method public final getMGetRunningTaskCallback()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mGetRunningTaskCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getMHost()Lcom/android/quickstep/TopTaskTracker;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    return-object p0
.end method

.method public final getMIsGettingTask()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsGettingTask:Z

    return p0
.end method

.method public final getMTopRunningTaskInfo()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public final getMUpdateRunningTaskCallback()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mUpdateRunningTaskCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public getUpdateOrderedTaskList()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->updateOrderedTaskList:Z

    return p0
.end method

.method public isStagedSplitInTop()Z
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getStagePosition(Z)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    move-result-object v0

    iget-object v3, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getStagePosition(Z)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getOrderedTaskList()Ljava/util/LinkedList;

    move-result-object v4

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_53

    iget v0, v3, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-eq v0, v5, :cond_53

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_3d

    goto :goto_53

    :cond_3d
    move v0, v1

    :goto_3e
    if-ge v0, v3, :cond_52

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v5}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->isTaskInStagedSplit(I)Z

    move-result v5

    if-nez v5, :cond_4f

    return v1

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_52
    return v2

    :cond_53
    :goto_53
    return v1
.end method

.method public isTaskInAnyStagePosition(III)Z
    .registers 4

    if-eq p1, p2, :cond_7

    if-ne p1, p3, :cond_5

    goto :goto_7

    :cond_5
    const/4 p0, 0x0

    goto :goto_8

    :cond_7
    :goto_7
    const/4 p0, 0x1

    :goto_8
    return p0
.end method

.method public isTaskInStagedSplit(I)Z
    .registers 5

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    const/4 v0, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getStagePosition(Z)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-eq v1, p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/quickstep/TopTaskTracker;->getWrapper()Lcom/android/quickstep/ITopTaskTrackerWrapper;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/quickstep/ITopTaskTrackerWrapper;->getStagePosition(Z)Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitTaskPosition;->taskId:I

    if-ne p0, p1, :cond_1f

    :cond_1e
    move v0, v2

    :cond_1f
    return v0
.end method

.method public needUpdateTaskWhenStackChangedBackground(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public notifyTaskStageChanged(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mOnTaskStageChangedListener:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;

    invoke-interface {v0, p1}, Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;->onTaskStageChanged(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public onPinnedTaskChanged(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mPinnedTaskId:I

    return-void
.end method

.method public onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 7

    const-string/jumbo v0, "taskInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->setForceUpdateOrderedTaskList(Z)V

    invoke-static {p1}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->isNormalEmbeddedTaskInfo(Landroid/app/TaskInfo;)Z

    move-result v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_35

    const-string/jumbo v2, "onTaskMovedToFront(), taskInfo="

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isEmbeddedTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QuickStep"

    const-string v4, "TopTaskTrackerExtOplusImpl"

    invoke-static {v3, v4, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    const/4 v2, 0x1

    if-eqz v1, :cond_39

    return v2

    :cond_39
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_41

    goto :goto_42

    :cond_41
    move v2, v0

    :goto_42
    invoke-virtual {p0, v2}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->setForceUpdateOrderedTaskList(Z)V

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mTopRunningTaskInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v0
.end method

.method public onTaskStackChangedBackground()V
    .registers 2

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsGettingTask:Z

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mGetRunningTaskCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public onUpdateRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 2

    return-void
.end method

.method public final print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p0, ""

    goto :goto_3d

    :cond_5
    const-string p0, "RunningTaskInfo["

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3d
    return-object p0
.end method

.method public final print([Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .registers 6

    if-nez p1, :cond_6

    const-string/jumbo p0, "null"

    return-object p0

    :cond_6
    const-string v0, "Array[ "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    :goto_e
    if-ge v1, v2, :cond_1c

    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->print(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    const-string p0, " ]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public removeOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mRunningTaskChangedListener:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public removeOnTaskStageChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnTaskStageChangedListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mOnTaskStageChangedListener:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setForceUpdateOrderedTaskList(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->forceUpdateOrderedTaskList:Z

    return-void
.end method

.method public final setMHost(Lcom/android/quickstep/TopTaskTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mHost:Lcom/android/quickstep/TopTaskTracker;

    return-void
.end method

.method public final setMIsGettingTask(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsGettingTask:Z

    return-void
.end method

.method public setUpdateOrderedTaskList(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->updateOrderedTaskList:Z

    return-void
.end method

.method public updateOverviewTargets(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->mIsDefaultLauncher:Z

    return-void
.end method
