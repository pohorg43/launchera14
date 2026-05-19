.class public final Lu8/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPantanalClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PantanalClient.kt\npantanal/client/PantanalClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1034:1\n1#2:1035\n766#3:1036\n857#3,2:1037\n*S KotlinDebug\n*F\n+ 1 PantanalClient.kt\npantanal/client/PantanalClient\n*L\n875#1:1036\n875#1:1037,2\n*E\n"
    }
.end annotation


# instance fields
.field public a:Lpantanal/app/groupcard/GroupCardManager;

.field public b:Landroid/content/Context;

.field public c:Lpantanal/app/bean/Configuration;

.field public d:Lpantanal/app/manager/ServiceManagerProxy;

.field public e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public f:Lw8/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "1.2.22"

    sput-object v1, Ly8/c;->g:Ljava/lang/String;

    const-string v1, "1002022"

    sput-object v1, Ly8/c;->h:Ljava/lang/String;

    const-string v1, "f1ec63f"

    sput-object v1, Ly8/c;->i:Ljava/lang/String;

    sget-object v1, Ly8/c;->c:Lcom/oplus/pantanal/log/printer/IPrinter;

    invoke-interface {v1}, Lcom/oplus/pantanal/log/printer/IPrinter;->getLogConfig()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v1

    invoke-virtual {v0}, Ly8/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oplus/pantanal/log/printer/PrinterConfig;->resetLogMsgSuffix(Ljava/lang/String;)V

    new-instance v0, Lpantanal/app/bean/Configuration;

    new-instance v1, Lpantanal/app/bean/Configuration$Builder;

    invoke-direct {v1}, Lpantanal/app/bean/Configuration$Builder;-><init>()V

    invoke-direct {v0, v1}, Lpantanal/app/bean/Configuration;-><init>(Lpantanal/app/bean/Configuration$Builder;)V

    iput-object v0, p0, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lu8/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Landroid/os/Bundle;)Lpantanal/app/Card;
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "cardViewInfo"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "serviceId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", entrance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ly8/c;->a:Ly8/c;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCard, serviceId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", cardInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", bundle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v9, "PantanalClient"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v8

    invoke-virtual {v8}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v8

    const/4 v9, 0x4

    const/16 v10, 0x10

    if-eq v8, v10, :cond_9d

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v8

    invoke-virtual {v8}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v8

    const/16 v10, 0x8

    if-eq v8, v10, :cond_9d

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v8

    invoke-virtual {v8}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v8

    if-ne v8, v9, :cond_8a

    goto :goto_9d

    :cond_8a
    sget-object v8, Lpantanal/decision/DecisionManager;->Companion:Lpantanal/decision/DecisionManager$Companion;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v9

    invoke-virtual {v9}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v9

    invoke-virtual {v8, v9}, Lpantanal/decision/DecisionManager$Companion;->getInstance(I)Lpantanal/decision/IServiceDecision;

    move-result-object v8

    invoke-interface {v8}, Lpantanal/decision/IServiceDecision;->getCacheRecommendList()Ljava/util/List;

    move-result-object v8

    goto :goto_af

    :cond_9d
    :goto_9d
    sget-object v8, Lpantanal/decision/DecisionManager;->Companion:Lpantanal/decision/DecisionManager$Companion;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v9

    invoke-virtual {v9}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v9

    invoke-virtual {v8, v9}, Lpantanal/decision/DecisionManager$Companion;->getInstance(I)Lpantanal/decision/IServiceDecision;

    move-result-object v8

    invoke-interface {v8}, Lpantanal/decision/IServiceDecision;->getCacheMultiInstanceRecommendList()Ljava/util/List;

    move-result-object v8

    :goto_af
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_d0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lpantanal/decision/ServiceInfo;

    invoke-virtual {v11}, Lpantanal/decision/ServiceInfo;->getServiceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b3

    goto :goto_d1

    :cond_d0
    move-object v9, v10

    :goto_d1
    check-cast v9, Lpantanal/decision/ServiceInfo;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v8

    if-nez v8, :cond_dc

    invoke-virtual {v2, v9}, Lpantanal/app/bean/CardViewInfo;->setServiceInfo(Lpantanal/decision/ServiceInfo;)V

    :cond_dc
    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v11

    const-string v12, "SecondTermTraceContext"

    if-eqz v9, :cond_f3

    invoke-virtual {v9}, Lpantanal/decision/ServiceInfo;->getExtras()Landroid/util/ArrayMap;

    move-result-object v13

    if-eqz v13, :cond_f3

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_f4

    :cond_f3
    move-object v13, v10

    :goto_f4
    instance-of v14, v13, Lcom/oplus/utrace/sdk/UTraceContext;

    if-eqz v14, :cond_fb

    check-cast v13, Lcom/oplus/utrace/sdk/UTraceContext;

    goto :goto_fc

    :cond_fb
    move-object v13, v10

    :goto_fc
    const/4 v14, 0x2

    if-eqz v13, :cond_16c

    const-string v15, "922000"

    invoke-static {v13, v10, v15, v14, v10}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v10

    new-array v13, v14, [Lh4/j;

    sget-object v14, Ly8/c;->a:Ly8/c;

    invoke-virtual {v14}, Ly8/c;->b()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    new-instance v3, Lh4/j;

    const-string v0, "seedling_sdk_ver"

    invoke-direct {v3, v0, v15}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v3, v13, v0

    invoke-virtual {v14}, Ly8/c;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lh4/j;

    const-string v14, "panta_client_ver"

    invoke-direct {v3, v14, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    aput-object v3, v13, v0

    invoke-static {v13}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/oplus/utrace/sdk/UTrace;->addTraceTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    const/4 v0, 0x4

    new-array v0, v0, [Lh4/j;

    sget-object v3, Ly8/c;->j:Ljava/lang/String;

    new-instance v13, Lh4/j;

    const-string v14, "app_ver"

    invoke-direct {v13, v14, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v13, v0, v3

    new-instance v3, Lh4/j;

    const-string v13, "service_id"

    invoke-direct {v3, v13, v8}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x1

    aput-object v3, v0, v8

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lh4/j;

    const-string v11, "entrance"

    invoke-direct {v8, v11, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v8, v0, v3

    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->toUTraceIntentString(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lh4/j;

    invoke-direct {v8, v4, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v8, v0, v3

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    invoke-virtual {v2, v12, v10}, Lpantanal/app/bean/CardViewInfo;->setUTraceCodeContext(Ljava/lang/String;Lcom/oplus/utrace/sdk/UTraceContext;)V

    goto :goto_19f

    :cond_16c
    move-object/from16 v16, v3

    sget-object v17, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTrace922000() parentCtx=null serviceId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " entrance="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v10, 0x0

    :goto_19f
    if-eqz v9, :cond_1a6

    invoke-virtual {v9}, Lpantanal/decision/ServiceInfo;->getUTraceIntentContext()Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    goto :goto_1a7

    :cond_1a6
    const/4 v0, 0x0

    :goto_1a7
    const-string v3, "createCard,serviceId:"

    sget-object v17, Ly8/c;->a:Ly8/c;

    if-nez v0, :cond_1e0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",spanCode:1100,PantanalCardSdk get intent_trace from entrance["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] is null,context is wrong!"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_21c

    :cond_1e0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",UTrace.start spanName:1100,PantanalCardSdk get intent_trace from entrance["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] is "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v6, "1100"

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v0, v9, v6, v8, v9}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    :goto_21c
    if-eqz v0, :cond_228

    invoke-virtual {v2, v0}, Lpantanal/app/bean/CardViewInfo;->setUTraceIntentContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    invoke-static/range {p2 .. p2}, Ly5/p;->a(Lpantanal/app/bean/CardViewInfo;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    :cond_228
    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v6

    invoke-virtual {v6, v1}, Lz8/c;->d(Landroid/content/Context;)V

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Lz8/c;->k(I)Lz8/a;

    invoke-virtual/range {p0 .. p0}, Lu8/b;->f()Z

    move-result v6

    if-nez v6, :cond_270

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCard failed,should init first.serviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",cardInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Ly8/c;->a:Ly8/c;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    move-object v13, v0

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const v1, 0x8cafa2

    :goto_26c
    move-object/from16 v3, p0

    goto/16 :goto_417

    :cond_270
    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2b5

    sget-object v17, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "useSizeList change size to sizeList "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSize()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Lpantanal/app/bean/CardViewInfo;->setSizeList(Ljava/util/List;)V

    :cond_2b5
    sget-object v8, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSize()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "useSizeList result sizeList:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", originSizeList:"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", size:"

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    move-object/from16 v17, v8

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object v6

    sget-object v11, Lpantanal/app/bean/CardCategory;->SEEDLING:Lpantanal/app/bean/CardCategory;

    if-ne v6, v11, :cond_41c

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v11

    if-eqz v11, :cond_30f

    invoke-virtual {v11}, Lpantanal/decision/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_311

    :cond_30f
    sget-object v11, Li4/y;->a:Li4/y;

    :cond_311
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    const-string v13, ", isRecommend:"

    if-eqz v12, :cond_362

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->isRecommend()Z

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v14

    if-eqz v14, :cond_332

    invoke-virtual {v14}, Lpantanal/decision/ServiceInfo;->getSupportCardSizes()Ljava/util/List;

    move-result-object v14

    goto :goto_333

    :cond_332
    const/4 v14, 0x0

    :goto_333
    const-string v15, "checkSizeAndModify supportCardSizes is empty, isContainValidSize:"

    move-object/from16 p3, v3

    const-string v3, " , originSupportCardSizes:"

    invoke-static {v15, v11, v13, v12, v3}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    move-object/from16 v17, v8

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_3d5

    :cond_362
    move-object/from16 p3, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_36d
    :goto_36d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_38c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36d

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_36d

    :cond_38c
    invoke-virtual {v2, v3}, Lpantanal/app/bean/CardViewInfo;->setSizeList(Ljava/util/List;)V

    invoke-static {v3}, Li4/v;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    invoke-static {v6, v8}, Li4/v;->c0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->isRecommend()Z

    move-result v12

    const-string v14, "checkSizeAndModify isContainValidSize:"

    const-string v15, " , resultSizeList:"

    invoke-static {v14, v11, v13, v12, v15}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", filteredSizeSet:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget-object v17, Ly8/c;->a:Ly8/c;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_3d5
    if-nez v11, :cond_41e

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCard failed, because entrance does not provider any valid size, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sizeList:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", cardInfo:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Ly8/c;->a:Ly8/c;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    move-object v13, v0

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const v1, 0x8cafa1

    goto/16 :goto_26c

    :goto_417
    invoke-virtual {v3, v10, v1, v0}, Lu8/b;->h(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_41c
    move-object/from16 p3, v3

    :cond_41e
    move-object/from16 v3, p0

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v6

    if-eqz v6, :cond_43b

    invoke-virtual {v6}, Lpantanal/decision/ServiceInfo;->getSizeToDecisionCardConfig()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_43b

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lpantanal/decision/DecisionCardConfig;

    goto :goto_43c

    :cond_43b
    const/4 v6, 0x0

    :goto_43c
    if-eqz v6, :cond_447

    invoke-virtual {v6}, Lpantanal/decision/DecisionCardConfig;->isValid()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_447

    const/4 v7, 0x1

    goto :goto_448

    :cond_447
    const/4 v7, 0x0

    :goto_448
    if-eqz v7, :cond_476

    sget-object v17, Ly8/c;->a:Ly8/c;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    const-string v19, "injectSuperChannelParam, set superChannel params with decisionCardConfig."

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v6}, Lpantanal/decision/DecisionCardConfig;->getSupportSuperChannel()Z

    move-result v7

    invoke-virtual {v2, v7}, Lpantanal/app/bean/CardViewInfo;->setSupportSuperChannel(Z)V

    invoke-virtual {v6}, Lpantanal/decision/DecisionCardConfig;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lpantanal/app/bean/CardViewInfo;->setComponentName(Ljava/lang/String;)V

    invoke-virtual {v6}, Lpantanal/decision/DecisionCardConfig;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4b1

    :cond_476
    invoke-virtual/range {p0 .. p1}, Lu8/b;->c(Landroid/content/Context;)Lpantanal/content/ContentManager;

    move-result-object v6

    if-eqz v6, :cond_4b4

    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v7

    invoke-interface {v6, v7}, Lpantanal/content/ContentManager;->getCardConfig(I)Lpantanal/app/bean/CardConfigInfo;

    move-result-object v6

    if-eqz v6, :cond_4b4

    sget-object v17, Ly8/c;->a:Ly8/c;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "PantanalClient"

    const-string v19, "injectSuperChannelParam, set superChannel params with cardConfigInfo."

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {v6}, Lpantanal/app/bean/CardConfigInfo;->getSupportSuperChannel()Z

    move-result v7

    invoke-virtual {v2, v7}, Lpantanal/app/bean/CardViewInfo;->setSupportSuperChannel(Z)V

    invoke-virtual {v6}, Lpantanal/app/bean/CardConfigInfo;->getComponentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lpantanal/app/bean/CardViewInfo;->setComponentName(Ljava/lang/String;)V

    invoke-virtual {v6}, Lpantanal/app/bean/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_4b1
    invoke-virtual {v2, v6}, Lpantanal/app/bean/CardViewInfo;->setPackageName(Ljava/lang/String;)V

    :cond_4b4
    iget-object v6, v3, Lu8/b;->d:Lpantanal/app/manager/ServiceManagerProxy;

    const/4 v7, 0x6

    if-eqz v6, :cond_562

    if-eqz v0, :cond_4c0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v8, v5, v7, v8}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    :cond_4c0
    invoke-virtual/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object v5

    iget-object v0, v3, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    move-object/from16 v3, v16

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "category"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "serviceManagerProxy"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "configuration"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v11

    const/16 v12, 0x64

    const/16 v13, 0x14

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    :try_start_4ec
    invoke-virtual {v0}, Lpantanal/app/bean/Configuration;->getSupportedCardCategory()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_520

    sget-object v3, Lu8/a;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_513

    const/4 v4, 0x2

    if-eq v3, v4, :cond_50d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_50d

    new-instance v3, Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-direct {v3, v6, v1, v2, v0}, Lpantanal/app/seedling/SeedlingCardImpl;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V

    goto :goto_518

    :cond_50d
    new-instance v3, Lpantanal/app/app_card/AppCardImpl;

    invoke-direct {v3, v6, v1, v2, v0}, Lpantanal/app/app_card/AppCardImpl;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V

    goto :goto_518

    :cond_513
    new-instance v3, Lpantanal/app/instant/InstantCardImpl;

    invoke-direct {v3, v1, v2, v0}, Lpantanal/app/instant/InstantCardImpl;-><init>(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
    :try_end_518
    .catchall {:try_start_4ec .. :try_end_518} :catchall_52a

    :goto_518
    if-eqz v10, :cond_51f

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v10, v1, v0, v7, v1}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    :cond_51f
    return-object v3

    :cond_520
    :try_start_520
    new-instance v0, Lpantanal/exception/CardNotSupportException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lpantanal/exception/CardNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_52a
    .catchall {:try_start_520 .. :try_end_52a} :catchall_52a

    :catchall_52a
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_558

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "newCard failed: "

    invoke-static {v3, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ly8/c;->a:Ly8/c;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "CardFactory"

    move-object v8, v0

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lz8/c;->y(Landroid/content/Context;Ljava/lang/String;)V

    :cond_558
    new-instance v0, Lpantanal/exception/ClassNotSupportException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lpantanal/exception/ClassNotSupportException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceManagerProxy is null, maybe not init yet,cardViewInfo:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ly8/c;->a:Ly8/c;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    move-object v11, v6

    move-object v13, v4

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v0, :cond_5b3

    const-string v8, ",UTrace.error spanName:11001"

    move-object/from16 v9, p3

    invoke-static {v9, v5, v8}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "PantanalClient"

    move-object v11, v6

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v5, 0x2af9

    invoke-static {v0, v5, v4}, Lcom/oplus/utrace/sdk/UTrace;->error(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v6, v5, v7, v6}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    goto :goto_5b4

    :cond_5b3
    const/4 v6, 0x0

    :goto_5b4
    invoke-static/range {p2 .. p2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lz8/c;->y(Landroid/content/Context;Ljava/lang/String;)V

    const v0, 0x8cafa3

    invoke-virtual {v3, v10, v0, v4}, Lu8/b;->h(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    return-object v6
.end method

.method public final b(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "groupCardInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createGroupCard,cardInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "PantanalClient"

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

    invoke-virtual/range {p0 .. p0}, Lu8/b;->f()Z

    move-result v4

    const/4 v15, 0x0

    if-nez v4, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createGroupCard failed,should init first,cardInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "PantanalClient"

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v15

    :cond_5a
    iget-object v3, v0, Lu8/b;->a:Lpantanal/app/groupcard/GroupCardManager;

    if-eqz v3, :cond_69

    invoke-virtual {v3}, Lpantanal/app/groupcard/GroupCardManager;->getInitState()Z

    move-result v3

    if-nez v3, :cond_66

    const/4 v3, 0x1

    goto :goto_67

    :cond_66
    const/4 v3, 0x0

    :goto_67
    if-eqz v3, :cond_6c

    :cond_69
    invoke-virtual/range {p0 .. p1}, Lu8/b;->e(Landroid/content/Context;)V

    :cond_6c
    iget-object v0, v0, Lu8/b;->a:Lpantanal/app/groupcard/GroupCardManager;

    if-eqz v0, :cond_76

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lpantanal/app/groupcard/GroupCardManager;->createGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v15

    :cond_76
    return-object v15
.end method

.method public final c(Landroid/content/Context;)Lpantanal/content/ContentManager;
    .registers 14

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lu8/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_21

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PantanalClient"

    const-string v3, "getContentManager return null,because not init"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0

    :cond_21
    :try_start_21
    sget-object p1, Lpantanal/content/ContentManagerFactory;->INSTANCE:Lpantanal/content/ContentManagerFactory;

    iget-object v1, p0, Lu8/b;->f:Lw8/a;

    if-nez v1, :cond_2d

    const-string v1, "contextProxy"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2d
    iget-object p0, p0, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lpantanal/content/ContentManagerFactory;->getContentManager(Lw8/a;Lpantanal/app/bean/Entrance;)Lpantanal/content/ContentManager;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_38

    return-object p0

    :catchall_38
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5d

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getContentManager failed: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PantanalClient"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_5d
    return-object v0
.end method

.method public final d()Lpantanal/decision/IServiceDecision;
    .registers 13

    iget-object p0, p0, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    invoke-virtual {p0}, Lpantanal/app/bean/Configuration;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object p0

    const-string v0, "entrance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceDecision,getContentManager begin,entrance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PantanalClient"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :try_start_31
    sget-object v0, Lpantanal/decision/DecisionManager;->Companion:Lpantanal/decision/DecisionManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lpantanal/decision/DecisionManager$Companion;->getInstance(I)Lpantanal/decision/IServiceDecision;

    move-result-object p0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_3c

    goto :goto_75

    :catchall_3c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_74

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceDecision failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",entrance = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PantanalClient"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_74
    const/4 p0, 0x0

    :goto_75
    return-object p0
.end method

.method public final e(Landroid/content/Context;)V
    .registers 6

    iget-object v0, p0, Lu8/b;->a:Lpantanal/app/groupcard/GroupCardManager;

    if-nez v0, :cond_c

    sget-object v0, Lpantanal/app/groupcard/GroupCardManager;->Companion:Lpantanal/app/groupcard/GroupCardManager$Companion;

    invoke-virtual {v0}, Lpantanal/app/groupcard/GroupCardManager$Companion;->getInstance()Lpantanal/app/groupcard/GroupCardManager;

    move-result-object v0

    iput-object v0, p0, Lu8/b;->a:Lpantanal/app/groupcard/GroupCardManager;

    :cond_c
    iget-object v0, p0, Lu8/b;->a:Lpantanal/app/groupcard/GroupCardManager;

    if-eqz v0, :cond_22

    new-instance v1, Lu8/b$a;

    invoke-direct {v1, p1, p0}, Lu8/b$a;-><init>(Landroid/content/Context;Lu8/b;)V

    new-instance v2, Landroidx/core/view/a;

    invoke-direct {v2, p0}, Landroidx/core/view/a;-><init>(Lu8/b;)V

    new-instance v3, Lcom/android/launcher/x;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher/x;-><init>(Lu8/b;Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1, v2, v3}, Lpantanal/app/groupcard/GroupCardManager;->init(Landroid/content/Context;Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)V

    :cond_22
    return-void
.end method

.method public final f()Z
    .registers 1

    iget-object p0, p0, Lu8/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final g(Lu8/c;)V
    .registers 14

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lu8/b;->f()Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PantanalClient"

    const-string v3, "loadSeedlingPlugin failed,not init."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lu8/b;->c:Lpantanal/app/bean/Configuration;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardClientKt;->buildSeedlingInitConfig(Lpantanal/app/bean/Configuration;)Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    move-result-object v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    const-string v2, "PantanalClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSeedlingPlugin begin,seedlingInitConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    iget-object p0, p0, Lu8/b;->b:Landroid/content/Context;

    if-nez p0, :cond_51

    const-string p0, "initContext"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_51
    new-instance v2, Lu8/b$b;

    invoke-direct {v2, p1}, Lu8/b$b;-><init>(Lu8/c;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/SeedlingInitConfig;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_5b
    .catchall {:try_start_1e .. :try_end_5b} :catchall_5c

    goto :goto_61

    :catchall_5c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_61
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_81

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "loadSeedlingPlugin failed: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "PantanalClient"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_81
    return-void
.end method

.method public final h(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_d

    invoke-static {p1, p2, p3}, Lcom/oplus/utrace/sdk/UTrace;->error(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V

    sget-object p0, Lcom/oplus/utrace/sdk/CompletionType;->COMPLETE:Lcom/oplus/utrace/sdk/CompletionType;

    const/4 p2, 0x0

    const/4 p3, 0x4

    const/4 v0, 0x0

    invoke-static {p1, p0, p2, p3, v0}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    :cond_d
    return-void
.end method
