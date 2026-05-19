.class public final Lcom/oplus/utrace/sdk/internal/Overflow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/sdk/internal/Overflow$Companion;,
        Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;,
        Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;,
        Lcom/oplus/utrace/sdk/internal/Overflow$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/sdk/internal/Overflow$Companion;

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.Overflow"


# instance fields
.field private final flowPtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;",
            ">;"
        }
    .end annotation
.end field

.field private final overflowTraceIds:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/sdk/internal/Overflow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/sdk/internal/Overflow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/Overflow;->Companion:Lcom/oplus/utrace/sdk/internal/Overflow$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow;->overflowTraceIds:Landroid/util/LruCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow;->flowPtMap:Ljava/util/HashMap;

    return-void
.end method

.method private final getFlowKeyFromErrorCode(Lcom/oplus/utrace/lib/UTraceRecordV2;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result p0

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_15

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getStatusCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method private final getFlowKeyFromErrorInfo(Lcom/oplus/utrace/lib/UTraceRecordV2;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result p0

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_11

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getInfo()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method private final getFlowKeyFromSpanName(Lcom/oplus/utrace/lib/UTraceRecordV2;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getSpanName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x28

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v0, v1}, Lk7/q;->E(Ljava/lang/CharSequence;CIZI)I

    move-result p1

    const/16 v2, 0x29

    invoke-static {p0, v2, v0, v0, v1}, Lk7/q;->E(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    if-lez p1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_2f

    if-lez v0, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2f

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String…ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2f
    return-object p0
.end method

.method private final updateAndCheckFlowPt(Lcom/oplus/utrace/lib/UTraceRecordV2;Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;)Z
    .registers 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getOverflowPt()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    return v3

    :cond_10
    sget-object v2, Lcom/oplus/utrace/sdk/internal/Overflow$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v2, v3, :cond_59

    const/4 v6, 0x2

    if-eq v2, v6, :cond_54

    const/4 v7, 0x3

    if-ne v2, v7, :cond_4e

    invoke-direct/range {p0 .. p1}, Lcom/oplus/utrace/sdk/internal/Overflow;->getFlowKeyFromErrorInfo(Lcom/oplus/utrace/lib/UTraceRecordV2;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2a

    move-object v7, v4

    goto :goto_5d

    :cond_2a
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getOverflowPt()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-static {v2, v8, v5, v6}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v8

    if-eqz v8, :cond_36

    goto :goto_4b

    :cond_4a
    move-object v7, v4

    :goto_4b
    check-cast v7, Ljava/lang/String;

    goto :goto_5d

    :cond_4e
    new-instance v0, Lh4/h;

    invoke-direct {v0}, Lh4/h;-><init>()V

    throw v0

    :cond_54
    invoke-direct/range {p0 .. p1}, Lcom/oplus/utrace/sdk/internal/Overflow;->getFlowKeyFromErrorCode(Lcom/oplus/utrace/lib/UTraceRecordV2;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5d

    :cond_59
    invoke-direct/range {p0 .. p1}, Lcom/oplus/utrace/sdk/internal/Overflow;->getFlowKeyFromSpanName(Lcom/oplus/utrace/lib/UTraceRecordV2;)Ljava/lang/String;

    move-result-object v7

    :goto_5d
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-nez v7, :cond_64

    goto :goto_71

    :cond_64
    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getOverflowPt()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    :goto_71
    if-nez v4, :cond_74

    return v3

    :cond_74
    iget-object v1, v0, Lcom/oplus/utrace/sdk/internal/Overflow;->flowPtMap:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;

    if-nez v1, :cond_91

    new-instance v1, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v16}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;-><init>(JJZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v0, Lcom/oplus/utrace/sdk/internal/Overflow;->flowPtMap:Ljava/util/HashMap;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getWindow()J

    move-result-wide v10

    div-long/2addr v8, v10

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAndCheckFlowPt() from="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " flowKey="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " currentFlow="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " now="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " recordType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " flowCtrl="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "UTrace.Sdk.Overflow"

    invoke-virtual {v0, v6, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->getWindow()J

    move-result-wide v6

    cmp-long v0, v8, v6

    const-wide/16 v6, 0x1

    if-eqz v0, :cond_f4

    invoke-virtual {v1, v8, v9}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->setWindow(J)V

    invoke-virtual {v1, v6, v7}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->setFlow(J)V

    invoke-virtual {v1, v5}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->setOverflow(Z)V

    return v3

    :cond_f4
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->getFlow()J

    move-result-wide v8

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getMaxFlow()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_104

    invoke-virtual {v1, v3}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->setOverflow(Z)V

    return v5

    :cond_104
    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->getFlow()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {v1, v8, v9}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->setFlow(J)V

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->getFlow()J

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->getFlow()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getMaxFlow()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_11f

    invoke-virtual {v1, v3}, Lcom/oplus/utrace/sdk/internal/Overflow$FlowPt;->setOverflow(Z)V

    return v5

    :cond_11f
    return v3
.end method


# virtual methods
.method public final checkIfOverflow(Lcom/oplus/utrace/lib/UTraceRecordV2;)Z
    .registers 10

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/sdk/internal/Overflow;->overflowTraceIds:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getTraceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "UTrace.Sdk.Overflow"

    if-eqz v0, :cond_30

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "checkIfOverflow() traceId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getTraceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is marked as overflow"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_30
    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result v0

    sget-object v3, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->TRACE_FLAG:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v3

    const/4 v4, 0x0

    if-ne v0, v3, :cond_3e

    return v4

    :cond_3e
    sget-object v0, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->SPAN_NAME:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    invoke-direct {p0, p1, v0}, Lcom/oplus/utrace/sdk/internal/Overflow;->updateAndCheckFlowPt(Lcom/oplus/utrace/lib/UTraceRecordV2;Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;)Z

    move-result v0

    sget-object v3, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->ERROR_CODE:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    invoke-direct {p0, p1, v3}, Lcom/oplus/utrace/sdk/internal/Overflow;->updateAndCheckFlowPt(Lcom/oplus/utrace/lib/UTraceRecordV2;Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;)Z

    move-result v3

    sget-object v5, Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;->ERROR_INFO:Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;

    invoke-direct {p0, p1, v5}, Lcom/oplus/utrace/sdk/internal/Overflow;->updateAndCheckFlowPt(Lcom/oplus/utrace/lib/UTraceRecordV2;Lcom/oplus/utrace/sdk/internal/Overflow$FlowKeyFrom;)Z

    move-result v5

    if-eqz v0, :cond_58

    if-eqz v3, :cond_58

    if-nez v5, :cond_57

    goto :goto_58

    :cond_57
    return v4

    :cond_58
    :goto_58
    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIfOverflow() overflow: record="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " overflow ( checkFlowPtSpanName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " checkFlowPtErrorCode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " checkFlowPtErrorInfo="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/sdk/internal/Overflow;->overflowTraceIds:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getTraceID()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method
