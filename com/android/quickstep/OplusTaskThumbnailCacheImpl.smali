.class public final Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;
.super Lcom/android/quickstep/TaskThumbnailCache;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListeners$OnCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusTaskThumbnailCacheImpl"


# instance fields
.field public final stackChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private taskIdSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->Companion:Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TaskThumbnailCache;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->taskIdSet:Ljava/util/Set;

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->setOnCacheListener(Lcom/android/systemui/shared/system/TaskStackChangeListeners$OnCacheListener;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->traversalStackChangeMap$lambda$3(Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;I)V

    return-void
.end method

.method public static synthetic d(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInCache$lambda$0(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInBackground$lambda$1(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private static final traversalStackChangeMap$lambda$3(Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;I)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "OplusTaskThumbnailCacheImpl"

    const-string/jumbo v2, "traversalStackChangeMap begin, size:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_4c

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_4c
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2f

    :cond_50
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_6f

    const-string v0, "OplusTaskThumbnailCacheImpl"

    const-string/jumbo v1, "traversalStackChangeMap after, size:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6f
    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->taskIdSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_77
    iget-object p0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->taskIdSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_82

    monitor-exit v0

    return-void

    :catchall_82
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;Z)Lcom/android/quickstep/util/CancellableTask;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;Z)",
            "Lcom/android/quickstep/util/CancellableTask<",
            "*>;"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p4, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {p4, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v0, 0x0

    if-eqz p4, :cond_11

    iget-object v1, p4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_12

    :cond_11
    move-object v1, v0

    :goto_12
    if-eqz v1, :cond_29

    iget-boolean v1, p4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v1, :cond_20

    if-nez p2, :cond_20

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_29

    :cond_20
    invoke-interface {p3, p4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->traversalStackChangeMap(I)V

    return-object v0

    :cond_29
    new-instance p4, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl$updateThumbnailInBackground$request$1;-><init>(Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p4
.end method

.method private static final updateThumbnailInBackground$lambda$1(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 4

    const-string v0, "$task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "t"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-eqz p1, :cond_12

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method private static final updateThumbnailInCache$lambda$0(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    const-string v0, "$task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    return-void
.end method


# virtual methods
.method public callTaskSnapshotChanged(IJLjava/lang/Runnable;)V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->taskIdSet:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "OplusTaskThumbnailCacheImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callTaskSnapshotChanged snapshotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    iget-object v1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->taskIdSet:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Li4/v;->J(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_40

    if-eqz p4, :cond_49

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_49

    :cond_40
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->stackChangeMap:Ljava/util/HashMap;

    invoke-interface {p0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4b

    :cond_49
    :goto_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public checkValueExist(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    instance-of v0, p1, Landroid/window/TaskSnapshot;

    :goto_6
    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    check-cast p1, Landroid/window/TaskSnapshot;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Landroid/window/TaskSnapshot;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public final forceUpdateTaskSnapShot(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object p0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-void
.end method

.method public final getTaskIdSet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->taskIdSet:Ljava/util/Set;

    return-object p0
.end method

.method public putCache(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    iget-object p0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/util/TaskKeyLruCache;->updateIfAlreadyInCache(ILjava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final setTaskIdSet(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->taskIdSet:Ljava/util/Set;

    return-void
.end method

.method public final traversalStackChangeMap(I)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/content/res/c;

    invoke-direct {v1, p0, p1}, Landroidx/core/content/res/c;-><init>(Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)",
            "Lcom/android/quickstep/util/CancellableTask<",
            "*>;"
        }
    .end annotation

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p0, Lcom/android/quickstep/TaskThumbnailCache;->mHighResLoadingState:Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, v1

    :goto_1c
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    const/4 v3, 0x0

    if-eqz v2, :cond_24

    iget-object v4, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    goto :goto_25

    :cond_24
    move-object v4, v3

    :goto_25
    if-eqz v4, :cond_41

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-boolean v2, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    if-eqz v2, :cond_36

    if-nez v0, :cond_36

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_36
    if-eqz p2, :cond_40

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_40
    return-object v3

    :cond_41
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string/jumbo v3, "task.key"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/quickstep/j2;

    invoke-direct {v3, p1, p2}, Lcom/android/quickstep/j2;-><init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;Z)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p0

    return-object p0
.end method

.method public updateThumbnailInCache(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 5

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_22

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string/jumbo v1, "task.key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/android/launcher/guide/side/e;

    invoke-direct {v2, p1}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/systemui/shared/recents/model/Task;)V

    invoke-static {}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isEnable()Z

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/quickstep/OplusTaskThumbnailCacheImpl;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task$TaskKey;ZLjava/util/function/Consumer;Z)Lcom/android/quickstep/util/CancellableTask;

    :cond_22
    return-void
.end method
