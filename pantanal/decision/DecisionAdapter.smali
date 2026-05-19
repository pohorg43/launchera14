.class public final Lpantanal/decision/DecisionAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/decision/DecisionAdapter$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDecisionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecisionAdapter.kt\npantanal/decision/DecisionAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,307:1\n1549#2:308\n1620#2,3:309\n1549#2:312\n1620#2,3:313\n*S KotlinDebug\n*F\n+ 1 DecisionAdapter.kt\npantanal/decision/DecisionAdapter\n*L\n163#1:308\n163#1:309,3\n172#1:312\n172#1:313,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/decision/DecisionAdapter$Companion;

.field public static final TAG:Ljava/lang/String; = "DecisionAdapter"


# instance fields
.field private entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ld3/a;",
            ">;"
        }
    .end annotation
.end field

.field private entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lpantanal/decision/PantaSceneListObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/decision/DecisionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/decision/DecisionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/decision/DecisionAdapter;->Companion:Lpantanal/decision/DecisionAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lpantanal/decision/DecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic access$convertToPantaSceneList(Lpantanal/decision/DecisionAdapter;ILjava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/util/List;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lpantanal/decision/DecisionAdapter;->convertToPantaSceneList(ILjava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$notifyToObservers(Lpantanal/decision/DecisionAdapter;ILjava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lpantanal/decision/DecisionAdapter;->notifyToObservers(ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$printOriginSceneList(Lpantanal/decision/DecisionAdapter;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/decision/DecisionAdapter;->printOriginSceneList(Ljava/util/List;)V

    return-void
.end method

.method private final convertToPantaSceneBean(ILcom/pantanal/server/content/recommendlist/SceneInfo;)Lpantanal/decision/PantaSceneInfo;
    .registers 24

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    move/from16 v3, p1

    invoke-static {v2, v3}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_29
    invoke-static {v1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    new-instance v0, Lpantanal/decision/PantaSceneInfo;

    move-object v3, v0

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getSceneId()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getCardSleeveType()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getCreateTime()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getUpdateTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getScore()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getShouldFocus()Z

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getExpectSceneCnt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getHomeFlag()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getSceneLevel()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getFocusTime()J

    move-result-wide v17

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getCombinationStrategy()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getForceGuaranteed()Z

    move-result v20

    invoke-direct/range {v3 .. v20}, Lpantanal/decision/PantaSceneInfo;-><init>(JILjava/util/List;JJFZIZIJIZ)V

    return-object v0
.end method

.method private final convertToPantaSceneList(ILjava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/SceneInfo;",
            ">;",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ")",
            "Ljava/util/List<",
            "Lpantanal/decision/PantaSceneInfo;",
            ">;"
        }
    .end annotation

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantanal/server/content/recommendlist/SceneInfo;

    invoke-direct {p0, p1, v0}, Lpantanal/decision/DecisionAdapter;->convertToPantaSceneBean(ILcom/pantanal/server/content/recommendlist/SceneInfo;)Lpantanal/decision/PantaSceneInfo;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    invoke-static {p3}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final notifyToObservers(ILjava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lpantanal/decision/PantaSceneInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez p1, :cond_10

    sget-object p1, Li4/a0;->a:Li4/a0;

    :cond_10
    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    const-string v3, "notifyToObservers begin,finally to entrance scene list size = "

    const-string v4, ",total observer count = "

    invoke-static {v3, v1, v4, v2}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "DecisionAdapter"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0, p2}, Lpantanal/decision/DecisionAdapter;->printPantaSceneList(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/decision/PantaSceneListObserver;

    invoke-interface {v0, p2}, Lpantanal/decision/PantaSceneListObserver;->onSceneListChanged(Ljava/util/List;)V

    goto :goto_37

    :cond_47
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p0

    const-string p1, "notifyToObservers done,total observer count = "

    invoke-static {p1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "DecisionAdapter"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final printOriginSceneList(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/SceneInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "printOriginSceneList scene count = "

    const-string v2, ",scene detail:\n"

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantanal/server/content/recommendlist/SceneInfo;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getSceneId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/SceneInfo;->getServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",service count = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",full data= "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_57
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p0, "sb.toString()"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "DecisionAdapter"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final printPantaSceneList(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/decision/PantaSceneInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "notifyToObservers begin,printPantaSceneList scene count = "

    const-string v2, ",scene detail:\n"

    invoke-static {v1, v0, v2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/decision/PantaSceneInfo;

    invoke-virtual {v0}, Lpantanal/decision/PantaSceneInfo;->getSceneID()J

    move-result-wide v1

    invoke-virtual {v0}, Lpantanal/decision/PantaSceneInfo;->getServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scene:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",service count = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",full data= "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_57
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p0, "sb.toString()"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "DecisionAdapter"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final queryAndNotify(II)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    sget-object v1, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v1, p2}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAndNotify,begin entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionAdapter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lpantanal/decision/DecisionAdapter;->queryRecommendSceneList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lpantanal/decision/DecisionAdapter;->notifyToObservers(ILjava/util/List;)V

    return-void
.end method

.method private final registerSceneObserverToStaticSdk(I)V
    .registers 15

    new-instance v0, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;

    invoke-direct {v0, p0, p1}, Lpantanal/decision/DecisionAdapter$registerSceneObserverToStaticSdk$staticObserver$1;-><init>(Lpantanal/decision/DecisionAdapter;I)V

    sget-object v1, Le3/a;->c:Le3/a$a;

    invoke-virtual {v1}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    const-string v1, "observer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lz2/d;->a:Lz2/d;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "registerScene entranceType:"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SceneDecisionCenter"

    invoke-static {v4, v3}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lz2/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lz2/d;->d()Lz2/e;

    move-result-object v3

    sget-object v4, Lz2/d;->h:Lz2/d$a;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v3, Lz2/e;->a:Lm7/j1;

    invoke-static {v1}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v5

    new-instance v8, Lz2/f;

    const/4 v1, 0x0

    invoke-direct {v8, v3, v4, v1}, Lz2/f;-><init>(Lz2/e;Landroid/database/ContentObserver;Ll4/d;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object v1

    sput-object v1, Lz2/e;->f:Lm7/s1;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lz2/d;->f(Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lpantanal/decision/DecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ly8/c;->a:Ly8/c;

    sget-object p0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {p0, p1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerSceneObserverToStaticSdk done,entrance="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "DecisionAdapter"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getEntranceToInnerObserver()Ljava/util/concurrent/ConcurrentHashMap;
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

    iget-object p0, p0, Lpantanal/decision/DecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final getEntranceToOuterObserver()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lpantanal/decision/PantaSceneListObserver;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final queryRecommendSceneList(II)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lpantanal/decision/PantaSceneInfo;",
            ">;"
        }
    .end annotation

    sget-object p2, Ly8/c;->a:Ly8/c;

    sget-object v11, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v11, p1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryRecommendSceneList begin,entrance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionAdapter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v0

    const/4 v1, 0x3

    check-cast v0, Le3/a;

    invoke-virtual {v0, p1, v1}, Le3/a;->d(II)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lpantanal/decision/DecisionAdapter;->convertToPantaSceneList(ILjava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v11, p1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryRecommendSceneList end,entrance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",originList size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",resultList size = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "DecisionAdapter"

    move-object v0, p2

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final registerSceneListObserver(IILpantanal/decision/PantaSceneListObserver;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "sceneListObserver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    sget-object v15, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v15, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registSceneListObserver begin,entrance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "DecisionAdapter"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v4, v0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v4, :cond_4f

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    move-object v14, v4

    invoke-virtual {v14, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lpantanal/decision/DecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-direct {v0, v1}, Lpantanal/decision/DecisionAdapter;->registerSceneObserverToStaticSdk(I)V

    move-object/from16 v16, v14

    goto :goto_94

    :cond_65
    invoke-virtual {v15, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerSceneListObserver,already register to staticSdk,entrance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",no more do it again."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v2, 0x0

    const-string v5, "DecisionAdapter"

    move-object v4, v3

    move-object/from16 v16, v14

    move-object v14, v2

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p2}, Lpantanal/decision/DecisionAdapter;->queryAndNotify(II)V

    :goto_94
    invoke-virtual {v15, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entrance="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " registerSceneListObserver done,total observer size = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DecisionAdapter"

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final setEntranceToInnerObserver(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ld3/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/decision/DecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final setEntranceToOuterObserver(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lpantanal/decision/PantaSceneListObserver;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public final unregisterAllSceneListObserverOfCurEntrance(II)V
    .registers 14

    sget-object v0, Ly8/c;->a:Ly8/c;

    sget-object p1, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {p1, p2}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterAllSceneListObserverOfCurEntrance begin,entrance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionAdapter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lpantanal/decision/DecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    :cond_41
    iget-object p0, p0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Le3/a;->c:Le3/a$a;

    invoke-virtual {p0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object p0

    check-cast p0, Le3/a;

    invoke-virtual {p0, p2}, Le3/a;->i(I)V

    return-void
.end method

.method public final unregisterSceneListObserver(IILpantanal/decision/PantaSceneListObserver;)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "sceneListObserver"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-eqz v3, :cond_22

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    :goto_23
    sget-object v15, Ly8/c;->a:Ly8/c;

    sget-object v14, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v14, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v4

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_37

    :cond_36
    const/4 v5, 0x0

    :goto_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unregisterSceneListObserver begin,entrance= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",remain observer count = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",removeResult = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v2, 0x0

    const-string v5, "DecisionAdapter"

    move-object v4, v15

    move-object/from16 p1, v15

    move-object v15, v14

    move-object v14, v2

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v3, :cond_76

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_74

    goto :goto_76

    :cond_74
    const/4 v2, 0x0

    goto :goto_77

    :cond_76
    :goto_76
    const/4 v2, 0x1

    :goto_77
    if-eqz v2, :cond_d0

    sget-object v2, Le3/a;->c:Le3/a$a;

    invoke-virtual {v2}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v2

    check-cast v2, Le3/a;

    invoke-virtual {v2, v1}, Le3/a;->i(I)V

    iget-object v2, v0, Lpantanal/decision/DecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lpantanal/decision/DecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v0

    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_a6

    :cond_a5
    const/4 v1, 0x0

    :goto_a6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterSceneListObserver to static sdk,entrance= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",total observer count = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DecisionAdapter"

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_ea

    :cond_d0
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    const-string v1, "unregisterSceneListObserver do nothing,remain observer count = "

    invoke-static {v1, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "DecisionAdapter"

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_ea
    return-void
.end method
