.class public abstract Lpantanal/content/base/IServiceListCenter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/j0;
.implements Lpantanal/foundation/userunlock/UserUnlockManager$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/content/base/IServiceListCenter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm7/j0;",
        "Lpantanal/foundation/userunlock/UserUnlockManager$a;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIServiceListCenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IServiceListCenter.kt\npantanal/content/base/IServiceListCenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,478:1\n1855#2:479\n1549#2:480\n1620#2,3:481\n1856#2:484\n1855#2,2:485\n1855#2,2:487\n1855#2:489\n1855#2,2:490\n1856#2:492\n1855#2,2:493\n1864#2,3:495\n766#2:498\n857#2,2:499\n1855#2,2:502\n1#3:501\n*S KotlinDebug\n*F\n+ 1 IServiceListCenter.kt\npantanal/content/base/IServiceListCenter\n*L\n140#1:479\n155#1:480\n155#1:481,3\n140#1:484\n251#1:485,2\n318#1:487,2\n331#1:489\n335#1:490,2\n331#1:492\n349#1:493,2\n375#1:495,3\n436#1:498\n436#1:499,2\n470#1:502,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/content/base/IServiceListCenter$Companion;

.field public static final NODE_NAME:Ljava/lang/String; = "SeedlingSdk"


# instance fields
.field private final synthetic $$delegate_0:Lm7/j0;

.field private final mObserver:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+TT;>;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserversMap$delegate:Lh4/f;

.field private final mRecommendList$delegate:Lh4/f;

.field private final serviceDao:Lpantanal/content/base/IServiceDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/content/base/IServiceDao<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/content/base/IServiceListCenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/content/base/IServiceListCenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/content/base/IServiceListCenter;->Companion:Lpantanal/content/base/IServiceListCenter$Companion;

    return-void
.end method

