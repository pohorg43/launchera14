.class public final Lcom/oplus/quickstep/data/OplusRecentTasksFilter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/data/OplusRecentTasksFilter$Companion;
    }
.end annotation


# static fields
.field private static final ACTIONS_ACTIVITY:Ljava/lang/String; = "com.oplus.quickstep.locksetting.ui.GoogleActionsActivity"

.field public static final Companion:Lcom/oplus/quickstep/data/OplusRecentTasksFilter$Companion;

.field private static final METHOD_GET_SCENARIO:Ljava/lang/String; = "getScenario"

.field private static final SECONDARY_DISPLAY:I = 0x1

.field private static final SECONDARY_HOME_PKG:Ljava/lang/String; = "com.oplus.secondaryhome"

.field private static final TAG:Ljava/lang/String; = "OplusRecentTasksFilter"

.field private static taskListWithOutFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final embeddedCacheTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->Companion:Lcom/oplus/quickstep/data/OplusRecentTasksFilter$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->taskListWithOutFilter:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->embeddedCacheTaskList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getTaskListWithOutFilter$cp()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->taskListWithOutFilter:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$setTaskListWithOutFilter$cp(Ljava/util/ArrayList;)V
    .registers 1

    sput-object p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->taskListWithOutFilter:Ljava/util/ArrayList;

    return-void
.end method

.method private final filterSplitTaskInfo(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;)Z
    .registers 10

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    invoke-virtual {p1}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_19

    new-instance v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-direct {v1, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    iget p1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isCleanedTask(I)Z

    move-result p1

    const/4 v2, 0x1

    const-string v3, "OplusRecentTasksFilter"

    const-string v4, "QuickStep"

    const/4 v5, 0x0

    const/16 v6, 0x20

    if-eqz p1, :cond_4b

    const-string p1, "split filter(), cleaned: taskKey1 = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v7, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    goto :goto_4c

    :cond_4b
    move p1, v5

    :goto_4c
    if-eqz v1, :cond_76

    iget v0, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isCleanedTask(I)Z

    move-result p0

    if-eqz p0, :cond_76

    const-string p0, "split filter(), cleaned: taskKey2 = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v0, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " taskKey1IsCleanedTask = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v4, v3}, Lu/b;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_76

    return v2

    :cond_76
    return v5
.end method

.method private final getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_1
    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, p0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_11
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_18

    goto :goto_24

    :cond_18
    const-string p0, "getMethod exception: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "OplusRecentTasksFilter"

    invoke-static {p1, p0, p2}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_24
    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method

