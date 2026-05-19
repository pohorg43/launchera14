.class public final Lcom/oplus/utrace/sdk/UTrace;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/sdk/UTrace$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

.field private static final currentContext:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final logInterval1:Lcom/oplus/utrace/utils/Interval;

.field private static final logInterval2:Lcom/oplus/utrace/utils/Interval;

.field private static final nodeSeq:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/utrace/sdk/UTrace;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/UTrace;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/oplus/utrace/sdk/UTrace;->nodeSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/oplus/utrace/utils/Interval;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/utrace/utils/Interval;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/sdk/UTrace;->logInterval1:Lcom/oplus/utrace/utils/Interval;

    new-instance v0, Lcom/oplus/utrace/utils/Interval;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/utrace/utils/Interval;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/sdk/UTrace;->logInterval2:Lcom/oplus/utrace/utils/Interval;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/UTrace;->currentContext:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addSpanTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "myCtx"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v2

    const-string v15, "UTrace.Sdk"

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSpanTags() myCtx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    sget-object v1, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    :try_start_36
    invoke-direct {v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v1

    if-nez v1, :cond_3d

    return-void

    :cond_3d
    const-string v0, "addSpanTags, tags: "

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/oplus/utrace/sdk/ULog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v0

    sget-object v2, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_70

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->switchOn$utrace_sdk_fullRelease()Z

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    sget-object v7, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->SPAN_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x1e0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    invoke-static/range {v0 .. v14}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_70
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_72
    .catchall {:try_start_36 .. :try_end_72} :catchall_73

    goto :goto_78

    :catchall_73
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_78
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7f

    goto :goto_8e

    :cond_7f
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "addSpanTags failure "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8e
    return-void
.end method

.method public static final addTraceTags(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/sdk/UTraceContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    const-string v1, "myCtx"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tags"

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v2

    const-string v15, "UTrace.Sdk"

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTraceTags() myCtx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    sget-object v1, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    :try_start_36
    invoke-direct {v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v1

    if-nez v1, :cond_3d

    return-void

    :cond_3d
    const-string v0, "addTraceTags, tags: "

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/oplus/utrace/sdk/ULog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v0

    sget-object v2, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_70

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->switchOn$utrace_sdk_fullRelease()Z

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-wide/16 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    sget-object v7, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->TRACE_TAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v13, 0x1e0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    invoke-static/range {v0 .. v14}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_70
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_72
    .catchall {:try_start_36 .. :try_end_72} :catchall_73

    goto :goto_78

    :catchall_73
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_78
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7f

    goto :goto_8e

    :cond_7f
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "addTraceTags failure "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v15, v2, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_8e
    return-void
.end method

.method private final checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;
    .registers 6

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p0

    :cond_f
    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v0

    const/16 v1, 0x14

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v3, v2, p0}, Lcom/oplus/utrace/lib/NodeID;->getSpanID$default(Lcom/oplus/utrace/lib/NodeID;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_2b

    return-object p0

    :cond_2b
    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v0

    invoke-static {v0, v3, v2, p0}, Lcom/oplus/utrace/lib/NodeID;->getSpanID$default(Lcom/oplus/utrace/lib/NodeID;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3a

    return-object p0

    :cond_3a
    instance-of p0, p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    if-eqz p0, :cond_41

    check-cast p1, Lcom/oplus/utrace/sdk/UTraceContextV2;

    goto :goto_47

    :cond_41
    sget-object p0, Lcom/oplus/utrace/sdk/UTraceContextV2;->Companion:Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Companion;->fromLegacyObj$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p1

    :goto_47
    return-object p1
.end method

.method private final checkErrorInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1f4

    if-gt p0, v0, :cond_9

    return-object p1

    :cond_9
    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final checkSpanId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_9

    return-object p1

    :cond_9
    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final clearContext()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/sdk/UTrace;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public static final end(Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2, v0}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final end(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/oplus/utrace/sdk/UTrace;->end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final end(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;Z)V
    .registers 22
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "myCtx"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "completionType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "end, completionType: "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Sdk"

    invoke-static {v3, v2}, Lcom/oplus/utrace/sdk/ULog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    :try_start_1b
    invoke-direct {v2, v0}, Lcom/oplus/utrace/sdk/UTrace;->checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v5

    if-nez v5, :cond_22

    return-void

    :cond_22
    invoke-virtual {v5}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v0

    sget-object v2, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_63

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->switchOn$utrace_sdk_fullRelease()Z

    move-result v0

    if-eqz v0, :cond_63

    sget-object v4, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v0, Lcom/oplus/utrace/sdk/UTrace$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_51

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4e

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_GO_AHEAD:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    :goto_4c
    move-object v10, v0

    goto :goto_54

    :cond_4e
    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_RETURN:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    goto :goto_4c

    :cond_51
    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->END_COMPLETE:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    goto :goto_4c

    :goto_54
    sget-object v11, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->END:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e0

    const/16 v18, 0x0

    invoke-static/range {v4 .. v18}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_63
    invoke-static {}, Lcom/oplus/utrace/sdk/UTrace;->clearContext()V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_68
    .catchall {:try_start_1b .. :try_end_68} :catchall_69

    goto :goto_6e

    :catchall_69
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_6e
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_75

    goto :goto_84

    :cond_75
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTrace.end failure "

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_84
    return-void
.end method

.method public static synthetic end$default(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_6

    sget-object p1, Lcom/oplus/utrace/sdk/CompletionType;->GOAHEAD:Lcom/oplus/utrace/sdk/CompletionType;

    :cond_6
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_b

    const/4 p2, 0x0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/oplus/utrace/sdk/UTrace;->end(Lcom/oplus/utrace/sdk/UTraceContext;Lcom/oplus/utrace/sdk/CompletionType;Z)V

    return-void
.end method

.method public static final error(Lcom/oplus/utrace/sdk/UTraceContext;ILjava/lang/String;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v1

    const-string v2, "UTrace.Sdk"

    if-eqz v1, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error() myCtx="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " errorCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " errorInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    sget-object v0, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    :try_start_3a
    invoke-direct {v0, p0}, Lcom/oplus/utrace/sdk/UTrace;->checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0

    if-nez p0, :cond_41

    return-void

    :cond_41
    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/utrace/sdk/UTrace;->errorImpl(Lcom/oplus/utrace/sdk/UTraceContextV2;ILjava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_47

    goto :goto_4c

    :catchall_47
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_4c
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_53

    goto :goto_62

    :cond_53
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTrace.error failure "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_62
    return-void
.end method

.method public static final error(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v1

    const-string v2, "UTrace.Sdk"

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error() myCtx="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " errorInfo="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalAccessException;

    const-string v3, "本方法已废弃"

    invoke-direct {v1, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    const-string v3, "error(UTraceContext, String) 方法已废弃，请调用 error(UTraceContext, Int, String) 方法。"

    invoke-virtual {v0, v2, v3, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3c
    sget-object v0, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    :try_start_3e
    invoke-direct {v0, p0}, Lcom/oplus/utrace/sdk/UTrace;->checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object p0

    if-nez p0, :cond_45

    return-void

    :cond_45
    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, -0x1

    goto :goto_4e

    :cond_4d
    const/4 v1, -0x3

    :goto_4e
    invoke-direct {v0, p0, v1, p1}, Lcom/oplus/utrace/sdk/UTrace;->errorImpl(Lcom/oplus/utrace/sdk/UTraceContextV2;ILjava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_54

    goto :goto_59

    :catchall_54
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_59
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_60

    goto :goto_6f

    :cond_60
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error() failure "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6f
    return-void
.end method

.method private final errorImpl(Lcom/oplus/utrace/sdk/UTraceContextV2;ILjava/lang/String;)V
    .registers 22

    move-object/from16 v0, p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error, errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorInfo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTrace.Sdk"

    invoke-static {v3, v1}, Lcom/oplus/utrace/sdk/ULog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v1

    sget-object v3, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_59

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->switchOn$utrace_sdk_fullRelease()Z

    move-result v1

    if-eqz v1, :cond_59

    sget-object v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v9, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    sget-object v10, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->checkErrorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x300

    const/16 v17, 0x0

    move-object/from16 v4, p1

    move/from16 v11, p2

    invoke-static/range {v3 .. v17}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_59
    return-void
.end method

.method private final generateNodeID(Ljava/lang/String;)Lcom/oplus/utrace/lib/NodeID;
    .registers 4

    new-instance v0, Lcom/oplus/utrace/lib/NodeID;

    if-nez p1, :cond_9

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->genSpanId()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_9
    invoke-direct {p0, p1}, Lcom/oplus/utrace/sdk/UTrace;->checkSpanId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->genSpanId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_11
    sget-object p1, Lcom/oplus/utrace/sdk/UTrace;->nodeSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    const v1, 0x7fffffff

    and-int/2addr p1, v1

    invoke-direct {v0, p0, p1}, Lcom/oplus/utrace/lib/NodeID;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static final getContext()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/sdk/UTrace;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/utrace/sdk/UTraceContext;

    return-object v0
.end method

.method public static final setContext(Lcom/oplus/utrace/sdk/UTraceContext;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "myCtx"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/sdk/UTrace;->currentContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static final setFlag(Lcom/oplus/utrace/sdk/UTraceContext;IJ)V
    .registers 27
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "myCtx"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlags() myCtx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v5}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v6

    const-string v7, "UTrace.Sdk"

    if-eqz v6, :cond_3a

    invoke-virtual {v5, v7, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    :cond_3a
    sget-object v5, Lcom/oplus/utrace/sdk/UTrace;->logInterval2:Lcom/oplus/utrace/utils/Interval;

    new-instance v6, Lcom/oplus/utrace/sdk/UTrace$setFlag$1$1;

    invoke-direct {v6, v1}, Lcom/oplus/utrace/sdk/UTrace$setFlag$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/oplus/utrace/utils/Interval;->exec(Lkotlin/jvm/functions/Function0;)V

    :goto_44
    sget-object v1, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    :try_start_46
    invoke-direct {v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v9

    if-nez v9, :cond_4d

    return-void

    :cond_4d
    invoke-virtual {v9}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v0

    sget-object v1, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_8b

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->switchOn$utrace_sdk_fullRelease()Z

    move-result v0

    if-eqz v0, :cond_8b

    sget-object v8, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-wide/16 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-object v14, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    sget-object v15, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->TRACE_FLAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh4/j;

    invoke-direct {v2, v0, v1}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object v20

    const/16 v21, 0x1e0

    const/16 v22, 0x0

    invoke-static/range {v8 .. v22}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_8b
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_8d
    .catchall {:try_start_46 .. :try_end_8d} :catchall_8e

    goto :goto_93

    :catchall_8e
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_93
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_9a

    goto :goto_a9

    :cond_9a
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "setFlag failure "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a9
    return-void
.end method

.method public static final start(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static final start(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static final start(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 22
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/sdk/UTrace;->checkCtx(Lcom/oplus/utrace/sdk/UTraceContext;)Lcom/oplus/utrace/sdk/UTraceContextV2;

    move-result-object v1

    new-instance v15, Lcom/oplus/utrace/sdk/UTraceContextV2;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    move-object v3, v2

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v3

    :goto_13
    if-nez v3, :cond_19

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->genTraceId()Ljava/lang/String;

    move-result-object v3

    :cond_19
    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Lcom/oplus/utrace/sdk/UTrace;->generateNodeID(Ljava/lang/String;)Lcom/oplus/utrace/lib/NodeID;

    move-result-object v4

    if-nez v1, :cond_23

    move-object v5, v2

    goto :goto_28

    :cond_23
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v0

    move-object v5, v0

    :goto_28
    if-nez v1, :cond_2c

    move-object v0, v2

    goto :goto_34

    :cond_2c
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_34
    if-nez v0, :cond_3d

    sget-object v0, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v0

    goto :goto_41

    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_41
    move v6, v0

    if-nez v1, :cond_46

    move-object v0, v2

    goto :goto_4e

    :cond_46
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_4e
    if-nez v0, :cond_57

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->INVALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v0

    goto :goto_5b

    :cond_57
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_5b
    move v7, v0

    if-nez v1, :cond_60

    move-object v8, v2

    goto :goto_65

    :cond_60
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getTag()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_65
    move-object v2, v15

    invoke-direct/range {v2 .. v8}, Lcom/oplus/utrace/sdk/UTraceContextV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;IILjava/lang/String;)V

    invoke-static {v15}, Lcom/oplus/utrace/sdk/UTrace;->setContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    const-string v0, "start, spanName: "

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "UTrace.Sdk"

    invoke-static {v14, v0}, Lcom/oplus/utrace/sdk/ULog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_79
    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->switchOn$utrace_sdk_fullRelease()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start() parentCtx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " myCtx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " UTraceApp.mEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/UTraceApp;->getMEnabled$utrace_sdk_fullRelease()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " switchOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " SdkConfig.isEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " SdkConfig.coreAvailable="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getCoreAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v3}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-virtual {v3, v14, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    :cond_d6
    sget-object v3, Lcom/oplus/utrace/sdk/UTrace;->logInterval1:Lcom/oplus/utrace/utils/Interval;

    new-instance v4, Lcom/oplus/utrace/sdk/UTrace$start$1$1$1;

    invoke-direct {v4, v2}, Lcom/oplus/utrace/sdk/UTrace$start$1$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/oplus/utrace/utils/Interval;->exec(Lkotlin/jvm/functions/Function0;)V

    :goto_e0
    invoke-virtual {v15}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getValid$utrace_sdk_fullRelease()I

    move-result v2

    sget-object v3, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->VALID:Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/UTraceContextV2$Valid;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_111

    if-eqz v0, :cond_111

    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    sget-object v8, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    sget-object v9, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;
    :try_end_fa
    .catchall {:try_start_79 .. :try_end_fa} :catchall_119

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x2e0

    const/16 v17, 0x0

    move-object v3, v15

    move-object/from16 v13, p2

    move-object v1, v14

    move-object v14, v0

    move-object/from16 v18, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    :try_start_10d
    invoke-static/range {v2 .. v16}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_114

    :cond_111
    move-object v1, v14

    move-object/from16 v18, v15

    :goto_114
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_116
    .catchall {:try_start_10d .. :try_end_116} :catchall_117

    goto :goto_121

    :catchall_117
    move-exception v0

    goto :goto_11d

    :catchall_119
    move-exception v0

    move-object v1, v14

    move-object/from16 v18, v15

    :goto_11d
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_121
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_128

    goto :goto_131

    :cond_128
    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_131
    return-object v18
.end method

.method public static synthetic start$default(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 6

    and-int/lit8 p4, p3, 0x2

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_b

    move-object p2, v0

    :cond_b
    invoke-static {p0, p1, p2}, Lcom/oplus/utrace/sdk/UTrace;->start(Lcom/oplus/utrace/sdk/UTraceContext;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static final startHead()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 2
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v0, v0, v0, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->startHead$default(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object v0

    return-object v0
.end method

.method public static final startHead(Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 3
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v0, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->startHead$default(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static final startHead(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 4
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/oplus/utrace/sdk/UTrace;->startHead$default(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static final startHead(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 22
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "spanType"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lcom/oplus/utrace/sdk/UTraceContextV2;

    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->genTraceId()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/oplus/utrace/sdk/UTrace;->INSTANCE:Lcom/oplus/utrace/sdk/UTrace;

    move-object/from16 v3, p0

    invoke-direct {v0, v3}, Lcom/oplus/utrace/sdk/UTrace;->generateNodeID(Ljava/lang/String;)Lcom/oplus/utrace/lib/NodeID;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x30

    const/4 v9, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v9}, Lcom/oplus/utrace/sdk/UTraceContextV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v15}, Lcom/oplus/utrace/sdk/UTrace;->setContext(Lcom/oplus/utrace/sdk/UTraceContext;)V

    const-string v0, "startHead, spanName: "

    move-object/from16 v12, p1

    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "UTrace.Sdk"

    invoke-static {v14, v0}, Lcom/oplus/utrace/sdk/ULog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_33
    invoke-static {}, Lcom/oplus/utrace/utils/TraceUtil;->switchOn$utrace_sdk_fullRelease()Z

    move-result v0

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v2

    if-eqz v2, :cond_6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHead() myCtx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " UTraceApp.mEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/UTraceApp;->getMEnabled$utrace_sdk_fullRelease()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " switchOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    :cond_6a
    sget-object v1, Lcom/oplus/utrace/sdk/UTrace;->logInterval1:Lcom/oplus/utrace/utils/Interval;

    new-instance v2, Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;

    invoke-direct {v2, v15, v0}, Lcom/oplus/utrace/sdk/UTrace$startHead$1$1;-><init>(Lcom/oplus/utrace/sdk/UTraceContextV2;Z)V

    invoke-virtual {v1, v2}, Lcom/oplus/utrace/utils/Interval;->exec(Lkotlin/jvm/functions/Function0;)V

    :goto_74
    if-eqz v0, :cond_98

    sget-object v1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    sget-object v7, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    sget-object v8, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;
    :try_end_82
    .catchall {:try_start_33 .. :try_end_82} :catchall_a1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v0, 0x2e0

    const/16 v16, 0x0

    move-object v2, v15

    move-object/from16 v12, p1

    move-object/from16 v17, v14

    move v14, v0

    move-object/from16 v18, v15

    move-object/from16 v15, v16

    :try_start_94
    invoke-static/range {v1 .. v15}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_9c

    :cond_98
    move-object/from16 v17, v14

    move-object/from16 v18, v15

    :goto_9c
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_9f

    goto :goto_aa

    :catchall_9f
    move-exception v0

    goto :goto_a6

    :catchall_a1
    move-exception v0

    move-object/from16 v17, v14

    move-object/from16 v18, v15

    :goto_a6
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_aa
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_b1

    goto :goto_bc

    :cond_b1
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-virtual {v1, v3, v2, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_bc
    return-object v18
.end method

.method public static synthetic startHead$default(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;ILjava/lang/Object;)Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 6

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_6

    move-object p0, v0

    :cond_6
    and-int/lit8 p4, p3, 0x2

    if-eqz p4, :cond_b

    move-object p1, v0

    :cond_b
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_11

    sget-object p2, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    :cond_11
    invoke-static {p0, p1, p2}, Lcom/oplus/utrace/sdk/UTrace;->startHead(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/utrace/lib/SpanType;)Lcom/oplus/utrace/sdk/UTraceContext;

    move-result-object p0

    return-object p0
.end method
