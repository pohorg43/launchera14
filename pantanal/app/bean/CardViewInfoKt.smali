.class public final Lpantanal/app/bean/CardViewInfoKt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCardViewInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardViewInfo.kt\npantanal/app/bean/CardViewInfoKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,491:1\n1#2:492\n*E\n"
    }
.end annotation


# static fields
.field public static final ACTION_KEY_PAGE_ID:Ljava/lang/String; = "page_id"

.field public static final ACTION_VERSION_CODE:Ljava/lang/String; = "upk_version_code"

.field public static final CARD_ENTRANCE:Ljava/lang/String; = "seedling_entrance"

.field public static final CREATE_BUSINESS_DATA:Ljava/lang/String; = "business_data"

.field public static final CREATE_CARD_CREATE_TYPE:Ljava/lang/String; = "card_create_type"

.field public static final CREATE_CARD_SIZE:Ljava/lang/String; = "card_size"

.field public static final CREATE_IS_SUPPORT_INSTANCE:Ljava/lang/String; = "is_support_multi_instance"

.field public static final CREATE_SERVICE_ID:Ljava/lang/String; = "service_id"

.field public static final CREATE_SERVICE_INSTANCE_ID:Ljava/lang/String; = "service_instance_id"

.field public static final TAG:Ljava/lang/String; = "CardViewInfo"


# direct methods
.method public static final buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entrance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",cardTag:["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&_serviceId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-static {v2, p0, v0}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final generateDefaultCardViewInfo(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Entrance;ILpantanal/app/bean/CardCategory;)Lpantanal/app/bean/CardViewInfo;
    .registers 39

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v5, p3

    const-string v0, "<this>"

    move-object/from16 v3, p0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entrance"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v34, Lpantanal/app/bean/CardViewInfo;

    move-object/from16 v0, v34

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, ""

    const-string v25, ""

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const v32, 0x3f1fff80

    const/16 v33, 0x0

    invoke-direct/range {v0 .. v33}, Lpantanal/app/bean/CardViewInfo;-><init>(Lpantanal/app/bean/Entrance;IIILpantanal/app/bean/CardCategory;ILjava/util/List;ILjava/lang/String;IILjava/lang/String;ZZLjava/lang/String;ZJZZLandroid/util/ArrayMap;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lpantanal/decision/ServiceInfo;Landroid/util/ArrayMap;IILandroid/os/Bundle;Lpantanal/app/CardLaunchInterceptor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v34
.end method

.method public static final generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v0

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v1

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getDataChannelSize(I)I
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 v0, 0x6

    if-eq p0, v0, :cond_11

    const/16 p0, 0x3e8

    :cond_11
    return p0
.end method

.method public static final getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;
    .registers 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v2

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/bean/CardCategoryKt;->toCategoryInt(Lpantanal/app/bean/CardCategory;)I

    move-result v3

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v4

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result v1

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object p0

    invoke-virtual {p0}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "&"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lz8/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lz8/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCardCardLoadEvent5: key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cardLoadEventMap: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "TrackEventManager"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lz8/f;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v7, Lz8/g;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lz8/g;-><init>(IIILjava/lang/String;I)V

    new-instance v1, Lcom/android/launcher/db/b;

    const/4 v2, 0x1

    invoke-direct {v1, v7, v2}, Lcom/android/launcher/db/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "cardType: Int,\n        c…ceType)\n                }"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lz8/c;

    return-object p0
.end method

.method public static final getObserveParamsJSONObject(Lpantanal/app/bean/CardViewInfo;)Lorg/json/JSONObject;
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Li4/v;->H(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v1, 0x3e8

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    if-ne v0, v1, :cond_48

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getObserveParamsJSONObject error, size is default size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", sizeList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v4, Ly8/c;->a:Ly8/c;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardViewInfo"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_48
    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getDataChannelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lpantanal/app/bean/CardViewInfo;->setSizeCode(I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "service_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getSizeCode()I

    move-result v2

    const-string v3, "card_size"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->isRecommend()Z

    move-result v2

    invoke-static {v2}, Lpantanal/app/bean/EntranceKt;->toCreateType(Z)I

    move-result v2

    const-string v3, "card_create_type"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v2

    const-string v3, "seedling_entrance"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceInfo()Lpantanal/decision/ServiceInfo;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-virtual {v2}, Lpantanal/decision/ServiceInfo;->getSizeToCardConfig()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_9d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_9d

    const-string v2, "decision_card_config"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9d
    const-string v0, "SecondTermTraceContext"

    invoke-virtual {p0, v0}, Lpantanal/app/bean/CardViewInfo;->getUTraceCodeContext(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v2

    if-eqz v2, :cond_ac

    sget-object v3, Lcom/oplus/utrace/sdk/UTraceCompat;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceCompat;

    invoke-virtual {v3, v2}, Lcom/oplus/utrace/sdk/UTraceCompat;->writeToJsonString(Lcom/oplus/utrace/sdk/UTraceContext;)Ljava/lang/String;

    move-result-object v2

    goto :goto_ad

    :cond_ac
    const/4 v2, 0x0

    :goto_ad
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceInstanceId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "service_instance_id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->isSupportMultiInstance()Z

    move-result p0

    const-string v0, "is_support_multi_instance"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getObserveParamsJSONObject, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardViewInfo"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method

.method public static final toUTraceIntentString(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v2

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result v3

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v4

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getSize()I

    move-result v5

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getInitData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getInitData()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/oplus/seedling/sdk/seedling/SeedlingIntentKt;->getPolicyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getCardCategory()Lpantanal/app/bean/CardCategory;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CardViewInfo[entrance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; serviceId:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; cardType:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; hostId:"

    const-string v1, "; cardId:"

    invoke-static {v9, v2, v0, v3, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, "; size:"

    const-string v1, "; sizeList:"

    invoke-static {v9, v4, v0, v5, v1}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; initDataSize:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; policyName:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; cardCategory:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
