.class public Lio/branch/search/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lio/branch/search/b0;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/Object;

.field public static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lio/branch/search/AnalyticsEntity$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final e:Ljava/lang/Object;


# instance fields
.field public final a:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/branch/search/h;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/h;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/branch/search/h;->d:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/branch/search/h;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/branch/search/m;)V
    .registers 2
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/h;->a:Lio/branch/search/m;

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Boolean;
    .registers 3

    sget-object p0, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return-object v0

    :cond_e
    sget-object p0, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3f

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_3f

    :cond_23
    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/AnalyticsEntity$a;

    iget-object p0, p0, Lio/branch/search/AnalyticsEntity$a;->a:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_39

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public a(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 23
    .param p1  # Ljava/util/concurrent/ConcurrentHashMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_35
    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_41
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v9, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5f

    goto :goto_35

    :cond_5f
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/branch/search/AnalyticsEntity$a;

    invoke-virtual {v10}, Lio/branch/search/AnalyticsEntity$a;->a()Z

    move-result v11

    if-nez v11, :cond_81

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lio/branch/search/AnalyticsEntity$a;->a(J)V

    :cond_81
    invoke-virtual {v10}, Lio/branch/search/AnalyticsEntity$a;->b()Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v11, Lio/branch/search/h4;

    const-string v12, "request_id"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v12, "result_id"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v12, "entity_id"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v12, v10, Lio/branch/search/AnalyticsEntity$a;->a:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    iget-object v12, v10, Lio/branch/search/AnalyticsEntity$a;->b:Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v10, v10, Lio/branch/search/AnalyticsEntity$a;->c:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object v12, v11

    invoke-direct/range {v12 .. v20}, Lio/branch/search/h4;-><init>(Ljava/lang/String;ILjava/lang/String;FJJ)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_b6
    const-string v0, "encounters"

    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_be
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_be} :catch_c0

    goto/16 :goto_35

    :catch_c0
    move-exception v0

    iget-object v8, v1, Lio/branch/search/h;->a:Lio/branch/search/m;

    iget-object v8, v8, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    const-string v9, "BranchImpressionTracking.loadEncounters"

    invoke-virtual {v8, v9, v0}, Lio/branch/search/BranchAnalytics;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    :cond_cc
    invoke-virtual {v2, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lio/branch/search/h;->a:Lio/branch/search/m;

    iget-object v0, v0, Lio/branch/search/m;->e:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v4, v0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    if-eqz v4, :cond_f

    iget-object v4, v0, Lio/branch/search/internal/interfaces/LocalInterface;->g:Lio/branch/search/m;

    invoke-virtual {v4}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lio/branch/search/BranchConfiguration;->t()Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v0, v0, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    invoke-virtual {v0, v5}, Lio/branch/search/v3;->a(Ljava/util/List;)V

    goto/16 :goto_f

    :cond_ea
    return-object v2
.end method

.method public a()V
    .registers 2

    sget-object p0, Lio/branch/search/h;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/b0;

    invoke-virtual {v0}, Lio/branch/search/b0;->c()V

    goto :goto_a

    :cond_1a
    sget-object p0, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(IJ)V
    .registers 4

    sget-object p0, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_23

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/AnalyticsEntity$a;

    invoke-virtual {p0}, Lio/branch/search/AnalyticsEntity$a;->a()Z

    move-result p1

    if-nez p1, :cond_23

    invoke-virtual {p0, p2, p3}, Lio/branch/search/AnalyticsEntity$a;->a(J)V

    :cond_23
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2

    sget-object p0, Lio/branch/search/h;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/view/View;Lio/branch/search/AnalyticsEntity;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/h;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p0, Lio/branch/search/h;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/b0;

    invoke-virtual {p0, p2}, Lio/branch/search/b0;->a(Lio/branch/search/AnalyticsEntity;)V

    goto :goto_22

    :cond_14
    new-instance v0, Lio/branch/search/b0;

    invoke-direct {v0, p1, p2, p0}, Lio/branch/search/b0;-><init>(Landroid/view/View;Lio/branch/search/AnalyticsEntity;Lio/branch/search/h;)V

    sget-object p0, Lio/branch/search/h;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1c
    sget-object p2, Lio/branch/search/h;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    :goto_22
    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    throw p1
.end method

.method public a(Lio/branch/search/AnalyticsEntity;F)V
    .registers 5
    .param p1  # Lio/branch/search/AnalyticsEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lio/branch/search/h;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lio/branch/search/h;->a:Lio/branch/search/m;

    iget-object p0, p0, Lio/branch/search/m;->h:Lio/branch/search/BranchAnalytics;

    invoke-virtual {p0, p1}, Lio/branch/search/BranchAnalytics;->a(Lio/branch/search/AnalyticsEntity;)V

    sget-object p0, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getImpressionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_21

    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    :cond_21
    invoke-virtual {p1, p2}, Lio/branch/search/AnalyticsEntity;->initEncounter(F)Lio/branch/search/AnalyticsEntity$a;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p2, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lio/branch/search/AnalyticsEntity;->getImpressionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public a(IF)Z
    .registers 5

    sget-object p0, Lio/branch/search/h;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_2f

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/branch/search/AnalyticsEntity$a;

    iget-object v1, p0, Lio/branch/search/AnalyticsEntity$a;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_2f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/AnalyticsEntity$a;->a:Ljava/lang/Float;

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-static {p2, p0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_30

    :cond_2f
    move p1, v0

    :goto_30
    return p1
.end method

.method public b()V
    .registers 3

    sget-object p0, Lio/branch/search/h;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/b0;

    invoke-virtual {v0}, Lio/branch/search/b0;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lio/branch/search/b0;->c()V

    goto :goto_a

    :cond_20
    return-void
.end method
