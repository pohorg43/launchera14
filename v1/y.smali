.class public abstract Lv1/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv1/w;


# instance fields
.field public a:Lv1/w;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Lv1/v;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Lv1/v;


# direct methods
.method public constructor <init>(Lv1/w;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv1/y;->a:Lv1/w;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lv1/y;->b:Ljava/util/Map;

    new-instance v0, Lv1/z;

    invoke-direct {v0, p0}, Lv1/z;-><init>(Lv1/y;)V

    iput-object v0, p0, Lv1/y;->c:Lv1/v;

    iput-object p1, p0, Lv1/y;->a:Lv1/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lw1/a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lv1/y;->f(Ljava/lang/String;Lw1/a;)V

    return-void
.end method

.method public b()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv1/y;->a:Lv1/w;

    invoke-interface {v0}, Lv1/w;->b()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_3c

    :cond_14
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw1/a;

    if-eqz v4, :cond_1c

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lv1/t;

    invoke-virtual {v6, v5, v4}, Lv1/t;->i(Lw1/a;Lw1/a;)Lw1/a;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3c
    :goto_3c
    return-object v1
.end method

.method public b(Ljava/lang/String;)Lw1/a;
    .registers 3

    iget-object v0, p0, Lv1/y;->a:Lv1/w;

    invoke-interface {v0, p1}, Lv1/w;->b(Ljava/lang/String;)Lw1/a;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    goto :goto_10

    :cond_a
    check-cast p0, Lv1/t;

    invoke-virtual {p0, v0, p1}, Lv1/t;->i(Lw1/a;Lw1/a;)Lw1/a;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public b(Ljava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6d

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6d

    :cond_9
    iget-object v0, p0, Lv1/y;->a:Lv1/w;

    invoke-interface {v0}, Lv1/w;->b()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const/4 v5, 0x1

    aput-object v3, v1, v5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_29

    goto :goto_5f

    :cond_29
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_31
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw1/a;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw1/a;

    if-nez v9, :cond_4c

    goto :goto_31

    :cond_4c
    move-object v10, p0

    check-cast v10, Lv1/t;

    invoke-virtual {v10, v8, v9}, Lv1/t;->i(Lw1/a;Lw1/a;)Lw1/a;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v10, v8, v9}, Lv1/t;->i(Lw1/a;Lw1/a;)Lw1/a;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_5f
    :goto_5f
    iget-object p1, p0, Lv1/y;->a:Lv1/w;

    aget-object v0, v1, v4

    invoke-interface {p1, v0}, Lv1/w;->b(Ljava/util/Map;)V

    iget-object p0, p0, Lv1/y;->c:Lv1/v;

    aget-object p1, v1, v5

    invoke-interface {p0, p1}, Lv1/v;->b(Ljava/util/Map;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public c(Ljava/lang/String;Lw1/a;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lv1/y;->f(Ljava/lang/String;Lw1/a;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 7

    iget-object v0, p0, Lv1/y;->b:Ljava/util/Map;

    monitor-enter v0

    if-nez p2, :cond_7

    :try_start_5
    monitor-exit v0

    return-void

    :cond_7
    iget-object p0, p0, Lv1/y;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_27

    const/4 v1, 0x0

    goto :goto_2d

    :cond_27
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/v;

    :goto_2d
    if-eqz v1, :cond_4e

    const/4 v2, 0x1

    if-eq p3, v2, :cond_47

    const/4 v2, 0x2

    if-eq p3, v2, :cond_40

    const/4 v2, 0x3

    if-eq p3, v2, :cond_39

    goto :goto_11

    :cond_39
    move-object v2, p2

    check-cast v2, Lw1/a;

    invoke-interface {v1, p1, v2}, Lv1/v;->d(Ljava/lang/String;Lw1/a;)V

    goto :goto_11

    :cond_40
    move-object v2, p2

    check-cast v2, Lw1/a;

    invoke-interface {v1, p1, v2}, Lv1/v;->a(Ljava/lang/String;Lw1/a;)V

    goto :goto_11

    :cond_47
    move-object v2, p2

    check-cast v2, Lw1/a;

    invoke-interface {v1, p1, v2}, Lv1/v;->c(Ljava/lang/String;Lw1/a;)V

    goto :goto_11

    :cond_4e
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception p0

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    throw p0
.end method

.method public e(Ljava/util/Map;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw1/a;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lv1/y;->b:Ljava/util/Map;

    monitor-enter v0

    if-nez p1, :cond_7

    :try_start_5
    monitor-exit v0

    return-void

    :cond_7
    iget-object p0, p0, Lv1/y;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_27

    const/4 v1, 0x0

    goto :goto_2d

    :cond_27
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/v;

    :goto_2d
    if-eqz v1, :cond_45

    const/4 v2, 0x4

    if-eq p2, v2, :cond_41

    const/4 v2, 0x5

    if-eq p2, v2, :cond_3d

    const/4 v2, 0x6

    if-eq p2, v2, :cond_39

    goto :goto_11

    :cond_39
    invoke-interface {v1, p1}, Lv1/v;->e(Ljava/util/Map;)V

    goto :goto_11

    :cond_3d
    invoke-interface {v1, p1}, Lv1/v;->b(Ljava/util/Map;)V

    goto :goto_11

    :cond_41
    invoke-interface {v1, p1}, Lv1/v;->f(Ljava/util/Map;)V

    goto :goto_11

    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_5 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public f(Ljava/lang/String;Lw1/a;)V
    .registers 6

    if-eqz p1, :cond_32

    if-nez p2, :cond_5

    goto :goto_32

    :cond_5
    iget-object v0, p0, Lv1/y;->a:Lv1/w;

    invoke-interface {v0, p1}, Lv1/w;->b(Ljava/lang/String;)Lw1/a;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lv1/t;

    invoke-virtual {v1, v0, p2}, Lv1/t;->i(Lw1/a;Lw1/a;)Lw1/a;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lv1/y;->a:Lv1/w;

    invoke-interface {v0, p1, p2}, Lv1/w;->a(Ljava/lang/String;Lw1/a;)V

    iget-object p0, p0, Lv1/y;->c:Lv1/v;

    invoke-virtual {v1, v2, p2}, Lv1/t;->i(Lw1/a;Lw1/a;)Lw1/a;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lv1/v;->a(Ljava/lang/String;Lw1/a;)V

    goto :goto_32

    :cond_24
    iget-object v0, p0, Lv1/y;->a:Lv1/w;

    invoke-interface {v0, p1, p2}, Lv1/w;->c(Ljava/lang/String;Lw1/a;)V

    iget-object p0, p0, Lv1/y;->c:Lv1/v;

    invoke-virtual {v1, v2, p2}, Lv1/t;->i(Lw1/a;Lw1/a;)Lw1/a;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lv1/v;->c(Ljava/lang/String;Lw1/a;)V

    :cond_32
    :goto_32
    return-void
.end method
