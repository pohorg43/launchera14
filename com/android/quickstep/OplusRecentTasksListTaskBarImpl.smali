.class public final Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;
.super Lcom/android/quickstep/RecentTasksList;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRecentTasksListTaskBarImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRecentTasksListTaskBarImpl.kt\ncom/android/quickstep/OplusRecentTasksListTaskBarImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1855#2,2:130\n777#2:132\n788#2:133\n1864#2,2:134\n789#2,2:136\n1866#2:138\n791#2:139\n1611#2:140\n1855#2:141\n1856#2:143\n1612#2:144\n1855#2,2:145\n1#3:142\n*S KotlinDebug\n*F\n+ 1 OplusRecentTasksListTaskBarImpl.kt\ncom/android/quickstep/OplusRecentTasksListTaskBarImpl\n*L\n70#1:130,2\n84#1:132\n84#1:133\n84#1:134,2\n84#1:136,2\n84#1:138\n84#1:139\n86#1:140\n86#1:141\n86#1:143\n86#1:144\n121#1:145,2\n86#1:142\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$Companion;

.field private static final KEY_QUICK_STARTUP_LIST:Ljava/lang/String; = "HeatGameConfig"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REQUEST_ID:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusRecentTasksListTaskBarImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final filter$delegate:Lh4/f;

.field private final mMapper$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->Companion:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V
    .registers 5

    const-string/jumbo v0, "mainThreadExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sysUiProxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/RecentTasksList;-><init>(Lcom/android/launcher3/util/LooperExecutor;Lcom/android/systemui/shared/system/KeyguardManagerCompat;Lcom/android/quickstep/SystemUiProxy;)V

    sget-object p1, Lkotlin/a;->c:Lkotlin/a;

    sget-object p2, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$filter$2;->INSTANCE:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$filter$2;

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->filter$delegate:Lh4/f;

    sget-object p2, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$mMapper$2;->INSTANCE:Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$mMapper$2;

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->mMapper$delegate:Lh4/f;

    return-void
.end method

.method private final getMMapper()Lcom/oplus/quickstep/data/OplusRecentTasksMapper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->mMapper$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;

    return-object p0
.end method


# virtual methods
.method public copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
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

    if-eqz p1, :cond_33

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    sget-object v1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    iget-object v2, v0, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->deepCopyFrom(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v3}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->deepCopyFrom(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    new-instance v3, Lcom/android/quickstep/util/GroupTask;

    iget-object v0, v0, Lcom/android/quickstep/util/GroupTask;->mSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    invoke-direct {v3, v2, v1, v0}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_33
    return-object p0
.end method

.method public final getFilter()Lcom/oplus/quickstep/data/OplusRecentTasksFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->filter$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;

    return-object p0
.end method

.method public final declared-synchronized getTasksForTaskbar(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;>;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "QuickStep"

    const-string/jumbo v1, "updateTasksForDockerAndTaskbar"

    const-string v2, "begin"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const v0, 0x7fffffff

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    move-result-object v0

    if-eqz p1, :cond_1f

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public loadTasksInBackground(IIZ)Lcom/android/quickstep/RecentTasksList$TaskLoadResult;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/quickstep/RecentTasksList;->mSysUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move/from16 v5, p1

    invoke-virtual {v3, v5, v4}, Lcom/android/quickstep/SystemUiProxy;->getRecentTasks(II)Ljava/util/ArrayList;

    move-result-object v3

    const-string/jumbo v4, "rawTasks"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Li4/u;->w(Ljava/util/List;)V

    new-instance v4, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$loadTasksInBackground$tmpLockedUsers$1;

    invoke-direct {v4, v0}, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl$loadTasksInBackground$tmpLockedUsers$1;-><init>(Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;)V

    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object v5

    const-string v6, "HeatGameConfig"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/oplus/util/OplusCommonConfig;->getConfigInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadTasksInBackgroundForDockerAndTaskbar(), QuickStartup, bundle="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "QuickStep"

    const-string v10, "OplusRecentTasksListTaskBarImpl"

    invoke-static {v9, v10, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "it"

    const/4 v11, 0x0

    if-eqz v5, :cond_9d

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_9d

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5b
    :goto_5b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "|"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    invoke-static {v12, v13, v11, v11, v14}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v7

    if-eqz v14, :cond_5b

    const-string v14, "loadTasksInBackgroundForDockerAndTaskbar(), QuickStartup, it = "

    const-string v15, " app="

    invoke-static {v14, v12, v15}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v12}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_9d
    const/4 v6, 0x0

    :cond_9e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_ab
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_dd

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v11, 0x1

    if-ltz v11, :cond_d8

    move-object v15, v13

    check-cast v15, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->getFilter()Lcom/oplus/quickstep/data/OplusRecentTasksFilter;

    move-result-object v0

    move-object/from16 p1, v12

    const-string v12, "groupedRecentTaskInfo"

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v5, v15, v6}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->filterTaskInfo(IILcom/android/wm/shell/util/GroupedRecentTaskInfo;Ljava/util/ArrayList;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d2

    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_d2
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move v11, v14

    goto :goto_ab

    :cond_d8
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_dd
    new-instance v0, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e6
    :goto_e6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_103

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/OplusRecentTasksListTaskBarImpl;->getMMapper()Lcom/oplus/quickstep/data/OplusRecentTasksMapper;

    move-result-object v12

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v2, v4, v6}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->map(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;

    move-result-object v11

    if-eqz v11, :cond_e6

    invoke-interface {v0, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e6

    :cond_103
    const-string v4, "loadTasksInBackgroundForDockerAndTaskbar(), rawTaskCount="

    const-string v6, ", allTasksCount="

    invoke-static {v4, v5, v6}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", requestId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loadKeysOnly="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v10, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v1

    if-eqz v1, :cond_15d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTasksInBackgroundForDockerAndTaskbar(), rawTasks: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n allTasks: size"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v10, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15d
    return-object v0
.end method

.method public onRecentTasksChanged()V
    .registers 1

    return-void
.end method
