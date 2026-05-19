.class public final Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;,
        Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;,
        Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDesktopModeTaskRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DesktopModeTaskRepository.kt\ncom/android/wm/shell/desktopmode/DesktopModeTaskRepository\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 3 SparseArray.kt\nandroidx/core/util/SparseArrayKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 7 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,336:1\n32#2,2:337\n32#2,2:339\n76#3,2:341\n79#3:345\n76#3,2:348\n79#3:352\n2478#4:343\n2478#4:346\n2478#4:350\n1#5:344\n1#5:347\n1#5:351\n1224#6,2:353\n1224#6,2:355\n211#7,2:357\n*S KotlinDebug\n*F\n+ 1 DesktopModeTaskRepository.kt\ncom/android/wm/shell/desktopmode/DesktopModeTaskRepository\n*L\n86#1:337,2\n110#1:339,2\n137#1:341,2\n137#1:345\n163#1:348,2\n163#1:352\n139#1:343\n151#1:346\n165#1:350\n139#1:344\n151#1:347\n165#1:351\n179#1:353,2\n188#1:355,2\n253#1:357,2\n*E\n"
    }
.end annotation


# instance fields
.field private final activeTasksListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;",
            ">;"
        }
    .end annotation
.end field

.field private final desktopCorners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

.field private desktopGestureExclusionListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Region;",
            ">;"
        }
    .end annotation
.end field

.field private final displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

.field private final freeformTasksInZOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final visibleTasksListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->visibleTasksListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-direct {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;IZ)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->notifyVisibleTaskListeners$lambda$12$lambda$11(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;IZ)V

    return-void
.end method

