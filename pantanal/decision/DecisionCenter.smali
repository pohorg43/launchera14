.class public final Lpantanal/decision/DecisionCenter;
.super Lpantanal/content/base/IServiceListCenter;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpantanal/content/base/IServiceListCenter<",
        "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDecisionCenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DecisionCenter.kt\npantanal/decision/DecisionCenter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,264:1\n1549#2:265\n1620#2,3:266\n1549#2:269\n1620#2,3:270\n1549#2:273\n1620#2,3:274\n1549#2:277\n1620#2,3:278\n1238#2,4:283\n1549#2:287\n1620#2,3:288\n1864#2,3:291\n453#3:281\n403#3:282\n*S KotlinDebug\n*F\n+ 1 DecisionCenter.kt\npantanal/decision/DecisionCenter\n*L\n90#1:265\n90#1:266,3\n98#1:269\n98#1:270,3\n108#1:273\n108#1:274,3\n142#1:277\n142#1:278,3\n212#1:283,4\n52#1:287\n52#1:288,3\n53#1:291,3\n212#1:281\n212#1:282\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/decision/DecisionCenter;

.field private static final TAG:Ljava/lang/String; = "DecisionCenter"

.field private static final observerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lpantanal/decision/DecisionObserver;",
            "Lpantanal/content/ObserverWrapper<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/decision/DecisionCenter;

    invoke-direct {v0}, Lpantanal/decision/DecisionCenter;-><init>()V

    sput-object v0, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lpantanal/decision/DecisionCenter;->observerMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    new-instance v0, Lpantanal/decision/DecisionDao;

    invoke-direct {v0}, Lpantanal/decision/DecisionDao;-><init>()V

    invoke-direct {p0, v0}, Lpantanal/content/base/IServiceListCenter;-><init>(Lpantanal/content/base/IServiceDao;)V

    return-void
.end method

