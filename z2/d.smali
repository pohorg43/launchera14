.class public final Lz2/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lz2/d;

.field public static final b:Lm7/j1;

.field public static c:Lm7/s1;

.field public static final d:Lh4/f;

.field public static final e:Lh4/f;

.field public static final f:Lh4/f;

.field public static final g:Lh4/f;

.field public static final h:Lz2/d$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz2/d;

    invoke-direct {v0}, Lz2/d;-><init>()V

    sput-object v0, Lz2/d;->a:Lz2/d;

    const-string v0, "#query_scene_data"

    invoke-static {v0}, Lm7/o2;->b(Ljava/lang/String;)Lm7/j1;

    move-result-object v0

    sput-object v0, Lz2/d;->b:Lm7/j1;

    sget-object v0, Lz2/d$d;->a:Lz2/d$d;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/d;->d:Lh4/f;

    sget-object v0, Lz2/d$b;->a:Lz2/d$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/d;->e:Lh4/f;

    sget-object v0, Lz2/d$c;->a:Lz2/d$c;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/d;->f:Lh4/f;

    sget-object v0, Lz2/d$f;->a:Lz2/d$f;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lz2/d;->g:Lh4/f;

    new-instance v0, Lz2/d$a;

    invoke-direct {v0}, Lz2/d$a;-><init>()V

    sput-object v0, Lz2/d;->h:Lz2/d$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ld3/a;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/d;->e:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final b()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/d;->f:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final c()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ld3/b;",
            ">;"
        }
    .end annotation

    sget-object p0, Lz2/d;->d:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final d()Lz2/e;
    .registers 1

    sget-object p0, Lz2/d;->g:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz2/e;

    return-object p0
.end method

.method public final e(ILjava/util/List;)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/SceneInfo;",
            ">;"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_11

    :cond_f
    move v4, v2

    goto :goto_12

    :cond_11
    :goto_11
    move v4, v3

    :goto_12
    const-string v5, "SceneDecisionCenter"

    if-eqz v4, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSceneListByEntrance("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") service list is null or empty!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_35
    const-string v4, "entranceType("

    const-string v6, "), filter before:"

    invoke-static {v4, v0, v6}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v1, v8}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/16 v11, 0x7c

    if-eqz v10, :cond_8c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportEntrance()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9f
    :goto_9f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v9, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportEntrance(I)Z

    move-result v9

    if-eqz v9, :cond_9f

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    :cond_b6
    const-string v1, "), filter after:"

    invoke-static {v4, v0, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v6, v8}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_107

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportEntrance()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c9

    :cond_107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "<this>"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_124
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_14d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v7}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_147

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_147
    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_124

    :cond_14d
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_155
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1df

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_17d

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17b

    goto :goto_17d

    :cond_17b
    move v4, v2

    goto :goto_17e

    :cond_17d
    :goto_17d
    move v4, v3

    :goto_17e
    if-nez v4, :cond_1c4

    invoke-static {v11}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    new-instance v6, Lcom/pantanal/server/content/recommendlist/SceneInfo;

    move-object v7, v6

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getCardSleeveType()I

    move-result v10

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneCreateTime()J

    move-result-wide v12

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneUpdateTime()J

    move-result-wide v14

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneWeight()I

    move-result v16

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneStatus()I

    move-result v17

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneScore()F

    move-result v18

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneShouldFocus()Z

    move-result v19

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getFocusTime()J

    move-result-wide v20

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getExpectSceneCnt()I

    move-result v22

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getCombinationStrategy()I

    move-result v23

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getHomeFlag()Z

    move-result v24

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneLevel()I

    move-result v25

    invoke-virtual {v4}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getForceGuaranteed()Z

    move-result v26

    invoke-direct/range {v7 .. v26}, Lcom/pantanal/server/content/recommendlist/SceneInfo;-><init>(JILjava/util/List;JJIIFZJIIZIZ)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_155

    :cond_1c4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sceneId("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "), service list is null or empty!"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_155

    :cond_1df
    return-object v0
.end method

.method public final f(Ljava/lang/Integer;)V
    .registers 8

    sget-object v0, Lm7/l1;->a:Lm7/l1;

    sget-object v1, Lz2/d;->b:Lm7/j1;

    new-instance v3, Lz2/d$e;

    const/4 p0, 0x0

    invoke-direct {v3, p1, p0}, Lz2/d$e;-><init>(Ljava/lang/Integer;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, Lz2/d;->c:Lm7/s1;

    return-void
.end method