.method private static final addVisibleTasksListener$lambda$1$lambda$0(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;II)V
    .registers 4

    const-string v0, "$visibleTasksListener"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_9

    const/4 p2, 0x1

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;->onVisibilityChanged(IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->removeTaskCorners$lambda$14(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->addVisibleTasksListener$lambda$1$lambda$0(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;II)V

    return-void
.end method

.method private final calculateDesktopExclusionRegion()Landroid/graphics/Region;
    .registers 4

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    invoke-static {p0}, Landroidx/core/util/SparseArrayKt;->valueIterator(Landroid/util/SparseArray;)Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_b

    :cond_1d
    return-object v0
.end method

.method public static synthetic d(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->updateTaskCorners$lambda$13(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 1

    invoke-static {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->setTaskCornerListener$lambda$2(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    return-void
.end method

.method private final notifyVisibleTaskListeners(IZ)V
    .registers 6

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->visibleTasksListeners:Landroid/util/ArrayMap;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/quickstep/q;

    invoke-direct {v2, v1, p1, p2}, Lcom/android/quickstep/q;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;IZ)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_2b
    return-void
.end method

.method private static final notifyVisibleTaskListeners$lambda$12$lambda$11(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;IZ)V
    .registers 3

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;->onVisibilityChanged(IZ)V

    return-void
.end method

.method private static final removeTaskCorners$lambda$14(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->calculateDesktopExclusionRegion()Landroid/graphics/Region;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private static final setTaskCornerListener$lambda$2(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->calculateDesktopExclusionRegion()Landroid/graphics/Region;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method

.method private static final updateTaskCorners$lambda$13(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->calculateDesktopExclusionRegion()Landroid/graphics/Region;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_11
    return-void
.end method


# virtual methods
.method public final addActiveTask(II)Z
    .registers 10

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_3d

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    if-eq v4, p1, :cond_3a

    invoke-virtual {v5}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getActiveTasks()Landroid/util/ArraySet;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;

    invoke-interface {v6, v4}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;->onActiveTasksChanged(I)V

    goto :goto_2a

    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_3d
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;->getOrCreate(I)Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getActiveTasks()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    sget-object v1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x1

    aput-object p2, v4, v2

    const-string p2, "DesktopTaskRepo: add active task=%d displayId=%d"

    invoke-virtual {v1, v3, p2, v4}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_70
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;

    invoke-interface {p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;->onActiveTasksChanged(I)V

    goto :goto_70

    :cond_80
    return v0
.end method

.method public final addActiveTaskListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;)V
    .registers 3

    const-string v0, "activeTasksListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOrMoveFreeformTaskToTop(I)V
    .registers 7

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTaskRepo: add or move task to top taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_28
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final addVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;Ljava/util/concurrent/Executor;)V
    .registers 7

    const-string/jumbo v0, "visibleTasksListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->visibleTasksListeners:Landroid/util/ArrayMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-static {v0}, Landroidx/core/util/SparseArrayKt;->keyIterator(Landroid/util/SparseArray;)Li4/f0;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result v2

    new-instance v3, Lcom/android/launcher/sellmode/a;

    invoke-direct {v3, p1, v1, v2}, Lcom/android/launcher/sellmode/a;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;II)V

    invoke-interface {p2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_16

    :cond_33
    return-void
.end method

.method public final getActiveTasks(I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getActiveTasks()Landroid/util/ArraySet;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public final getFreeformTasksInZOrder()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    return-object p0
.end method

.method public final getVisibleTaskCount(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getVisibleTasks()Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public final isActiveTask(I)Z
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-static {p0}, Landroidx/core/util/SparseArrayKt;->valueIterator(Landroid/util/SparseArray;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lj7/l;->f(Ljava/util/Iterator;)Lj7/h;

    move-result-object p0

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getActiveTasks()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public final isVisibleTask(I)Z
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-static {p0}, Landroidx/core/util/SparseArrayKt;->valueIterator(Landroid/util/SparseArray;)Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Lj7/l;->f(Ljava/util/Iterator;)Lj7/h;

    move-result-object p0

    invoke-interface {p0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    invoke-virtual {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getVisibleTasks()Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method

.method public final removeActiveTask(I)Z
    .registers 11

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_9
    const/4 v5, 0x1

    if-ge v3, v1, :cond_3e

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    invoke-virtual {v7}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getActiveTasks()Landroid/util/ArraySet;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;

    invoke-interface {v7, v6}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;->onActiveTasksChanged(I)V

    goto :goto_2a

    :cond_3a
    move v4, v5

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_3e
    if-eqz v4, :cond_51

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "DesktopTaskRepo: remove active task=%d"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_51
    return v4
.end method

.method public final removeActiveTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$ActiveTasksListener;)V
    .registers 3

    const-string v0, "activeTasksListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->activeTasksListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeFreeformTask(I)V
    .registers 7

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "DesktopTaskRepo: remove freeform task from ordered list taskId=%d"

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->freeformTasksInZOrder:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeTaskCorners(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_11

    new-instance v0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/a;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public final removeVisibleTasksListener(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$VisibleTasksListener;)V
    .registers 3

    const-string/jumbo v0, "visibleTasksListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->visibleTasksListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setTaskCornerListener(Ljava/util/function/Consumer;Ljava/util/concurrent/Executor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Region;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    const-string v0, "cornersListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionListener:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {p1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final updateTaskCorners(ILandroid/graphics/Region;)V
    .registers 4

    const-string/jumbo v0, "taskCorners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopCorners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->desktopGestureExclusionExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_17

    new-instance p2, Lcom/android/wm/shell/desktopmode/j;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/desktopmode/j;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_17
    return-void
.end method

.method public final updateVisibleFreeformTasks(IIZ)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p3, :cond_59

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-static {v1}, Landroidx/core/util/SparseArrayKt;->keyIterator(Landroid/util/SparseArray;)Li4/f0;

    move-result-object v1

    invoke-static {v1}, Lj7/l;->f(Ljava/util/Iterator;)Lj7/h;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;

    invoke-direct {v2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$updateVisibleFreeformTasks$otherDisplays$1;-><init>(I)V

    invoke-static {v1, v2}, Lj7/p;->m(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object v1

    check-cast v1, Lj7/e;

    new-instance v2, Lj7/e$a;

    invoke-direct {v2, v1}, Lj7/e$a;-><init>(Lj7/e;)V

    :cond_1d
    :goto_1d
    invoke-virtual {v2}, Lj7/e$a;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v2}, Lj7/e$a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    invoke-virtual {v3}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getVisibleTasks()Landroid/util/ArraySet;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    invoke-virtual {v3}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getVisibleTasks()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-direct {p0, v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->notifyVisibleTaskListeners(IZ)V

    goto :goto_1d

    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result v1

    if-eqz p3, :cond_71

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v2, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;->getOrCreate(I)Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getVisibleTasks()Landroid/util/ArraySet;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_71
    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->getVisibleTasks()Landroid/util/ArraySet;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_88
    :goto_88
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_ae

    sget-object v4, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v6, v3

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, p2

    const-string p2, "DesktopTaskRepo: update task visibility taskId=%d visible=%b displayId=%d"

    invoke-virtual {v4, v5, p2, v6}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_ae
    if-eq v1, v2, :cond_ba

    if-eqz v1, :cond_b4

    if-nez v2, :cond_ba

    :cond_b4
    if-lez v2, :cond_b7

    move v0, v3

    :cond_b7
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->notifyVisibleTaskListeners(IZ)V

    :cond_ba
    return-void
.end method
