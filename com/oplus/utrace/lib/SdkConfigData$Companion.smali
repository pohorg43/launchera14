.class public final Lcom/oplus/utrace/lib/SdkConfigData$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/SdkConfigData;
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

    invoke-direct {p0}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$now(Lcom/oplus/utrace/lib/SdkConfigData$Companion;)J
    .registers 3

    invoke-direct {p0}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method private final create(ZJJLjava/lang/String;ZLjava/lang/String;JJ)Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 27

    const-wide/16 v0, 0x3e8

    cmp-long v2, p2, v0

    if-gez v2, :cond_7

    goto :goto_9

    :cond_7
    move-wide/from16 v0, p2

    :goto_9
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gtz v2, :cond_15

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_17

    :cond_15
    move-wide/from16 v2, p4

    :goto_17
    new-instance v6, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;-><init>(JJ)V

    sget-object v0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;->fromJsonString$utrace_lib_release(Ljava/lang/String;)Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    move-result-object v9

    const-wide/32 v0, 0xea60

    cmp-long v2, p9, v0

    if-gez v2, :cond_2d

    move-wide v10, v0

    goto :goto_2f

    :cond_2d
    move-wide/from16 v10, p9

    :goto_2f
    new-instance v0, Lcom/oplus/utrace/lib/SdkConfigData;

    move-object v4, v0

    move v5, p1

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v12, p11

    invoke-direct/range {v4 .. v13}, Lcom/oplus/utrace/lib/SdkConfigData;-><init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJ)V

    return-object v0
.end method