.method public constructor <init>(Lpantanal/content/base/IServiceDao;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/content/base/IServiceDao<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "serviceDao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter;->serviceDao:Lpantanal/content/base/IServiceDao;

    invoke-static {}, Lm7/k0;->b()Lm7/j0;

    move-result-object p1

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter;->$$delegate_0:Lm7/j0;

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Decision register user unlock"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p1, Lpantanal/foundation/userunlock/UserUnlockManager;->a:Lpantanal/foundation/userunlock/UserUnlockManager;

    const-string v0, "ob"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lpantanal/foundation/userunlock/UserUnlockManager;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lpantanal/content/base/IServiceListCenter$mObserver$1;

    invoke-direct {p1, p0}, Lpantanal/content/base/IServiceListCenter$mObserver$1;-><init>(Lpantanal/content/base/IServiceListCenter;)V

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter;->mObserver:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lpantanal/content/base/IServiceListCenter$mRecommendList$2;->INSTANCE:Lpantanal/content/base/IServiceListCenter$mRecommendList$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter;->mRecommendList$delegate:Lh4/f;

    sget-object p1, Lpantanal/content/base/IServiceListCenter$mObserversMap$2;->INSTANCE:Lpantanal/content/base/IServiceListCenter$mObserversMap$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter;->mObserversMap$delegate:Lh4/f;

    return-void
.end method

.method public static final synthetic access$getRegisteredEntrance(Lpantanal/content/base/IServiceListCenter;)Ljava/util/Set;
    .registers 1

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getRegisteredEntrance()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$notifyAllObservers(Lpantanal/content/base/IServiceListCenter;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->notifyAllObservers()V

    return-void
.end method

.method public static final synthetic access$notifyObserver(Lpantanal/content/base/IServiceListCenter;Ljava/lang/Integer;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/base/IServiceListCenter;->notifyObserver(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$setUTraceIntent(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lpantanal/content/base/IServiceListCenter;->setUTraceIntent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$updateRecommendList(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/content/base/IServiceListCenter;->updateRecommendList(Ljava/util/List;)V

    return-void
.end method

.method private final addObserver(Ljava/util/Map;ILpantanal/content/ObserverWrapper;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lpantanal/content/ObserverWrapper<",
            "TT;>;>;>;I",
            "Lpantanal/content/ObserverWrapper<",
            "TT;>;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lpantanal/content/ObserverWrapper;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-static {v1}, Li4/o;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2b

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    :goto_2b
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p0

    const-string p1, "addObserver, entranceType = "

    const-string p3, ", observer count:"

    invoke-static {p1, p2, p3, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final getMObserversMap()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lpantanal/content/ObserverWrapper<",
            "TT;>;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter;->mObserversMap$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private final getRegisteredEntrance()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3b

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v5

    if-ne v3, v5, :cond_3b

    move v4, v5

    :cond_3b
    if-eqz v4, :cond_11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_45
    return-object v0
.end method

.method private final notifyAllObservers()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "notifyAllObservers, receive changed from static sdk"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sget-object v3, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v3, v2}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v3

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v5

    if-eqz v4, :cond_58

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_59

    :cond_58
    const/4 v4, 0x0

    :goto_59
    invoke-virtual {p0, v2, v5, v4}, Lpantanal/content/base/IServiceListCenter;->filterStaticServiceList(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpantanal/content/base/IServiceListCenter;->getServiceIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    :cond_69
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lh4/j;

    const-string v2, "entranceReceiveServiceIdList"

    invoke-direct {v1, v2, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    const-string v2, "1001"

    invoke-direct {p0, v1, v2, v0}, Lpantanal/content/base/IServiceListCenter;->setUTraceIntent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lpantanal/content/base/IServiceListCenter;->getFilterList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_8d

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpantanal/content/ObserverWrapper;

    invoke-interface {v3, v2}, Lpantanal/content/ObserverWrapper;->onListChanged(Ljava/util/List;)V

    goto :goto_b9

    :cond_c9
    return-void
.end method

.method private final notifyObserver(Ljava/lang/Integer;)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to notifyObserver entranceType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf8

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p1, :cond_37

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lz8/f;->d(I)Lz8/e;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lz8/e;->m(I)V

    :cond_37
    if-nez p1, :cond_3d

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->notifyAllObservers()V

    goto :goto_44

    :cond_3d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lpantanal/content/base/IServiceListCenter;->notifyObserversByEntranceType(I)V

    :goto_44
    return-void
.end method

.method public static synthetic notifyObserver$default(Lpantanal/content/base/IServiceListCenter;Ljava/lang/Integer;ILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-direct {p0, p1}, Lpantanal/content/base/IServiceListCenter;->notifyObserver(Ljava/lang/Integer;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifyObserver"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final notifyObserversByEntranceType(I)V
    .registers 14

    sget-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v0, p1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyObserversByEntranceType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " entrance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " begin"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_51

    :cond_50
    const/4 v2, 0x0

    :goto_51
    invoke-virtual {p0, p1, v1, v2}, Lpantanal/content/base/IServiceListCenter;->filterStaticServiceList(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p0

    if-eqz v0, :cond_6b

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/content/ObserverWrapper;

    invoke-interface {v0, p0}, Lpantanal/content/ObserverWrapper;->onListChanged(Ljava/util/List;)V

    goto :goto_5b

    :cond_6b
    return-void
.end method

.method private final observerCount(Ljava/util/Map;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lpantanal/content/ObserverWrapper<",
            "TT;>;>;>;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    goto :goto_9

    :cond_1b
    return p1
.end method

.method public static synthetic queryAndNotify$default(Lpantanal/content/base/IServiceListCenter;Ljava/lang/Integer;IILjava/lang/Object;)V
    .registers 5

    if-nez p4, :cond_10

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_7

    const/4 p1, 0x0

    :cond_7
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    const/4 p2, 0x3

    :cond_c
    invoke-virtual {p0, p1, p2}, Lpantanal/content/base/IServiceListCenter;->queryAndNotify(Ljava/lang/Integer;I)V

    return-void

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: queryAndNotify"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic register$default(Lpantanal/content/base/IServiceListCenter;ILpantanal/content/ObserverWrapper;IILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x3

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lpantanal/content/base/IServiceListCenter;->register(ILpantanal/content/ObserverWrapper;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: register"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setUTraceIntent(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    const/4 v4, 0x0

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    goto :goto_1a

    :cond_19
    move-object v3, v4

    :goto_1a
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v5

    const-string v6, "setUTraceIntent,serviceId:"

    if-eqz v5, :cond_d3

    sget-object v18, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v7

    const-string v9, ",UTrace.start spanName:"

    const-string v10, ",PantanalCardSdk get intent_trace from static manager sdk is "

    invoke-static {v6, v7, v9, v0, v10}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    move-object/from16 v7, v18

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v7, 0x2

    invoke-static {v5, v4, v0, v7, v4}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->setUtraceContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    const/4 v8, 0x0

    if-nez p3, :cond_c8

    const/4 v9, 0x4

    new-array v9, v9, [Lh4/j;

    invoke-virtual/range {v18 .. v18}, Ly8/c;->c()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lh4/j;

    const-string v12, "sdkVersion"

    invoke-direct {v11, v12, v10}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v8

    const/4 v10, 0x1

    invoke-virtual/range {v18 .. v18}, Ly8/c;->b()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lh4/j;

    const-string v13, "pluginVersion"

    invoke-direct {v12, v13, v11}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v9, v10

    check-cast v2, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-static {v2}, Lpantanal/content/ServiceInfoExtKt;->infoMsg(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lh4/j;

    const-string v11, "serviceInfoList"

    invoke-direct {v10, v11, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v7

    const/4 v2, 0x3

    invoke-direct/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v7, v11}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v11

    sget-object v12, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v12, v11}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_b6
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Lh4/j;

    const-string v11, "observeEntrance"

    invoke-direct {v10, v11, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v9, v2

    invoke-static {v9}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v2

    goto :goto_ca

    :cond_c8
    move-object/from16 v2, p3

    :goto_ca
    invoke-static {v5, v2}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    const/4 v2, 0x6

    invoke-static {v5, v4, v8, v2, v4}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    sget-object v4, Lh4/z;->a:Lh4/z;

    :cond_d3
    if-nez v4, :cond_6

    sget-object v7, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, ",PantanalCardSdk get intent_trace from static manager sdk is null,context is wrong!"

    invoke-static {v6, v2, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_f4
    return-void
.end method

.method public static synthetic unregister$default(Lpantanal/content/base/IServiceListCenter;ILpantanal/content/ObserverWrapper;IILjava/lang/Object;)V
    .registers 6

    if-nez p5, :cond_b

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x3

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lpantanal/content/base/IServiceListCenter;->unregister(ILpantanal/content/ObserverWrapper;I)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: unregister"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final updateRecommendList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final filterStaticServiceList(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/Integer;)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TT;>;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "recommendList"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v4, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v4

    invoke-virtual {v0, v2}, Lpantanal/content/base/IServiceListCenter;->getServiceIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v2, v1}, Lpantanal/content/base/IServiceListCenter;->getFilterList(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lpantanal/content/base/IServiceListCenter;->getServiceIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v5, v7}, Li4/v;->c0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "filterStaticServiceList"

    if-eqz v11, :cond_a3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v13, v10, 0x1

    if-ltz v10, :cond_9e

    instance-of v14, v11, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    if-eqz v14, :cond_49

    move-object v15, v11

    check-cast v15, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    goto :goto_4a

    :cond_49
    const/4 v15, 0x0

    :goto_4a
    if-eqz v15, :cond_52

    invoke-static {v15}, Lpantanal/content/ServiceInfoExtKt;->getCardSizeListDesc(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_54

    :cond_52
    const-string v15, ""

    :cond_54
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_5c

    check-cast v11, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    goto :goto_5d

    :cond_5c
    const/4 v11, 0x0

    :goto_5d
    if-eqz v11, :cond_64

    invoke-static {v11}, Lpantanal/content/ServiceInfoExtKt;->infoMsg(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/lang/String;

    move-result-object v11

    goto :goto_65

    :cond_64
    const/4 v11, 0x0

    :goto_65
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " entrance:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", receive from static sdk after filter, index:"

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", Info:"

    invoke-static {v14, v10, v11}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v15, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move v10, v13

    goto :goto_31

    :cond_9e
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_a3
    sget-object v9, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v9}, Lz8/f$a;->a()Lz8/f;

    move-result-object v10

    invoke-virtual {v10, v1}, Lz8/f;->d(I)Lz8/e;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "serviceInfoStr.toString()"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v10

    if-eqz v3, :cond_c1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_c2

    :cond_c1
    const/4 v11, 0x0

    :goto_c2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "serviceIdsAfterFilter"

    invoke-static {v8, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "serviceIdsSetByFilter"

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v13, v1, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_dc

    const-string v13, "ums_notity"

    invoke-virtual {v1, v13}, Lz8/e;->l(Ljava/lang/String;)V

    :cond_dc
    const/16 v13, 0x28

    invoke-virtual {v1, v13}, Lz8/e;->k(I)Lz8/e;

    iget-object v13, v1, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v13, :cond_f2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ly8/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "filtered_services"

    invoke-interface {v13, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f2
    iget-object v10, v1, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v10, :cond_fb

    const-string v13, "serviceIds"

    invoke-interface {v10, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_fb
    iget-object v8, v1, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v8, :cond_108

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "callback_size"

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_108
    invoke-virtual {v9}, Lz8/f$a;->a()Lz8/f;

    move-result-object v8

    iget-object v8, v8, Lz8/f;->b:Landroid/content/Context;

    if-eqz v8, :cond_120

    invoke-virtual {v1}, Lz8/a;->e()V

    const-string v9, "pantanal_service_decision_update"

    invoke-virtual {v1, v8, v9}, Lz8/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v8, v1, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {v1}, Lz8/a;->f()V

    :cond_120
    if-eqz v3, :cond_185

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Number;->intValue()I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " observers count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", entrance:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", after filter finally to entrance list size = "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", serviceIds:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", serviceIdsBeforeFilter size:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filtered serviceIds:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v10, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_185
    return-object v2
.end method

.method public getCoroutineContext()Ll4/f;
    .registers 1

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter;->$$delegate_0:Lm7/j0;

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p0

    return-object p0
.end method

.method public final getCurListFromCache()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getFilterList(Ljava/util/List;I)Ljava/util/List;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "originalList"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v2, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lpantanal/content/base/IServiceListCenter;->isSupportEntrance(Ljava/lang/Object;I)Z

    move-result v6

    sget-object v7, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v7, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lpantanal/content/base/IServiceListCenter;->isContainValidSize(Ljava/lang/Object;Lpantanal/app/bean/Entrance;)Z

    move-result v7

    if-eqz v6, :cond_38

    if-eqz v7, :cond_38

    const/4 v8, 0x1

    goto :goto_39

    :cond_38
    const/4 v8, 0x0

    :goto_39
    if-nez v8, :cond_89

    sget-object v9, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v10

    instance-of v11, v5, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    const/4 v12, 0x0

    if-eqz v11, :cond_4a

    move-object v11, v5

    check-cast v11, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    goto :goto_4b

    :cond_4a
    move-object v11, v12

    :goto_4b
    if-eqz v11, :cond_51

    invoke-static {v11}, Lpantanal/content/ServiceInfoExtKt;->infoMsg(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/lang/String;

    move-result-object v12

    :cond_51
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getFilterList, entrance:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " isSupported:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isContainValidSize:"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " info:"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    invoke-static/range {v9 .. v19}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_89
    if-eqz v8, :cond_1a

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_8f
    invoke-static {v4}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method public final getMRecommendList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter;->mRecommendList$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final getServiceDao()Lpantanal/content/base/IServiceDao;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lpantanal/content/base/IServiceDao<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter;->serviceDao:Lpantanal/content/base/IServiceDao;

    return-object p0
.end method

.method public abstract getServiceIds(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isContainValidSize(Ljava/lang/Object;Lpantanal/app/bean/Entrance;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lpantanal/app/bean/Entrance;",
            ")Z"
        }
    .end annotation

    const-string p0, "entrance"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isSupportEntrance(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method

.method public onUserUnlock()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user unlock, queryAndNotify"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getRegisteredEntrance()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v2, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v2}, Lz8/f$a;->a()Lz8/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lz8/f;->d(I)Lz8/e;

    move-result-object v1

    const-string v2, "unlock"

    invoke-virtual {v1, v2}, Lz8/e;->l(Ljava/lang/String;)V

    goto :goto_1c

    :cond_3c
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lpantanal/content/base/IServiceListCenter;->queryAndNotify$default(Lpantanal/content/base/IServiceListCenter;Ljava/lang/Integer;IILjava/lang/Object;)V

    return-void
.end method

.method public final queryAndNotify(Ljava/lang/Integer;I)V
    .registers 11

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v1}, Lz8/f$a;->a()Lz8/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lz8/f;->d(I)Lz8/e;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lz8/e;->k(I)Lz8/e;

    invoke-virtual {v0}, Lz8/a;->i()V

    :cond_18
    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->queryInfo()Lm7/f0;

    move-result-object v3

    new-instance v5, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p2, p1, v0}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;-><init>(Lpantanal/content/base/IServiceListCenter;ILjava/lang/Integer;Ll4/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public final register(ILpantanal/content/ObserverWrapper;I)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lpantanal/content/ObserverWrapper<",
            "TT;>;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "observer"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v4}, Lpantanal/content/base/IServiceListCenter;->observerCount(Ljava/util/Map;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_20

    iget-object v4, v0, Lpantanal/content/base/IServiceListCenter;->serviceDao:Lpantanal/content/base/IServiceDao;

    iget-object v5, v0, Lpantanal/content/base/IServiceListCenter;->mObserver:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v4, v1, v5, v3}, Lpantanal/content/base/IServiceDao;->registerObserver(ILkotlin/jvm/functions/Function1;I)V

    goto :goto_43

    :cond_20
    sget-object v6, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v4}, Lpantanal/content/base/IServiceListCenter;->observerCount(Ljava/util/Map;)I

    move-result v4

    const-string v5, "observer cnt = "

    const-string v8, " >=1,already registered!"

    invoke-static {v5, v4, v8}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_43
    invoke-direct/range {p0 .. p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v4, v1, v2}, Lpantanal/content/base/IServiceListCenter;->addObserver(Ljava/util/Map;ILpantanal/content/ObserverWrapper;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lpantanal/content/base/IServiceListCenter;->queryAndNotify(Ljava/lang/Integer;I)V

    return-void
.end method

.method public final unregister(ILpantanal/content/ObserverWrapper;I)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lpantanal/content/ObserverWrapper<",
            "TT;>;I)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_18

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_18
    sget-object p2, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p2}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz8/f;->d(I)Lz8/e;

    move-result-object p1

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x33

    invoke-virtual {p1, v1}, Lz8/e;->k(I)Lz8/e;

    iget-object v1, p1, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_3c

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "recomd_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3c
    iget-object v1, p1, Lz8/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_49

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "observerMapSize"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    invoke-virtual {p2}, Lz8/f$a;->a()Lz8/f;

    move-result-object p2

    iget-object p2, p2, Lz8/f;->b:Landroid/content/Context;

    if-eqz p2, :cond_61

    invoke-virtual {p1}, Lz8/a;->e()V

    const-string v0, "pantanal_service_decision_update"

    invoke-virtual {p1, p2, v0}, Lz8/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p2, p1, Lz8/a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p1}, Lz8/a;->f()V

    :cond_61
    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lpantanal/content/base/IServiceListCenter;->observerCount(Ljava/util/Map;)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_74

    iget-object p1, p0, Lpantanal/content/base/IServiceListCenter;->serviceDao:Lpantanal/content/base/IServiceDao;

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter;->mObserver:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, p0, p3}, Lpantanal/content/base/IServiceDao;->unregisterObserver(Lkotlin/jvm/functions/Function1;I)V

    goto :goto_96

    :cond_74
    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lpantanal/content/base/IServiceListCenter;->observerCount(Ljava/util/Map;)I

    move-result p0

    const-string p1, "ServiceDecision unregister,remain observer cnt = "

    const-string p2, " >= 1,do noting!"

    invoke-static {p1, p0, p2}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_96
    return-void
.end method

.method public final unregisterByEntrance(I)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregisterByEntrance entrance = "

    const-string v3, "!"

    invoke-static {v2, p1, v3}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_2d

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_2d
    invoke-direct {p0}, Lpantanal/content/base/IServiceListCenter;->getMObserversMap()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lpantanal/content/base/IServiceListCenter;->observerCount(Ljava/util/Map;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_42

    iget-object p1, p0, Lpantanal/content/base/IServiceListCenter;->serviceDao:Lpantanal/content/base/IServiceDao;

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter;->mObserver:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p0, v0, v1, v2}, Lpantanal/content/base/IServiceDao;->unregisterObserver$default(Lpantanal/content/base/IServiceDao;Lkotlin/jvm/functions/Function1;IILjava/lang/Object;)V

    :cond_42
    return-void
.end method
