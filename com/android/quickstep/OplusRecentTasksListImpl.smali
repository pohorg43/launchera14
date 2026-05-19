.class public final Lcom/android/quickstep/OplusRecentTasksListImpl;
.super Lcom/android/quickstep/RecentTasksList;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRecentTasksListImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRecentTasksListImpl.kt\ncom/android/quickstep/OplusRecentTasksListImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1855#2,2:130\n777#2:132\n788#2:133\n1864#2,2:134\n789#2,2:136\n1866#2:138\n791#2:139\n1611#2:140\n1855#2:141\n1856#2:143\n1612#2:144\n1855#2,2:145\n1855#2,2:147\n1#3:142\n*S KotlinDebug\n*F\n+ 1 OplusRecentTasksListImpl.kt\ncom/android/quickstep/OplusRecentTasksListImpl\n*L\n70#1:130,2\n85#1:132\n85#1:133\n85#1:134,2\n85#1:136,2\n85#1:138\n85#1:139\n87#1:140\n87#1:141\n87#1:143\n87#1:144\n103#1:145,2\n108#1:147,2\n87#1:142\n*E\n"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;

.field private static final KEY_QUICK_STARTUP_LIST:Ljava/lang/String; = "HeatGameConfig"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusRecentTasksListImpl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final filter$delegate:Lh4/f;

.field private lastLoadedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapper$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusRecentTasksListImpl;->Companion:Lcom/android/quickstep/OplusRecentTasksListImpl$Companion;

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

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->lastLoadedTasks:Ljava/util/ArrayList;

    sget-object p1, Lkotlin/a;->c:Lkotlin/a;

    sget-object p2, Lcom/android/quickstep/OplusRecentTasksListImpl$filter$2;->INSTANCE:Lcom/android/quickstep/OplusRecentTasksListImpl$filter$2;

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->filter$delegate:Lh4/f;

    sget-object p2, Lcom/android/quickstep/OplusRecentTasksListImpl$mMapper$2;->INSTANCE:Lcom/android/quickstep/OplusRecentTasksListImpl$mMapper$2;

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->mMapper$delegate:Lh4/f;

    return-void
.end method

.method private final getMMapper()Lcom/oplus/quickstep/data/OplusRecentTasksMapper;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->mMapper$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;

    return-object p0
.end method


# virtual methods
.method public final checkEmbeddedTask(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/quickstep/OplusRecentTasksListImpl$checkEmbeddedTask$tmpLockedUsers$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/OplusRecentTasksListImpl$checkEmbeddedTask$tmpLockedUsers$1;-><init>(Lcom/android/quickstep/OplusRecentTasksListImpl;)V

    invoke-direct {p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getMMapper()Lcom/oplus/quickstep/data/OplusRecentTasksMapper;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->checkIfEmbedded(Lcom/android/systemui/shared/recents/model/Task;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

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

    iget-object p0, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->filter$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;

    return-object p0
.end method

.method public final getLastLoadedTasks()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->lastLoadedTasks:Ljava/util/ArrayList;

    return-object p0
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

    new-instance v4, Lcom/android/quickstep/OplusRecentTasksListImpl$loadTasksInBackground$tmpLockedUsers$1;

    invoke-direct {v4, v0}, Lcom/android/quickstep/OplusRecentTasksListImpl$loadTasksInBackground$tmpLockedUsers$1;-><init>(Lcom/android/quickstep/OplusRecentTasksListImpl;)V

    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object v5

    const-string v6, "HeatGameConfig"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/oplus/util/OplusCommonConfig;->getConfigInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "OplusRecentTasksListImpl"

    const-string v9, "QuickStep"

    const-string v10, "it"

    const/4 v11, 0x0

    if-eqz v5, :cond_89

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_89

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_47
    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v13, "|"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    invoke-static {v12, v13, v11, v11, v14}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v7

    if-eqz v14, :cond_47

    const-string v14, "loadTasksInBackground(), QuickStartup, it = "

    const-string v15, " app="

    invoke-static {v14, v12, v15}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v8, v12}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_89
    const/4 v6, 0x0

    :cond_8a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getFilter()Lcom/oplus/quickstep/data/OplusRecentTasksFilter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->clear()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-ltz v11, :cond_c7

    move-object v14, v12

    check-cast v14, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getFilter()Lcom/oplus/quickstep/data/OplusRecentTasksFilter;

    move-result-object v15

    const-string v0, "groupedRecentTaskInfo"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v11, v5, v14, v6}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->filterTaskInfo(IILcom/android/wm/shell/util/GroupedRecentTaskInfo;Ljava/util/ArrayList;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c3

    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c3
    move-object/from16 v0, p0

    move v11, v13

    goto :goto_9e

    :cond_c7
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_cc
    const/4 v0, 0x0

    new-instance v3, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;

    invoke-direct {v3, v1, v2, v5}, Lcom/android/quickstep/RecentTasksList$TaskLoadResult;-><init>(IZI)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d6
    :goto_d6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ff

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/util/GroupedRecentTaskInfo;

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getMMapper()Lcom/oplus/quickstep/data/OplusRecentTasksMapper;

    move-result-object v12

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v11, v2, v4, v6}, Lcom/oplus/quickstep/data/OplusRecentTasksMapper;->map(Lcom/android/wm/shell/util/GroupedRecentTaskInfo;ZLandroid/util/SparseBooleanArray;Ljava/util/ArrayList;)Lcom/android/quickstep/util/GroupTask;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/OplusRecentTasksListImpl;->getFilter()Lcom/oplus/quickstep/data/OplusRecentTasksFilter;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/oplus/quickstep/data/OplusRecentTasksFilter;->filterTask(Lcom/android/quickstep/util/GroupTask;)Z

    move-result v12

    if-nez v12, :cond_f8

    goto :goto_f9

    :cond_f8
    move-object v11, v0

    :goto_f9
    if-eqz v11, :cond_d6

    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d6

    :cond_ff
    const-string v0, "loadTasksInBackground(), rawTaskCount="

    const-string v4, ", allTasksCount="

    invoke-static {v0, v5, v4}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loadKeysOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public onloadTasksInBackgroundFinish(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->lastLoadedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusRecentTasksListImpl;->copyOf(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/GroupTask;

    iget-object v1, p0, Lcom/android/quickstep/OplusRecentTasksListImpl;->lastLoadedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    return-void
.end method
