.class public abstract Lz8/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBaseTrackEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseTrackEvent.kt\npantanal/track/BaseTrackEvent\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,249:1\n215#2,2:250\n766#3:252\n857#3,2:253\n766#3:255\n857#3,2:256\n1855#3:258\n1864#3,3:260\n1856#3:264\n32#4:259\n33#4:263\n*S KotlinDebug\n*F\n+ 1 BaseTrackEvent.kt\npantanal/track/BaseTrackEvent\n*L\n67#1:250,2\n94#1:252\n94#1:253,2\n123#1:255\n123#1:256,2\n174#1:258\n182#1:260,3\n174#1:264\n175#1:259\n175#1:263\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lm7/s1;

.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lh4/j<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Lz8/d;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v0, ""

    iput-object v0, p0, Lz8/a;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lz8/a;->a(IIZ)Lz8/a;

    return-object p0
.end method


# virtual methods
.method public final a(IIZ)Lz8/a;
    .registers 15

    :try_start_0
    iget-object v0, p0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lh4/j;

    iget-object v4, v4, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v3, 0x0

    :goto_25
    if-eqz v3, :cond_b

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_47

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0, p3, p1}, Lz8/a;->c(ILandroid/util/SparseArray;ZI)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_46
    .catchall {:try_start_0 .. :try_end_46} :catchall_48

    goto :goto_4d

    :cond_47
    return-object p0

    :catchall_48
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_4d
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_79

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object p2, p0, Lz8/a;->d:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " addStep error "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    const-string v1, "BaseTrackEvent"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_79
    return-object p0
.end method

.method public final declared-synchronized c(ILandroid/util/SparseArray;ZI)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lz8/d;",
            ">;ZI)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "processList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_66

    :try_start_6
    rem-int/lit8 v0, p1, 0xa

    sub-int v0, p1, v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz8/d;

    if-nez v1, :cond_24

    new-instance v9, Lz8/d;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xc

    move-object v1, v9

    move v2, p4

    move v3, v0

    move v7, p3

    invoke-direct/range {v1 .. v8}, Lz8/d;-><init>(IIJLjava/util/concurrent/CopyOnWriteArrayList;ZI)V

    invoke-virtual {p2, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v9

    :cond_24
    iget-object p2, v1, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_33

    goto :goto_38

    :catchall_33
    move-exception p1

    :try_start_34
    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_38
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_64

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "BaseTrackEvent"

    iget-object p2, p0, Lz8/a;->d:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " buildProcessField error "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_64
    .catchall {:try_start_34 .. :try_end_64} :catchall_66

    :cond_64
    monitor-exit p0

    return-void

    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final declared-synchronized e()V
    .registers 14

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_cf

    :try_start_6
    iget-object v1, p0, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh4/j;

    iget-object v2, v2, Lh4/j;->b:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    invoke-static {v2}, Landroidx/core/util/SparseArrayKt;->valueIterator(Landroid/util/SparseArray;)Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz8/d;

    iget-boolean v4, v3, Lz8/d;->e:Z

    if-eqz v4, :cond_3c

    iget-wide v4, v3, Lz8/d;->c:J

    invoke-static {v4, v5}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->getDateText(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :catchall_3a
    move-exception v1

    goto :goto_94

    :cond_3c
    :goto_3c
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8b

    iget-object v4, v3, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_86

    check-cast v6, Ljava/lang/Integer;

    iget v8, v3, Lz8/d;->a:I

    const-string v9, "code"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v8, v6

    invoke-static {v8}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->formatInt4(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_84

    const/16 v5, 0x2d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_84
    move v5, v7

    goto :goto_52

    :cond_86
    invoke-static {}, Li4/o;->k()V

    const/4 v1, 0x0

    throw v1

    :cond_8b
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_91
    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_93
    .catchall {:try_start_6 .. :try_end_93} :catchall_3a

    goto :goto_98

    :goto_94
    :try_start_94
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_98
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_c4

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "BaseTrackEvent"

    iget-object v4, p0, Lz8/a;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " buildProcessField error "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf8

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_c4
    iget-object v1, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_cd

    const-string v2, "process_detail"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_cd
    .catchall {:try_start_94 .. :try_end_cd} :catchall_cf

    :cond_cd
    monitor-exit p0

    return-void

    :catchall_cf
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()V
    .registers 13

    :try_start_0
    iget-object v0, p0, Lz8/a;->a:Lm7/s1;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lm7/s1$a;->a(Lm7/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_9
    iput-object v1, p0, Lz8/a;->a:Lm7/s1;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_35

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lz8/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, " cancelTimeoutJob error "

    invoke-static {p0, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "BaseTrackEvent"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_35
    return-void
.end method

.method public g(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    iget-object v0, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_19

    sget-object v1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v1}, Lz8/f$a;->a()Lz8/f;

    move-result-object v1

    iget-object v1, v1, Lz8/f;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_19
    iget-object v0, p0, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_58

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_42

    const-string v2, ""

    :cond_42
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_4a
    invoke-static {v1}, Li4/k0;->m(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->uploadTechTrack$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_57
    .catchall {:try_start_a .. :try_end_57} :catchall_5a

    goto :goto_5f

    :cond_58
    const/4 v1, 0x0

    goto :goto_5f

    :catchall_5a
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_5f
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_81

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lz8/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, " reportEvent error "

    invoke-static {p0, p2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "BaseTrackEvent"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_81
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lz8/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final i()V
    .registers 13

    iget-object v0, p0, Lz8/a;->a:Lm7/s1;

    if-nez v0, :cond_3b

    const-wide/16 v0, 0x27d8

    :try_start_6
    new-instance v2, Lcom/oplus/quickstep/dock/e;

    invoke-direct {v2, p0}, Lcom/oplus/quickstep/dock/e;-><init>(Lz8/a;)V

    invoke-static {v0, v1, v2}, Lcom/oplus/seedling/sdk/statistics/StatisticsTrackUtil;->delayTask(JLjava/lang/Runnable;)Lm7/s1;

    move-result-object v0

    iput-object v0, p0, Lz8/a;->a:Lm7/s1;

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_14

    goto :goto_19

    :catchall_14
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_19
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3b

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lz8/a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, " cancelTimeoutJob error "

    invoke-static {p0, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "BaseTrackEvent"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_3b
    return-void
.end method

.method public j()V
    .registers 1

    invoke-virtual {p0}, Lz8/a;->f()V

    return-void
.end method
