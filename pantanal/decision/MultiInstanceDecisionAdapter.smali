.class public final Lpantanal/decision/MultiInstanceDecisionAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/decision/MultiInstanceDecisionAdapter$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultiInstanceDecisionAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiInstanceDecisionAdapter.kt\npantanal/decision/MultiInstanceDecisionAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,315:1\n1864#2,3:316\n1855#2,2:319\n1549#2:321\n1620#2,3:322\n1549#2:325\n1620#2,3:326\n*S KotlinDebug\n*F\n+ 1 MultiInstanceDecisionAdapter.kt\npantanal/decision/MultiInstanceDecisionAdapter\n*L\n176#1:316,3\n185#1:319,2\n230#1:321\n230#1:322,3\n265#1:325\n265#1:326,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/decision/MultiInstanceDecisionAdapter$Companion;

.field public static final TAG:Ljava/lang/String; = "MultiInstanceDecisionAdapter"


# instance fields
.field private final entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/pantanal/server/content/recommendlist/ListObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lpantanal/decision/DecisionObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private final entranceType:I

.field private final mRecommendList$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/decision/MultiInstanceDecisionAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/decision/MultiInstanceDecisionAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->Companion:Lpantanal/decision/MultiInstanceDecisionAdapter$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p1, Lpantanal/decision/MultiInstanceDecisionAdapter$mRecommendList$2;->INSTANCE:Lpantanal/decision/MultiInstanceDecisionAdapter$mRecommendList$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->mRecommendList$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic a(Lpantanal/decision/MultiInstanceDecisionAdapter;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/decision/MultiInstanceDecisionAdapter;->registerMultiInstanceObserverToStaticSdk$lambda$0(Lpantanal/decision/MultiInstanceDecisionAdapter;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V

    return-void
.end method

.method public static final synthetic access$getEntranceType$p(Lpantanal/decision/MultiInstanceDecisionAdapter;)I
    .registers 1

    iget p0, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    return p0
.end method

.method private final addObserver(Ljava/util/concurrent/ConcurrentHashMap;ILpantanal/decision/DecisionObserver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lpantanal/decision/DecisionObserver;",
            ">;>;I",
            "Lpantanal/decision/DecisionObserver;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez p0, :cond_18

    new-instance p0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-virtual {p0, p3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result p0

    const-string p1, "addObserver, entranceType = "

    const-string p3, ", observer count:"

    invoke-static {p1, p2, p3, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "MultiInstanceDecisionAdapter"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getEntranceName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    iget p0, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-virtual {v0, p0}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->mRecommendList$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final notifyObserversByEntranceType()V
    .registers 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getEntranceName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v13, "notifyObserversByEntranceType"

    const-string v3, " begin, entranceType:"

    invoke-static {v13, v3, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "MultiInstanceDecisionAdapter"

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v6, v14

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v2, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    iget v3, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    sget-object v3, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    iget v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    if-eqz v2, :cond_40

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_41

    :cond_40
    move-object v6, v14

    :goto_41
    invoke-virtual {v3, v4, v5, v6}, Lpantanal/content/base/IServiceListCenter;->filterStaticServiceList(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;

    invoke-direct {v4, v3, v0}, Lpantanal/decision/MultiInstanceDecisionAdapter$notifyObserversByEntranceType$newListToEntrance$2;-><init>(Ljava/util/List;Lpantanal/decision/MultiInstanceDecisionAdapter;)V

    invoke-static {v4}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v2, :cond_d3

    invoke-static {v0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyObserversByEntranceType$lambda$1(Lh4/f;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v3

    :goto_5a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_bb

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_b7

    check-cast v6, Lpantanal/decision/ServiceInfo;

    invoke-static {v0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyObserversByEntranceType$lambda$1(Lh4/f;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " entranceType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", finally to entrance serviceInfo, index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", totalSize:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", info:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v15, Ly8/c;->a:Ly8/c;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "MultiInstanceDecisionAdapter"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v5, v7

    goto :goto_5a

    :cond_b7
    invoke-static {}, Li4/o;->k()V

    throw v14

    :cond_bb
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_bf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpantanal/decision/DecisionObserver;

    invoke-static {v0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyObserversByEntranceType$lambda$1(Lh4/f;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Lpantanal/decision/DecisionObserver;->onListChanged(Ljava/util/List;)V

    goto :goto_bf

    :cond_d3
    sget-object v14, Ly8/c;->a:Ly8/c;

    if-eqz v2, :cond_db

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v3

    :cond_db
    invoke-static {v0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyObserversByEntranceType$lambda$1(Lh4/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " done, entranceType:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",total observer count = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total service size = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "MultiInstanceDecisionAdapter"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final notifyObserversByEntranceType$lambda$1(Lh4/f;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/f<",
            "+",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;>;)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final notifyToObservers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpantanal/decision/MultiInstanceDecisionAdapter;->updateRecommendList(Ljava/util/List;)V

    invoke-direct {p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyObserversByEntranceType()V

    return-void
.end method

.method private final queryAndNotify(I)V
    .registers 15

    sget-object v11, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    const-string v12, "queryAndNotify"

    const-string v1, ",begin entrance = "

    invoke-static {v12, v1, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "MultiInstanceDecisionAdapter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Lpantanal/decision/MultiInstanceDecisionAdapter;->queryMultiInstanceRecListToStaticSdk(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "MultiInstanceDecisionAdapter"

    const-string v2, "queryAndNotify, list from ums is empty!"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_65

    :cond_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", received data from ums,size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",begin notify observers!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    const-string v1, "MultiInstanceDecisionAdapter"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_65
    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget v1, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-virtual {v0, v1}, Lz8/f;->d(I)Lz8/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lz8/e;->m(I)V

    invoke-direct {p0, p1}, Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyToObservers(Ljava/util/List;)V

    return-void
.end method

.method private final queryMultiInstanceRecListToStaticSdk(I)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    iget v3, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ly0/b;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    check-cast v0, Le3/a;

    invoke-virtual {v0, v2, p1, v1}, Le3/a;->b(Ljava/util/Set;IZ)Ljava/util/List;

    move-result-object v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget p0, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    const-string v3, "queryMultiInstanceRecListToStaticSdk from static sdk end,recomdType = "

    const-string v4, ",list size = "

    const-string v5, ",entranceType="

    invoke-static {v3, p1, v4, v2, v5}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "MultiInstanceDecisionAdapter"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method private final registerMultiInstanceObserverToStaticSdk(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getEntranceName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v3}, Lz8/f$a;->a()Lz8/f;

    move-result-object v3

    iget v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-virtual {v3, v4}, Lz8/f;->d(I)Lz8/e;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lz8/e;->k(I)Lz8/e;

    sget-object v3, Ly8/c;->a:Ly8/c;

    iget v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "registerMultiInstanceObserverToStaticSdk"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", recomdType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",entrance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "MultiInstanceDecisionAdapter"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf8

    const/4 v4, 0x0

    move-object v5, v3

    move-object/from16 v16, v3

    move-object v3, v15

    move-object v15, v4

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v4, Lpantanal/decision/c;

    invoke-direct {v4, v0}, Lpantanal/decision/c;-><init>(Lpantanal/decision/MultiInstanceDecisionAdapter;)V

    sget-object v5, Le3/a;->c:Le3/a$a;

    invoke-virtual {v5}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    move-result-object v5

    iget v6, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    check-cast v5, Le3/a;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v1, v7, v4}, Le3/a;->h(IIZLcom/pantanal/server/content/recommendlist/ListObserver;)V

    iget-object v1, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    iget v0, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " done,entrance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "MultiInstanceDecisionAdapter"

    const/4 v8, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    move-object/from16 v5, v16

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private static final registerMultiInstanceObserverToStaticSdk$lambda$0(Lpantanal/decision/MultiInstanceDecisionAdapter;Ljava/util/List;Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerMultiInstanceObserverToStaticSdk, receive new list from staic sdk,list size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",parentCtx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "MultiInstanceDecisionAdapter"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xf8

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p2, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p2}, Lz8/f$a;->a()Lz8/f;

    move-result-object p2

    iget v0, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-virtual {p2, v0}, Lz8/f;->d(I)Lz8/e;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lz8/e;->m(I)V

    invoke-direct {p0, p1}, Lpantanal/decision/MultiInstanceDecisionAdapter;->notifyToObservers(Ljava/util/List;)V

    return-void
.end method

.method private final updateRecommendList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-direct {p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final getCacheMultiInstanceRecommendList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    invoke-direct {p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    iget v2, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-virtual {v0, v1, v2}, Lpantanal/content/base/IServiceListCenter;->getFilterList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    iget v3, p0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v2, v3}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_31
    return-object v1
.end method

.method public final getCurMultiInstanceRecommendList(I)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getEntranceName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v13, "getCurMultiInstanceRecommendList"

    const-string v3, " begin, entrance = "

    invoke-static {v13, v3, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "MultiInstanceDecisionAdapter"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct/range {p0 .. p1}, Lpantanal/decision/MultiInstanceDecisionAdapter;->queryMultiInstanceRecListToStaticSdk(I)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    iget v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-virtual {v3, v2, v4}, Lpantanal/content/base/IServiceListCenter;->getFilterList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    iget v6, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v5, v6}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_4f
    sget-object v14, Ly8/c;->a:Ly8/c;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " end,entrance = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",originList size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",resultList size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "MultiInstanceDecisionAdapter"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v4
.end method

.method public final registerMultiInstanceDecisionListCallBack(Lpantanal/decision/DecisionObserver;I)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "observer"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getEntranceName()Ljava/lang/String;

    move-result-object v3

    sget-object v15, Ly8/c;->a:Ly8/c;

    const-string v14, "registerMultiInstanceDecisionListCallBack"

    const-string v4, " begin,entrance="

    invoke-static {v14, v4, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "MultiInstanceDecisionAdapter"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/16 v16, 0x0

    move-object v4, v15

    move-object/from16 v17, v15

    move-object v15, v14

    move-object/from16 v14, v16

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    iget v5, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-direct {v0, v4, v5, v1}, Lpantanal/decision/MultiInstanceDecisionAdapter;->addObserver(Ljava/util/concurrent/ConcurrentHashMap;ILpantanal/decision/DecisionObserver;)V

    sget-object v1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v1}, Lz8/f$a;->a()Lz8/f;

    move-result-object v1

    iget v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-virtual {v1, v4}, Lz8/f;->d(I)Lz8/e;

    move-result-object v1

    iget-object v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v1, v4, v2}, Lz8/e;->n(II)Lz8/e;

    iget-object v1, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v0, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    invoke-direct {v0, v2}, Lpantanal/decision/MultiInstanceDecisionAdapter;->registerMultiInstanceObserverToStaticSdk(I)V

    goto :goto_77

    :cond_5c
    invoke-direct {v0, v2}, Lpantanal/decision/MultiInstanceDecisionAdapter;->queryAndNotify(I)V

    const-string v0, ",already register to staticSdk,entrance="

    const-string v1, ",no more do it again."

    invoke-static {v15, v0, v3, v1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "MultiInstanceDecisionAdapter"

    move-object/from16 v4, v17

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_77
    const-string v0, " done,entrance="

    invoke-static {v15, v0, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "MultiInstanceDecisionAdapter"

    move-object/from16 v4, v17

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public final unregisterMultiInstanceListCallback(Lpantanal/decision/DecisionObserver;I)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "observer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    iget v4, v1, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v4, 0x0

    if-eqz v3, :cond_25

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_26

    :cond_25
    move-object v0, v4

    :goto_26
    sget-object v16, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getEntranceName()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_38

    :cond_37
    move-object v6, v4

    :goto_38
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unregisterMultiInstanceListCallback begin,entrance= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",remain observer count = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ",removeResult = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "MultiInstanceDecisionAdapter"

    move-object/from16 v5, v16

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v3, :cond_74

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_74

    :cond_72
    const/4 v0, 0x0

    goto :goto_75

    :cond_74
    :goto_74
    const/4 v0, 0x1

    :goto_75
    if-eqz v0, :cond_17f

    sget-object v0, Le3/a;->c:Le3/a$a;

    invoke-virtual {v0}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    iget v0, v1, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "register. type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StaticSdk"

    invoke-static {v6, v5}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    if-ne v2, v5, :cond_a3

    sget-object v0, La3/a;->b:La3/a;

    invoke-virtual {v0}, La3/a;->c()V

    goto/16 :goto_131

    :cond_a3
    sget-object v2, Lz2/a;->b:Lz2/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entrance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " call unregister(),registered entrance:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "DecisionCenter"

    invoke-static {v7, v5}, Lf3/a;->g(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_ce
    invoke-virtual {v2}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fb

    invoke-virtual {v2}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lz2/a;->e()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_112

    invoke-virtual {v2}, Lz2/a;->b()Lz2/c;

    move-result-object v5

    sget-object v6, Lz2/a;->h:Lz2/a$b;

    invoke-virtual {v5, v6}, Lz2/c;->e(Landroid/database/ContentObserver;)V

    goto :goto_112

    :cond_fb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not register..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_112
    :goto_112
    invoke-virtual {v2}, Lz2/a;->d()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;
    :try_end_120
    .catchall {:try_start_ce .. :try_end_120} :catchall_121

    goto :goto_126

    :catchall_121
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_126
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_131

    const-string v0, "unregister failed..."

    invoke-static {v7, v0}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_131
    :goto_131
    iget-object v0, v1, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToInnerObserver:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v1, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceToOuterObserver:Ljava/util/concurrent/ConcurrentHashMap;

    iget v2, v1, Lpantanal/decision/MultiInstanceDecisionAdapter;->entranceType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/decision/MultiInstanceDecisionAdapter;->getEntranceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_157

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterMultiInstanceListCallback to static sdk,entrance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",total observer count = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "MultiInstanceDecisionAdapter"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_199

    :cond_17f
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    move-result v0

    const-string v1, "unregisterMultiInstanceListCallback do nothing,remain observer count = "

    invoke-static {v1, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "MultiInstanceDecisionAdapter"

    move-object/from16 v5, v16

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_199
    return-void
.end method
