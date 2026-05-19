.class public final Lcom/oplus/utrace/test/UTraceTestUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/test/UTraceTestUtils;

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.Test"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/test/UTraceTestUtils;

    invoke-direct {v0}, Lcom/oplus/utrace/test/UTraceTestUtils;-><init>()V

    sput-object v0, Lcom/oplus/utrace/test/UTraceTestUtils;->INSTANCE:Lcom/oplus/utrace/test/UTraceTestUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final finishTrace(Lcom/oplus/utrace/sdk/UTraceContext;Z)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "parentCtx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tail"

    const-string v1, "2"

    invoke-static {p0, v0, v1}, Lcom/oplus/utrace/sdk/UTrace;->start(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "finishTrace: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.Test"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    sget-object p1, Lcom/oplus/utrace/sdk/CompletionType;->COMPLETE:Lcom/oplus/utrace/sdk/CompletionType;

    goto :goto_21

    :cond_1f
    sget-object p1, Lcom/oplus/utrace/sdk/CompletionType;->GOAHEAD:Lcom/oplus/utrace/sdk/CompletionType;

    :goto_21
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final startNewTrace(Lcom/oplus/utrace/lib/SpanType;Ljava/util/Map;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/lib/SpanType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/utrace/sdk/UTraceContext;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "spanType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "head"

    const-string v1, "1"

    invoke-static {v0, v1, p0}, Lcom/oplus/utrace/sdk/UTrace;->startHead(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/utrace/sdk/UTrace;->addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V

    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "startNewTrace: "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.Test"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1, p1}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic startNewTrace$default(Lcom/oplus/utrace/lib/SpanType;Ljava/util/Map;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 4

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_6

    sget-object p0, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    :cond_6
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_f

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object p1, Li4/z;->a:Li4/z;

    :cond_f
    invoke-static {p0, p1}, Lcom/oplus/utrace/test/UTraceTestUtils;->startNewTrace(Lcom/oplus/utrace/lib/SpanType;Ljava/util/Map;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method