.method private final isForceFilterTask(IZLandroid/content/ComponentName;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p3, :cond_4

    return p0

    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_14

    if-nez p2, :cond_14

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isForceExcludedSecondaryTaskByComponent(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    :cond_14
    return p0
.end method

.method private final isSecondaryDisplayTask(Ljava/lang/String;IZ)Z
    .registers 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_8

    const/4 v1, -0x1

    if-eq p2, v1, :cond_8

    return p0

    :cond_8
    if-eq p2, v0, :cond_12

    const-string p2, "com.oplus.secondaryhome"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_12
    if-nez p3, :cond_15

    return v0

    :cond_15
    return p0
.end method


# virtual methods
.method public final clear()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->embeddedCacheTaskList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->taskListWithOutFilter:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final declared-synchronized filterTask(Lcom/android/quickstep/util/GroupTask;)Z
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "groupTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->taskListWithOutFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v0

    if-nez v0, :cond_8f

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->hasEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3a

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_34

    :cond_33
    move-object v0, v1

    :goto_34
    invoke-static {v0}, Lcom/oplus/quickstep/multiwindow/pocketstudio/PocketStudioLocal;->sameComponent(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_8f

    :cond_3a
    iget-object v0, p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->embeddedCacheTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    const-string v0, "groupTask.task1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "QuickStep"

    const-string v2, "OplusRecentTasksFilter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterTask(), embedded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v4, :cond_5d

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_5e

    :cond_5d
    move-object v4, v1

    :goto_5e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v5, :cond_71

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_72

    :cond_71
    move-object v5, v1

    :goto_72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_82

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_82
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_1 .. :try_end_8c} :catchall_92

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_8f
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized filterTaskInfo(IILcom/android/wm/shell/util/GroupedRecentTaskInfo;Ljava/util/ArrayList;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/wm/shell/util/GroupedRecentTaskInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "groupTaskInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo2()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p3}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->filterSplitTaskInfo(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;)Z

    move-result p1
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_24b

    monitor-exit p0

    return p1

    :cond_12
    :try_start_12
    new-instance v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;-><init>(Landroid/app/TaskInfo;)V

    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->realActivity:Landroid/content/ComponentName;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35

    const-string v4, "com.oplus.quickstep.locksetting.ui.GoogleActionsActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_35

    move v1, v3

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    if-eqz v1, :cond_54

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksFilter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter(), actions: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_12 .. :try_end_52} :catchall_24b

    monitor-exit p0

    return v3

    :cond_54
    :try_start_54
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    const/4 v6, 0x0

    if-nez v5, :cond_73

    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_72

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    goto :goto_73

    :cond_72
    move-object v5, v6

    :cond_73
    :goto_73
    invoke-virtual {v4, v5}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isForceExcludedTaskByBaseComponent(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_98

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksFilter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter(), force exclude "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", because the task should not show"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_54 .. :try_end_96} :catchall_24b

    monitor-exit p0

    return v3

    :cond_98
    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_cb

    :try_start_9b
    iget-object p1, v0, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->topComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_a4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_a5

    :cond_a4
    move-object p1, v6

    :goto_a5
    if-nez p1, :cond_a9

    const-string p1, ""

    :cond_a9
    invoke-virtual {v4, v1, p1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isForceExludedTask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cb

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksFilter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter(), force exclude: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_9b .. :try_end_c9} :catchall_24b

    monitor-exit p0

    return v3

    :cond_cb
    :try_start_cb
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object p1

    iget p2, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p1, v1, p2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_f3

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksFilter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter(), hidden: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_cb .. :try_end_f1} :catchall_24b

    monitor-exit p0

    return v3

    :cond_f3
    if-eqz p4, :cond_fe

    :try_start_f5
    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_ff

    :cond_fe
    move p1, v2

    :goto_ff
    iget p2, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v4, p2}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isCleanedTask(I)Z

    move-result p2

    if-eqz p2, :cond_12b

    if-nez p1, :cond_12b

    iget p1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    const/16 p2, 0x64

    if-eq p1, p2, :cond_12b

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksFilter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter(), cleaned: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_129
    .catchall {:try_start_f5 .. :try_end_129} :catchall_24b

    monitor-exit p0

    return v3

    :cond_12b
    :try_start_12b
    invoke-static {v1}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeIconBannedInRecentTask(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14d

    const-string p1, "QuickStep"

    const-string p2, "OplusRecentTasksFilter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filter(), company customize: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14b
    .catchall {:try_start_12b .. :try_end_14b} :catchall_24b

    monitor-exit p0

    return v3

    :cond_14d
    :try_start_14d
    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result p1

    if-eqz p1, :cond_249

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p2

    iget p2, p2, Landroid/app/ActivityManager$RecentTaskInfo;->displayId:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p4

    if-eqz p4, :cond_187

    if-eqz p2, :cond_187

    const-string p4, "QuickStep"

    const-string v0, "OplusRecentTasksFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterTaskInfo: pkg="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", display="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_187
    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p4

    invoke-virtual {p4}, Landroid/app/ActivityManager$RecentTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    const-string v0, "groupTaskInfo.taskInfo1.getConfiguration()"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p4}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p4, :cond_1b7

    invoke-virtual {p4}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p4

    if-eqz p4, :cond_1b7

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getScenario"

    invoke-direct {p0, v0, v1}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1b7

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    goto :goto_1b8

    :cond_1b7
    move-object p4, v6

    :goto_1b8
    const-string v0, "QuickStep"

    const-string v1, "OplusRecentTasksFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filter(), scenario: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->isSecondaryDisplayTask(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_1fe

    const-string p2, "QuickStep"

    const-string p3, "OplusRecentTasksFilter"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filter(), the task "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in secondary display"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fc
    .catchall {:try_start_14d .. :try_end_1fc} :catchall_24b

    monitor-exit p0

    return v3

    :cond_1fe
    :try_start_1fe
    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez p1, :cond_214

    invoke-virtual {p3}, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;->getTaskInfo1()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz p1, :cond_213

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_214

    :cond_213
    move-object p1, v6

    :cond_214
    :goto_214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    invoke-direct {p0, p2, p3, p1}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->isForceFilterTask(IZLandroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_247

    const-string p2, "QuickStep"

    const-string p3, "OplusRecentTasksFilter"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filter(), the task "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_236

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    :cond_236
    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is in secondary display"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_245
    .catchall {:try_start_1fe .. :try_end_245} :catchall_24b

    monitor-exit p0

    return v3

    :cond_247
    monitor-exit p0

    return v2

    :cond_249
    monitor-exit p0

    return v2

    :catchall_24b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getEmbeddedCacheTaskList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->embeddedCacheTaskList:Ljava/util/List;

    return-object p0
.end method
