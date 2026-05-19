.class public final Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/sdk/UTraceContextV2;
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

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSONString(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContextV2;
    .registers 13

    const-string p0, "parent"

    const-string v0, "traceID"

    const-string v1, ""

    const-string v2, "jsonString"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_c
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/oplus/utrace/lib/NodeID;

    const-string p1, "current"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "json.optString(KEY_CURRENT, \"\")"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p1}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3b

    new-instance p1, Lcom/oplus/utrace/lib/NodeID;

    invoke-virtual {v3, p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "json.optString(KEY_PARENT, \"\")"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;)V

    move-object v7, p1

    goto :goto_3c

    :cond_3b
    move-object v7, v2

    :goto_3c
    const-string p0, "spanType"

    sget-object p1, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string p0, "valid"

    sget-object p1, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result p1

    invoke-virtual {v3, p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string p0, "tag"

    invoke-virtual {v3, p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance p0, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/oplus/utrace/sdk/UTraceContextV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;IILjava/lang/String;)V
    :try_end_63
    .catchall {:try_start_c .. :try_end_63} :catchall_64

    return-object p0

    :catchall_64
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_70

    goto :goto_7d

    :cond_70
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "jsonString parse to json error: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTraceContext"

    invoke-virtual {p1, v1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7d
    return-object v2
.end method

.method public final fromLegacyObj$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;
    .registers 9

    const-string p0, "legacy"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v3

    sget-object p1, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v4

    sget-object p1, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/utrace/sdk/UTraceContextV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;IILjava/lang/String;)V

    return-object p0
.end method
