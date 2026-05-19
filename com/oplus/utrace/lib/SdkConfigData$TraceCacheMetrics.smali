.class public final Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/lib/SdkConfigData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TraceCacheMetrics"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;

.field private static final DELAY_ADDTRACE_LIST:J = 0x1f4L

.field private static final INVALID_VALUE:I = 0x0

.field private static final KEY_DELAY_ADDTRACE_LIST:Ljava/lang/String; = "key_delay_addtrace_list"

.field private static final KEY_MAX_PENDING_RECORDS_L1:Ljava/lang/String; = "key_max_pending_records_l1"

.field private static final KEY_MAX_PENDING_RECORDS_L2:Ljava/lang/String; = "key_max_pending_records_l2"

.field private static final MAX_PENDING_RECORDS_L1:I = 0x3e8

.field private static final MAX_PENDING_RECORDS_L2:I = 0x32


# instance fields
.field private final delayAddTraceList:J

.field private final maxPendingRecordsL1:I

.field private final maxPendingRecordsL2:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;-><init>(IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    iput p2, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    iput-wide p3, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    return-void
.end method

.method public synthetic constructor <init>(IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    const/16 p1, 0x3e8

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    const/16 p2, 0x32

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    const-wide/16 p3, 0x1f4

    :cond_12
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;-><init>(IIJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;IIJILjava/lang/Object;)Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-wide p3, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->copy(IIJ)Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    return p0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    return-wide v0
.end method

.method public final copy(IIJ)Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
    .registers 5

    new-instance p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;-><init>(IIJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    iget v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    iget v3, p1, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    iget v3, p1, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-wide v3, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    iget-wide p0, p1, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_23

    return v2

    :cond_23
    return v0
.end method

.method public final getDelayAddTraceList()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    return-wide v0
.end method

.method public final getMaxPendingRecordsL1()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    return p0
.end method

.method public final getMaxPendingRecordsL2()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toJsonString$utrace_lib_release()Ljava/lang/String;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->getMaxPendingRecordsL1()I

    move-result v1

    const-string v2, "key_max_pending_records_l1"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->getMaxPendingRecordsL2()I

    move-result v1

    const-string v2, "key_max_pending_records_l2"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->getDelayAddTraceList()J

    move-result-wide v1

    const-string p0, "key_delay_addtrace_list"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JSONObject().also {\n    …ist)\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "TraceCacheMetrics(maxPendingRecordsL1="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxPendingRecordsL2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->maxPendingRecordsL2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayAddTraceList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->delayAddTraceList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
