.class public final Lcom/oplus/utrace/hlog/PushData$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/hlog/PushData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/PushData$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJsonString(Ljava/lang/String;)Lcom/oplus/utrace/hlog/PushData;
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "json"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-nez v1, :cond_17

    :cond_14
    :goto_14
    const/4 v0, 0x0

    goto/16 :goto_ba

    :cond_17
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "business"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v4, "traceId"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v4, "beginTime"

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v4, "endTime"

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v4, "useWifi"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v4, "tracePkg"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "extras"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_50

    goto :goto_7b

    :cond_50
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    const-string v6, "o1.keys()"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_6e

    move-object/from16 p1, v1

    goto :goto_78

    :cond_6e
    move-object/from16 p1, v1

    const-string v1, "k"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_78
    move-object/from16 v1, p1

    goto :goto_59

    :cond_7b
    :goto_7b
    const/4 v1, 0x0

    if-eqz v5, :cond_87

    invoke-static {v5}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_85

    goto :goto_87

    :cond_85
    move v3, v1

    goto :goto_88

    :cond_87
    :goto_87
    const/4 v3, 0x1

    :goto_88
    if-nez v3, :cond_14

    if-eqz v15, :cond_92

    invoke-static {v15}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_93

    :cond_92
    const/4 v1, 0x1

    :cond_93
    if-eqz v1, :cond_97

    goto/16 :goto_14

    :cond_97
    const-wide/16 v6, 0x0

    cmp-long v1, v8, v6

    if-eqz v1, :cond_14

    cmp-long v1, v10, v6

    if-eqz v1, :cond_14

    cmp-long v1, v12, v6

    if-nez v1, :cond_a7

    goto/16 :goto_14

    :cond_a7
    new-instance v1, Lcom/oplus/utrace/hlog/PushData;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v1

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move v12, v14

    move-object v13, v15

    move-object v14, v2

    invoke-direct/range {v4 .. v14}, Lcom/oplus/utrace/hlog/PushData;-><init>(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;)V

    return-object v1

    :goto_ba
    return-object v0
.end method
