.class public Lcom/android/quickstep/util/TaskKeyLruCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;,
        Lcom/android/quickstep/util/TaskKeyLruCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-direct {v0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Ljava/util/Map$Entry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->lambda$removeAll$0(Ljava/util/function/Predicate;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removeAll$0(Ljava/util/function/Predicate;Ljava/util/Map$Entry;)Z
    .registers 2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    iget-object p1, p1, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized evictAll()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAndInvalidateIfModified(Landroid/window/TaskSnapshot;)Ljava/lang/Object;
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_5f

    if-nez p1, :cond_9

    goto :goto_5f

    :cond_9
    new-instance v0, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    iget-object v2, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-direct {v0, v2}, Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;-><init>(Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    if-eqz v3, :cond_5b

    iget-object v4, v3, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mValue:Ljava/lang/Object;

    instance-of v5, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v5, :cond_3b

    goto :goto_5b

    :cond_3b
    check-cast v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-wide v5, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_18

    iget-wide v4, v4, Lcom/android/systemui/shared/recents/model/ThumbnailData;->captureTime:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-ltz p1, :cond_5d

    iget-object p1, v3, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mValue:Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_61

    monitor-exit p0

    return-object p1

    :cond_5b
    :goto_5b
    monitor-exit p0

    return-object v1

    :cond_5d
    monitor-exit p0

    return-object v1

    :cond_5f
    :goto_5f
    monitor-exit p0

    return-object v1

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    if-eqz v0, :cond_2b

    iget-object v1, v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mKey:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne v2, v3, :cond_2b

    iget-wide v2, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v4, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2b

    iget v1, v1, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->taskOrder:I

    iget v2, p1, Lcom/oplus/systemui/shared/system/OplusBaseTaskKey;->taskOrder:I

    if-ne v1, v2, :cond_2b

    iget-object p1, v0, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mValue:Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_31

    monitor-exit p0

    return-object p1

    :cond_2b
    :try_start_2b
    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_31

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_16

    if-eqz p2, :cond_16

    :try_start_5
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    iget v1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    invoke-direct {v2, p1, p2}, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_16
    const-string v0, "TaskKeyCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected null key or value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_36

    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll(Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/q;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/launcher/q;-><init>(Ljava/util/function/Predicate;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateIfAlreadyInCache(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/quickstep/util/TaskKeyLruCache;->mMap:Lcom/android/quickstep/util/TaskKeyLruCache$MyLinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;

    if-eqz p1, :cond_11

    iput-object p2, p1, Lcom/android/quickstep/util/TaskKeyLruCache$Entry;->mValue:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method