.method public static synthetic a(Lpantanal/decision/DecisionObserver;ILjava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/decision/DecisionCenter;->register$lambda$2(Lpantanal/decision/DecisionObserver;ILjava/util/List;)V

    return-void
.end method

.method private static final register$lambda$2(Lpantanal/decision/DecisionObserver;ILjava/util/List;)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$observer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-static {v4, v1}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    if-ltz v2, :cond_95

    check-cast v5, Lpantanal/decision/ServiceInfo;

    sget-object v7, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v7, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "entranceType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", finally to entrance serviceInfo, index:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalSize:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info:"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v10, Ly8/c;->a:Ly8/c;

    sget-object v2, Lpantanal/decision/DecisionCenter;->INSTANCE:Lpantanal/decision/DecisionCenter;

    invoke-virtual {v2}, Lpantanal/decision/DecisionCenter;->getLogTag()Ljava/lang/String;

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

    move v2, v6

    goto :goto_38

    :cond_95
    invoke-static {}, Li4/o;->k()V

    const/4 v0, 0x0

    throw v0

    :cond_9a
    invoke-interface {v0, v3}, Lpantanal/decision/DecisionObserver;->onListChanged(Ljava/util/List;)V

    return-void
.end method

.method public static final toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-virtual {v0, p1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpantanal/app/bean/Entrance;->getSupportCardSizesFromService(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Ljava/util/List;I)Lpantanal/decision/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method private static final toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Ljava/util/List;I)Lpantanal/decision/ServiceInfo;
    .registers 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lpantanal/decision/ServiceInfo;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toDecisionServiceInfo, serviceId:"

    invoke-static {v1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    sget-object v13, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",uTraceIntentContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "DecisionCenter"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v13

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getExtras()Landroid/util/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_3e

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    :cond_3e
    move-object v14, v2

    const-string v2, "uTraceIntentContext"

    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    :try_start_45
    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSeedlingCardOptions()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_148

    move/from16 v3, p2

    invoke-static {v0, v3}, Lcom/oplus/seedling/sdk/utils/DataUtils;->parseOptions(Ljava/lang/String;I)Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;

    move-result-object v15
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_14a

    if-eqz v15, :cond_59

    :try_start_53
    invoke-virtual {v15}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getPageId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5b

    :cond_59
    const-string v0, ""

    :cond_5b
    const-string v2, "pageId"

    invoke-interface {v14, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "DecisionCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",pageId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",extras after put pageId"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v13

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSeedlingType()I

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_120

    const/4 v0, 0x0

    if-eqz v15, :cond_98

    invoke-virtual {v15}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->getRemindLevel()I

    move-result v2

    move v11, v2

    goto :goto_99

    :cond_98
    move v11, v0

    :goto_99
    const-string v3, "DecisionCenter"

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getCloudRemindSwitch()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",remindLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",cloudRemindSwitch:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    move-object v2, v13

    move/from16 v18, v11

    move/from16 v11, v16

    move/from16 v16, v12

    move-object/from16 v12, v17

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getCloudRemindSwitch()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_db

    move/from16 v12, v16

    goto :goto_dc

    :cond_db
    move v12, v0

    :goto_dc
    const-string v3, "DecisionCenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",isSupportStrongRemind = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/16 v16, 0x0

    move-object v2, v13

    move/from16 v17, v12

    move-object/from16 v12, v16

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v17, :cond_140

    if-eqz v18, :cond_140

    const-string v3, "DecisionCenter"

    const-string v4, "remindLevel after handle = 0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v13

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-nez v15, :cond_11c

    goto :goto_140

    :cond_11c
    invoke-virtual {v15, v0}, Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;->setRemindLevel(I)V

    goto :goto_140

    :cond_120
    const-string v3, "DecisionCenter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",seedlingType is not live"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v13

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_140
    :goto_140
    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_142
    .catchall {:try_start_53 .. :try_end_142} :catchall_145

    move-object v0, v2

    move-object v2, v15

    goto :goto_14f

    :catchall_145
    move-exception v0

    move-object v2, v15

    goto :goto_14b

    :cond_148
    move-object v0, v2

    goto :goto_14f

    :catchall_14a
    move-exception v0

    :goto_14b
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_14f
    move-object/from16 v38, v2

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_171

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, ",  seedlingCardOptions field error "

    invoke-static {v1, v3, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "DecisionCenter"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_171
    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardConfig()Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Li4/j0;->b(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-class v5, Lpantanal/decision/DecisionCardConfig;

    invoke-static {v3, v5}, La9/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpantanal/decision/DecisionCardConfig;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18a

    :cond_1ac
    sget-object v15, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardType()Ljava/util/Map;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardConfig()Ljava/util/Map;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getNeedToWaitCardData()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeToCardType="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sizeToCardConfig="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ,originNeedToWaitCardData = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",sizeToDecisionCardConfig="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    const-string v16, "DecisionCenter"

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceType()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getScore()F

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportEntrance()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getInitData()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getTimeStamp()J

    move-result-wide v21

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getVersionCode()J

    move-result-wide v23

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isParamsSendToSeedling()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getCannotReduceRecommend()Z

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getForceRebuild()Z

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceCategory()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getChannelType()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getIntentCategory()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isGuaranteedCard()Z

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSeedlingType()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSubdomain()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getIntentId()Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getPolicy()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getInstanceId()Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getHostPackage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardType()Ljava/util/Map;

    move-result-object v40

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getCloudRemindSwitch()I

    move-result v41

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getGroupPriority()I

    move-result v44

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSizeToCardConfig()Ljava/util/Map;

    move-result-object v42

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object v46

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportMultiInstance()Z

    move-result v45

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getNeedToWaitCardData()Z

    move-result v47

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceLevel()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSceneId()J

    move-result-wide v48

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSceneFocus()Z

    move-result v51

    invoke-virtual/range {p0 .. p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getIntentPosition()I

    move-result v52

    new-instance v0, Lpantanal/decision/ServiceInfo;

    move-object v1, v14

    move-object v14, v0

    move-object/from16 v17, p1

    move-object/from16 v34, v1

    move-object/from16 v43, v2

    invoke-direct/range {v14 .. v52}, Lpantanal/decision/ServiceInfo;-><init>(Ljava/lang/String;ILjava/util/List;FILjava/lang/String;JJIZZIIIZILjava/lang/String;Landroid/util/ArrayMap;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/oplus/seedling/sdk/seedling/NewSeedlingCardOptions;Ljava/lang/String;Ljava/util/Map;ILjava/util/Map;Ljava/util/Map;IZLjava/lang/String;ZJLjava/lang/String;ZI)V

    return-object v0
.end method

.method public static synthetic toDecisionServiceInfo$default(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Ljava/util/List;IILjava/lang/Object;)Lpantanal/decision/ServiceInfo;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_8

    invoke-virtual {p0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object p1

    :cond_8
    invoke-static {p0, p1, p2}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Ljava/util/List;I)Lpantanal/decision/ServiceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "DecisionCenter"

    return-object p0
.end method

.method public getServiceIds(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pantanal/server/content/recommendlist/ServiceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "list"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_28
    return-object p0
.end method

.method public isContainValidSize(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Lpantanal/app/bean/Entrance;)Z
    .registers 3

    const-string p0, "entity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entrance"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lpantanal/app/bean/Entrance;->getSupportCardSizesFromService(Lcom/pantanal/server/content/recommendlist/ServiceInfo;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic isContainValidSize(Ljava/lang/Object;Lpantanal/app/bean/Entrance;)Z
    .registers 3

    check-cast p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {p0, p1, p2}, Lpantanal/decision/DecisionCenter;->isContainValidSize(Lcom/pantanal/server/content/recommendlist/ServiceInfo;Lpantanal/app/bean/Entrance;)Z

    move-result p0

    return p0
.end method

.method public isSupportEntrance(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Z
    .registers 6

    const-string p0, "entity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_26

    if-eq p2, v0, :cond_26

    const/16 v0, 0x40

    const/16 v2, 0x10

    if-eq p2, v2, :cond_19

    if-eq p2, v0, :cond_19

    invoke-virtual {p1, p2}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportEntrance(I)Z

    move-result p0

    goto :goto_33

    :cond_19
    invoke-virtual {p1, v2}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportEntrance(I)Z

    move-result p2

    if-nez p2, :cond_32

    invoke-virtual {p1, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportEntrance(I)Z

    move-result p1

    if-eqz p1, :cond_33

    goto :goto_32

    :cond_26
    invoke-virtual {p1, v1}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportEntrance(I)Z

    move-result p2

    if-nez p2, :cond_32

    invoke-virtual {p1, v0}, Lcom/pantanal/server/content/recommendlist/ServiceInfo;->isSupportEntrance(I)Z

    move-result p1

    if-eqz p1, :cond_33

    :cond_32
    :goto_32
    move p0, v1

    :cond_33
    :goto_33
    return p0
.end method

.method public bridge synthetic isSupportEntrance(Ljava/lang/Object;I)Z
    .registers 3

    check-cast p1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-virtual {p0, p1, p2}, Lpantanal/decision/DecisionCenter;->isSupportEntrance(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Z

    move-result p0

    return p0
.end method

.method public final queryCacheRecommendList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getCurListFromCache()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lpantanal/content/base/IServiceListCenter;->getFilterList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-static {v1, p1}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    return-object v0
.end method

.method public final queryCurRecommendList(II)Ljava/util/List;
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getServiceDao()Lpantanal/content/base/IServiceDao;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ly0/b;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lpantanal/content/base/IServiceDao;->getCurrentList(Ljava/util/Set;I)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lpantanal/content/base/IServiceListCenter;->getFilterList(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-static {v0, p1}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_3d
    return-object p2
.end method

.method public final queryDecisionAllData(I)Ljava/util/List;
    .registers 15
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lpantanal/decision/ServiceInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lpantanal/content/base/IServiceListCenter;->getServiceDao()Lpantanal/content/base/IServiceDao;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/content/base/IServiceDao;->getAllList()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantanal/server/content/recommendlist/ServiceInfo;

    invoke-static {v1, p1}, Lpantanal/decision/DecisionCenter;->toDecisionServiceInfo(Lcom/pantanal/server/content/recommendlist/ServiceInfo;I)Lpantanal/decision/ServiceInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const-string p1, "queryDecisionAllData, list size = "

    invoke-static {p1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xf8

    const/4 v12, 0x0

    const-string v3, "DecisionCenter"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final register(ILpantanal/decision/DecisionObserver;I)V
    .registers 6

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lpantanal/decision/a;

    invoke-direct {v0, p2, p1}, Lpantanal/decision/a;-><init>(Lpantanal/decision/DecisionObserver;I)V

    sget-object v1, Lpantanal/decision/DecisionCenter;->observerMap:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {p2}, Lz8/f$a;->a()Lz8/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lz8/f;->d(I)Lz8/e;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p2, v1, p3}, Lz8/e;->n(II)Lz8/e;

    invoke-super {p0, p1, v0, p3}, Lpantanal/content/base/IServiceListCenter;->register(ILpantanal/content/ObserverWrapper;I)V

    return-void
.end method

.method public final unregister(ILpantanal/decision/DecisionObserver;I)V
    .registers 15

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz8/f;->d(I)Lz8/e;

    move-result-object v0

    const-string v1, "unregister"

    invoke-virtual {v0, v1}, Lz8/e;->l(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lz8/e;->k(I)Lz8/e;

    sget-object v0, Lpantanal/decision/DecisionCenter;->observerMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpantanal/content/ObserverWrapper;

    if-eqz v0, :cond_29

    invoke-super {p0, p1, v0, p3}, Lpantanal/content/base/IServiceListCenter;->unregister(ILpantanal/content/ObserverWrapper;I)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    if-nez p0, :cond_4d

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unregister failed, cannot find observerWrapper from observerMap, observer from entrance:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "DecisionCenter"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4d
    return-void
.end method
