.class public final Lcom/oplus/utrace/lib/UTraceRecordV2$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/UTraceRecordV2;
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

    invoke-direct {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSONString(Ljava/lang/String;)Lcom/oplus/utrace/lib/UTraceRecordV2;
    .registers 26

    move-object/from16 v0, p1

    const-string v1, "info"

    const-string v2, "spanName"

    const-string v3, "parent"

    const-string v4, "traceID"

    const-string v5, ""

    const-string v6, "jsonString"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_11
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/oplus/utrace/lib/NodeID;

    const-string v0, "current"

    invoke-virtual {v7, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "json.optString(KEY_CURRENT, \"\")"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v0}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "json.optString(KEY_PARENT, \"\")"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    goto :goto_41

    :cond_40
    const/4 v11, 0x0

    :goto_41
    invoke-virtual {v7, v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "startTime"

    const-wide/16 v13, 0x0

    invoke-virtual {v7, v0, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v15

    const-string v0, "endTime"

    invoke-virtual {v7, v0, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v17

    const-string v0, "status"

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v7, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v8, "hasError"

    sget-object v14, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->NO_ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {v14}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result v14

    invoke-virtual {v7, v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    const-string v8, "statusCode"

    invoke-virtual {v7, v8, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    const-string v3, "type"

    sget-object v8, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->NONE:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v8}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v21

    const-string v3, "spanType"

    sget-object v8, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v8}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v8

    invoke-virtual {v7, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    const-string v3, "tags"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_92

    const/4 v3, 0x0

    goto :goto_c6

    :cond_92
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    const-string v14, "it.keys()"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v6, "key"

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p1, v3

    const-string v3, "it.optString(key, \"\")"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p1

    goto :goto_a0

    :cond_c2
    invoke-static {v7}, Li4/k0;->m(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    :goto_c6
    new-instance v5, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_db

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v1, Li4/z;->a:Li4/z;

    move-object/from16 v23, v1

    goto :goto_dd

    :cond_db
    move-object/from16 v23, v3

    :goto_dd
    move-object v8, v5

    move-object v1, v13

    move-wide v13, v15

    move-wide/from16 v15, v17

    move/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v8 .. v23}, Lcom/oplus/utrace/lib/UTraceRecordV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IIIILjava/util/Map;)V
    :try_end_e9
    .catchall {:try_start_11 .. :try_end_e9} :catchall_ea

    return-object v5

    :catchall_ea
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f6

    goto :goto_107

    :cond_f6
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "jsonString parse to json error: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTraceRecordV2"

    invoke-virtual {v1, v3, v2, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_107
    const/4 v1, 0x0

    return-object v1
.end method

.method public final fromLegacyObj(Lcom/oplus/utrace/lib/UTraceRecord;)Lcom/oplus/utrace/lib/UTraceRecordV2;
    .registers 19

    const-string v0, "legacy"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getTraceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getParent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getSpanName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getStartTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getEndTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getStatus()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecord;->getHasError()I

    move-result v12

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->NONE:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v14

    sget-object v1, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v15

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v16, Li4/z;->a:Li4/z;

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lcom/oplus/utrace/lib/UTraceRecordV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IIIILjava/util/Map;)V

    return-object v0
.end method
