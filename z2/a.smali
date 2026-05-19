.class public final Lz2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/j0;


# static fields
.field public static final b:Lz2/a;

.field public static final c:Lm7/j1;

.field public static d:Lm7/s1;

.field public static final e:Lh4/f;

.field public static final f:Lh4/f;

.field public static final g:Lh4/f;

.field public static final h:Lz2/a$b;

.field public static final i:Lh4/f;


# instance fields
.field public final synthetic a:Lm7/j0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz2/a;

    invoke-direct {v0}, Lz2/a;-><init>()V

    sput-object v0, Lz2/a;->b:Lz2/a;

    const-string v0, "#query_data"

    invoke-static {v0}, Lm7/o2;->b(Ljava/lang/String;)Lm7/j1;

    move-result-object v0

    sput-object v0, Lz2/a;->c:Lm7/j1;

    sget-object v0, Lz2/a$d;->a:Lz2/a$d;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/a;->e:Lh4/f;

    sget-object v0, Lz2/a$c;->a:Lz2/a$c;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/a;->f:Lh4/f;

    sget-object v0, Lz2/a$a;->a:Lz2/a$a;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/a;->g:Lh4/f;

    new-instance v0, Lz2/a$b;

    invoke-direct {v0}, Lz2/a$b;-><init>()V

    sput-object v0, Lz2/a;->h:Lz2/a$b;

    sget-object v0, Lz2/a$e;->a:Lz2/a$e;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/a;->i:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lm7/k0;->b()Lm7/j0;

    move-result-object v0

    iput-object v0, p0, Lz2/a;->a:Lm7/j0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "DecisionCenter"

    const-string v0, "[filterMultiInstance] start"

    invoke-static {p0, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_14

    :cond_12
    move v2, v0

    goto :goto_15

    :cond_14
    :goto_14
    move v2, v1

    :goto_15
    if-eqz v2, :cond_1f

    const-string p1, "[filterMultiInstance] filter list is null or empty."

    invoke-static {p0, p1}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_1f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_52
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5a
    :goto_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_7d

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7b

    goto :goto_7d

    :cond_7b
    move v5, v0

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v5, v1

    :goto_7e
    if-nez v5, :cond_5a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v1, :cond_8a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5a

    :cond_8a
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_97

    move-object v6, v7

    goto :goto_c0

    :cond_97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a2

    goto :goto_c0

    :cond_a2
    move-object v8, v6

    check-cast v8, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v8}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v8

    :cond_a9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v11}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v11

    cmp-long v13, v8, v11

    if-gez v13, :cond_ba

    move-object v6, v10

    move-wide v8, v11

    :cond_ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_a9

    :goto_c0
    check-cast v6, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    if-eqz v6, :cond_c7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    const-string v5, "[filterMultiInstance] serviceId: "

    const-string v8, " has "

    invoke-static {v5, v4, v8}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " records, remain last time:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_de

    goto :goto_e6

    :cond_de
    invoke-virtual {v6}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    :goto_e6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5a

    :cond_f2
    const-string p1, "[filterMultiInstance] end"

    invoke-static {p0, p1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final b()Lz2/c;
    .registers 1

    sget-object p0, Lz2/a;->g:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz2/c;

    return-object p0
.end method

.method public final c(I)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    const/16 v1, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "DecisionCenter"

    const/16 v5, 0x26

    const/high16 v6, -0x80000000

    if-ne v0, v6, :cond_8c

    const-string v0, "[getAllServiceWithoutMulti] start"

    invoke-static {v4, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lz2/a;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    if-eqz v6, :cond_24

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_25

    :cond_24
    move v2, v3

    :cond_25
    if-eqz v2, :cond_2d

    const-string v1, "[getAllServiceWithoutMulti] mRecommendList is null or empty."

    invoke-static {v4, v1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8b

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lz2/a;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    move-object/from16 v6, p0

    invoke-virtual {v6, v2}, Lz2/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance()Z

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_82
    const-string v1, "[getListByEntranceType] serviceList:"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8b
    return-object v0

    :cond_8c
    move-object/from16 v6, p0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lz2/a;->d()Ljava/util/Map;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getListByEntranceType] entrance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", isSupportMultiInstance:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lz2/a;->f()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_ce
    :goto_ce
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v13, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportEntrance(I)Z

    move-result v13

    if-eqz v13, :cond_ce

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    :cond_e5
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ee
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_113

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v13}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_10d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10d
    check-cast v14, Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ee

    :cond_113
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_11b
    :goto_11b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_187

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_138

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_136

    goto :goto_138

    :cond_136
    move v12, v2

    goto :goto_139

    :cond_138
    :goto_138
    move v12, v3

    :goto_139
    if-nez v12, :cond_11b

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-eq v12, v3, :cond_183

    if-eqz v8, :cond_144

    goto :goto_183

    :cond_144
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_150

    const/4 v9, 0x0

    goto :goto_17b

    :cond_150
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_15b

    goto :goto_17b

    :cond_15b
    move-object v13, v9

    check-cast v13, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v13}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v13

    :cond_162
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v16

    cmp-long v18, v13, v16

    if-gez v18, :cond_175

    move-object v9, v15

    move-wide/from16 v13, v16

    :cond_175
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_162

    :goto_17b
    check-cast v9, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    if-eqz v9, :cond_11b

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    :cond_183
    :goto_183
    invoke-interface {v7, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_11b

    :cond_187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", serviceList:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v7, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance()Z

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1aa

    :cond_1e8
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public final d()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/a;->f:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final e()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/pantanal/server/content/recommendlist/ListObserver;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/a;->e:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final f()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/a;->i:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final g(Ljava/lang/Integer;)V
    .registers 8

    const-string p0, "931000"

    invoke-static {p0}, Lcom/pantanal/server/content/utils/a;->b(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    sget-object v0, Lm7/l1;->a:Lm7/l1;

    sget-object v1, Lz2/a;->c:Lm7/j1;

    new-instance v3, Lz2/a$f;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Lz2/a$f;-><init>(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/Integer;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, Lz2/a;->d:Lm7/s1;

    return-void
.end method

.method public getCoroutineContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lz2/a;->a:Lm7/j0;

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p0

    return-object p0
.end method
