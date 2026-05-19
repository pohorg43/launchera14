.class public Lio/branch/search/p0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lio/branch/search/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/branch/search/f<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/AnalyticsEntity;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/AnalyticsEntity;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/branch/search/AnalyticsEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field public l:I


# direct methods
.method public constructor <init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1  # Lio/branch/search/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lio/branch/search/p0;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/branch/search/p0;-><init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public constructor <init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 8
    .param p1  # Lio/branch/search/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6  # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->e:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/p0;->l:I

    iput-object p1, p0, Lio/branch/search/p0;->a:Lio/branch/search/f;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-static {}, Lio/branch/search/p0;->a()Ljava/lang/String;

    move-result-object p5

    :goto_2f
    iput-object p5, p0, Lio/branch/search/p0;->f:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/p0;->g:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/p0;->h:Ljava/lang/String;

    const-string p1, "null"

    if-eqz p4, :cond_3a

    goto :goto_3b

    :cond_3a
    move-object p4, p1

    :goto_3b
    iput-object p4, p0, Lio/branch/search/p0;->i:Ljava/lang/String;

    iput-object p1, p0, Lio/branch/search/p0;->j:Ljava/lang/String;

    iput-object p6, p0, Lio/branch/search/p0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 7
    .param p1  # Lio/branch/search/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5  # Ljava/util/concurrent/atomic/AtomicInteger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/branch/search/p0;->e:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Lio/branch/search/p0;->l:I

    iput-object p1, p0, Lio/branch/search/p0;->a:Lio/branch/search/f;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_2f

    :cond_2b
    invoke-static {}, Lio/branch/search/p0;->a()Ljava/lang/String;

    move-result-object p4

    :goto_2f
    iput-object p4, p0, Lio/branch/search/p0;->f:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/p0;->g:Ljava/lang/String;

    iput-object p3, p0, Lio/branch/search/p0;->j:Ljava/lang/String;

    const-string p1, "null"

    iput-object p1, p0, Lio/branch/search/p0;->h:Ljava/lang/String;

    iput-object p1, p0, Lio/branch/search/p0;->i:Ljava/lang/String;

    iput-object p5, p0, Lio/branch/search/p0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Lio/branch/search/AnalyticsEntity;)V
    .registers 2
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/p0;->e:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/lang/String;)V
    .registers 3
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/p0;->d:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V
    .registers 4
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/AnalyticsEntity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    if-nez p2, :cond_a

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_10

    :cond_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_10
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 6
    .param p1  # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lio/branch/search/p0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_2d

    :cond_29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_2d
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_31
    return-void
.end method

.method public b(Lio/branch/search/AnalyticsEntity;)V
    .registers 4
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget p1, p0, Lio/branch/search/p0;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/branch/search/p0;->l:I

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_17} :catch_21
    .catchall {:try_start_f .. :try_end_17} :catchall_1f

    const-string v0, "rank"

    :try_start_19
    iget v1, p0, Lio/branch/search/p0;->l:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_1e} :catch_21
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception p1

    goto :goto_2e

    :catch_21
    move-exception p1

    :try_start_22
    const-string v0, "VirtualRequest.deleteAll"

    invoke-static {v0, p1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    :goto_27
    iget p1, p0, Lio/branch/search/p0;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/branch/search/p0;->l:I

    return-void

    :goto_2e
    iget v0, p0, Lio/branch/search/p0;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/branch/search/p0;->l:I

    throw p1
.end method

.method public c()Lorg/json/JSONObject;
    .registers 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "request_id"

    :try_start_7
    iget-object v2, p0, Lio/branch/search/p0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lio/branch/search/p0;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_12} :catch_c3

    if-nez v1, :cond_20

    const-string v1, "request_level_analytics"

    :try_start_16
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lio/branch/search/p0;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_20
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lio/branch/search/p0;->d:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_33} :catch_c3

    const-string v4, "extras"

    if-eqz v3, :cond_5e

    :try_start_37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/AnalyticsEntity;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lio/branch/search/AnalyticsEntity;->getRemovalJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2f

    :cond_5e
    const-string v2, "removals"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_72
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v5, p0, Lio/branch/search/p0;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    iget-object v5, p0, Lio/branch/search/p0;->e:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_72

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/branch/search/AnalyticsEntity;

    invoke-virtual {v5}, Lio/branch/search/AnalyticsEntity;->getParseJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_b9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-eqz v6, :cond_b9

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b9
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_72

    :cond_bd
    const-string p0, "results_after"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c2
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_c2} :catch_c3

    goto :goto_c9

    :catch_c3
    move-exception p0

    const-string v1, "VirtualRequest.createTrackingJson"

    invoke-static {v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c9
    return-object v0
.end method

.method public c(Lio/branch/search/AnalyticsEntity;)V
    .registers 3
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/branch/search/p0;->a(Lio/branch/search/AnalyticsEntity;Ljava/util/Map;)V

    return-void
.end method

.method public d()V
    .registers 6

    invoke-virtual {p0}, Lio/branch/search/p0;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "request"

    :try_start_6
    iget-object v2, p0, Lio/branch/search/p0;->a:Lio/branch/search/f;

    invoke-virtual {v2}, Lio/branch/search/f;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_f} :catch_17

    const-string v1, "request_api"

    :try_start_11
    iget-object v2, p0, Lio/branch/search/p0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception v1

    const-string v2, "VirtualRequest.endTracking"

    invoke-static {v2, v1}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1d
    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "virtual_request"

    invoke-virtual {v1, v3, v0, v2}, Lio/branch/search/m;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)V

    iget-object v0, p0, Lio/branch/search/p0;->a:Lio/branch/search/f;

    iget-object v1, p0, Lio/branch/search/p0;->f:Ljava/lang/String;

    iget-object v2, p0, Lio/branch/search/p0;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/branch/search/f;->a(Ljava/lang/String;Ljava/lang/String;)Lio/branch/search/i4;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/p0;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_40
    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/AnalyticsEntity;

    iget-object v4, p0, Lio/branch/search/p0;->d:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    iget-object v4, p0, Lio/branch/search/p0;->e:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_40

    invoke-virtual {v3}, Lio/branch/search/AnalyticsEntity;->prepareUnifiedEntity()Lio/branch/search/g4;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_64
    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p0

    iget-object p0, p0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v2, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v2}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v2

    if-nez v2, :cond_7f

    iget-object p0, p0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {p0, v0, v1}, Lio/branch/search/v3;->a(Lio/branch/search/i4;Ljava/util/List;)V

    :cond_7f
    return-void
.end method

.method public e()I
    .registers 2

    iget-object p0, p0, Lio/branch/search/p0;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p0

    return p0
.end method