.method private final expireTime(J)J
    .registers 5

    invoke-direct {p0}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->now()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private final now()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private final parseOverflowPtListToMap(Ljava/util/List;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;

    new-instance v1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->getWindow()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->getMaxFlow()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;-><init>(JJ)V

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;->getPatterns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_3a
    return-object p0
.end method

.method private final parseOverflowPtToList(Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly4/h;->e(II)Ly4/d;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    move-object v3, v0

    check-cast v3, Li4/f0;

    invoke-virtual {v3}, Li4/f0;->nextInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_17

    :cond_2b
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "pattern"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_4f

    move-object v6, v4

    goto :goto_78

    :cond_4f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-static {v1, v5}, Ly4/h;->e(II)Ly4/d;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_60
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_78

    move-object v7, v5

    check-cast v7, Li4/f0;

    invoke-virtual {v7}, Li4/f0;->nextInt()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_74

    goto :goto_60

    :cond_74
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_78
    :goto_78
    if-nez v6, :cond_7c

    sget-object v6, Li4/y;->a:Li4/y;

    :cond_7c
    move-object v3, v6

    const-string v5, "window"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "max_flow"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a5

    const-wide/16 v9, 0x3e8

    cmp-long v2, v5, v9

    if-ltz v2, :cond_a5

    const-wide/16 v9, 0x0

    cmp-long v2, v7, v9

    if-gtz v2, :cond_9c

    goto :goto_a5

    :cond_9c
    new-instance v9, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;

    move-object v2, v9

    move-wide v4, v5

    move-wide v6, v7

    invoke-direct/range {v2 .. v7}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;-><init>(Ljava/util/List;JJ)V

    move-object v4, v9

    :cond_a5
    :goto_a5
    if-nez v4, :cond_a8

    goto :goto_38

    :cond_a8
    invoke-interface {p0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_ab
    .catchall {:try_start_0 .. :try_end_ab} :catchall_ac

    goto :goto_38

    :catchall_ac
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :cond_b1
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_b8

    goto :goto_d2

    :cond_b8
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, "parseOverflowPt() string="

    const-string v3, " exception="

    invoke-static {v2, p1, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTrace.Lib.SdkConfigData"

    invoke-virtual {v1, v2, p1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d2
    sget-object p1, Li4/y;->a:Li4/y;

    instance-of v0, p0, Lh4/k$a;

    if-eqz v0, :cond_d9

    move-object p0, p1

    :cond_d9
    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final bindWindow(Z)J
    .registers 2

    if-eqz p1, :cond_6

    const-wide/32 p0, 0xea60

    goto :goto_9

    :cond_6
    const-wide/32 p0, 0x36ee80

    :goto_9
    return-wide p0
.end method

.method public final createFromBundle(Landroid/os/Bundle;)Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "bundle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    const-string v1, "is_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v1, "overflow_max"

    invoke-static {}, Lcom/oplus/utrace/lib/SdkConfigData;->access$getDEFAULT_OVERFLOW$cp()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getMaxFlow()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "overflow_window"

    invoke-static {}, Lcom/oplus/utrace/lib/SdkConfigData;->access$getDEFAULT_OVERFLOW$cp()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getWindow()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v1, "overflow_pt"

    const-string v2, "[]"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "bind_window"

    invoke-static {}, Lcom/oplus/utrace/lib/SdkConfigData;->access$getDEFAULT_BIND_WINDOW$cp()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-string v1, "expire_time"

    invoke-direct/range {p0 .. p0}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->now()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v1, "logs_debuggable"

    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v2}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    const-string v1, "trace_cache_metrics"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "overflowPt"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceCacheMetrics"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->create(ZJJLjava/lang/String;ZLjava/lang/String;JJ)Lcom/oplus/utrace/lib/SdkConfigData;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_7 .. :try_end_6a} :catchall_6b

    goto :goto_70

    :catchall_6b
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_70
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_77

    goto :goto_88

    :cond_77
    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "createFromBundle() exception: "

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTrace.Lib.SdkConfigData"

    invoke-virtual {v2, v4, v3, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_88
    instance-of v1, v0, Lh4/k$a;

    if-eqz v1, :cond_8d

    const/4 v0, 0x0

    :cond_8d
    check-cast v0, Lcom/oplus/utrace/lib/SdkConfigData;

    return-object v0
.end method

.method public final createFromJSONString(Ljava/lang/String;)Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 19

    move-object/from16 v1, p1

    const-string v0, "s"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "is_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v2, "overflow_window"

    invoke-static {}, Lcom/oplus/utrace/lib/SdkConfigData;->access$getDEFAULT_OVERFLOW$cp()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getWindow()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v2, "overflow_max"

    invoke-static {}, Lcom/oplus/utrace/lib/SdkConfigData;->access$getDEFAULT_OVERFLOW$cp()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getMaxFlow()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v2, "overflow_pt"

    const-string v3, "[]"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "it.optString(KEY_OVERFLOW_PT, EMPTY_JSON_ARRAY)"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "logs_debuggable"

    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v3}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v2, "trace_cache_metrics"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v2, "it.optString(KEY_TRACE_CACHE_METRICS, \"\")"

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bind_window"

    invoke-static {}, Lcom/oplus/utrace/lib/SdkConfigData;->access$getDEFAULT_BIND_WINDOW$cp()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v2, "expire_time"

    invoke-direct/range {p0 .. p0}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->now()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v15

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v16}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->create(ZJJLjava/lang/String;ZLjava/lang/String;JJ)Lcom/oplus/utrace/lib/SdkConfigData;

    move-result-object v0
    :try_end_6f
    .catchall {:try_start_7 .. :try_end_6f} :catchall_70

    goto :goto_75

    :catchall_70
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_75
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_7c

    goto :goto_9b

    :cond_7c
    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v4, "createFromJSONString() string=\'"

    const-string v5, "\' exception=\'"

    invoke-static {v4, v1, v5}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UTrace.Lib.SdkConfigData"

    invoke-virtual {v3, v4, v1, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9b
    instance-of v1, v0, Lh4/k$a;

    if-eqz v1, :cond_a0

    const/4 v0, 0x0

    :cond_a0
    check-cast v0, Lcom/oplus/utrace/lib/SdkConfigData;

    return-object v0
.end method

.method public final expireTime(Z)J
    .registers 4

    if-eqz p1, :cond_6

    const-wide/32 v0, 0xea60

    goto :goto_9

    :cond_6
    const-wide/32 v0, 0x36ee80

    :goto_9
    invoke-direct {p0, v0, v1}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->expireTime(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final parseOverflowPt$utrace_lib_release(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;",
            ">;"
        }
    .end annotation

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->parseOverflowPtToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->parseOverflowPtListToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
