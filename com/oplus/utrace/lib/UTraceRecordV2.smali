.class public final Lcom/oplus/utrace/lib/UTraceRecordV2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/lib/UTraceRecordV2$Companion;,
        Lcom/oplus/utrace/lib/UTraceRecordV2$Status;,
        Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;,
        Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/lib/UTraceRecordV2$Companion;

.field private static final KEY_CURRENT:Ljava/lang/String; = "current"

.field private static final KEY_END_TIME:Ljava/lang/String; = "endTime"

.field private static final KEY_HAS_ERROR:Ljava/lang/String; = "hasError"

.field private static final KEY_INFO:Ljava/lang/String; = "info"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_SPAN_NAME:Ljava/lang/String; = "spanName"

.field private static final KEY_SPAN_TYPE:Ljava/lang/String; = "spanType"

.field private static final KEY_START_TIME:Ljava/lang/String; = "startTime"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final KEY_TAGS:Ljava/lang/String; = "tags"

.field private static final KEY_TRACE_ID:Ljava/lang/String; = "traceID"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private current:Lcom/oplus/utrace/lib/NodeID;

.field private endTime:J

.field private hasError:I

.field private info:Ljava/lang/String;

.field private parent:Lcom/oplus/utrace/lib/NodeID;

.field private spanName:Ljava/lang/String;

.field private spanType:I

.field private startTime:J

.field private status:I

.field private statusCode:I

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private traceID:Ljava/lang/String;

.field private type:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/lib/UTraceRecordV2$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/lib/UTraceRecordV2$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->Companion:Lcom/oplus/utrace/lib/UTraceRecordV2$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->traceID:Ljava/lang/String;

    new-instance v1, Lcom/oplus/utrace/lib/NodeID;

    invoke-direct {v1}, Lcom/oplus/utrace/lib/NodeID;-><init>()V

    iput-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->current:Lcom/oplus/utrace/lib/NodeID;

    iput-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->info:Ljava/lang/String;

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->NO_ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->hasError:I

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->NONE:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->type:I

    sget-object v0, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanType:I

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v0, Li4/z;->a:Li4/z;

    iput-object v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->tags:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IIIILjava/util/Map;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/lib/NodeID;",
            "Lcom/oplus/utrace/lib/NodeID;",
            "Ljava/lang/String;",
            "JJI",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p15

    const-string v6, "traceID"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "current"

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "spanName"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "info"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "tags"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;-><init>()V

    iput-object v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->traceID:Ljava/lang/String;

    iput-object v2, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->current:Lcom/oplus/utrace/lib/NodeID;

    move-object v1, p3

    iput-object v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->parent:Lcom/oplus/utrace/lib/NodeID;

    iput-object v3, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanName:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->startTime:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->endTime:J

    move/from16 v1, p9

    iput v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->status:I

    iput-object v4, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->info:Ljava/lang/String;

    move/from16 v1, p11

    iput v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->hasError:I

    move/from16 v1, p12

    iput v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->statusCode:I

    move/from16 v1, p13

    iput v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->type:I

    move/from16 v1, p14

    iput v1, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanType:I

    iput-object v5, v0, Lcom/oplus/utrace/lib/UTraceRecordV2;->tags:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IIIILjava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 36

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_b

    :cond_9
    move-object/from16 v5, p3

    :goto_b
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_13

    const-string v1, ""

    move-object v12, v1

    goto :goto_15

    :cond_13
    move-object/from16 v12, p10

    :goto_15
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_21

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->NO_ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result v1

    move v13, v1

    goto :goto_23

    :cond_21
    move/from16 v13, p11

    :goto_23
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    move v14, v1

    goto :goto_2c

    :cond_2a
    move/from16 v14, p12

    :goto_2c
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_38

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->NONE:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v1

    move v15, v1

    goto :goto_3a

    :cond_38
    move/from16 v15, p13

    :goto_3a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_47

    sget-object v1, Lcom/oplus/utrace/lib/SpanType;->CodeSpans:Lcom/oplus/utrace/lib/SpanType;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SpanType;->getValue()I

    move-result v1

    move/from16 v16, v1

    goto :goto_49

    :cond_47
    move/from16 v16, p14

    :goto_49
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_55

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v0, Li4/z;->a:Li4/z;

    move-object/from16 v17, v0

    goto :goto_57

    :cond_55
    move-object/from16 v17, p15

    :goto_57
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    invoke-direct/range {v2 .. v17}, Lcom/oplus/utrace/lib/UTraceRecordV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IIIILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getCurrent()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->current:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final getEndTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->endTime:J

    return-wide v0
.end method

.method public final getHasError()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->hasError:I

    return p0
.end method

.method public final getInfo()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->info:Ljava/lang/String;

    return-object p0
.end method

.method public final getParent()Lcom/oplus/utrace/lib/NodeID;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-object p0
.end method

.method public final getSpanName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpanType()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanType:I

    return p0
.end method

.method public final getStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->startTime:J

    return-wide v0
.end method

.method public final getStatus()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->status:I

    return p0
.end method

.method public final getStatusCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->statusCode:I

    return p0
.end method

.method public final getTags()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->tags:Ljava/util/Map;

    return-object p0
.end method

.method public final getTraceID()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->traceID:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->type:I

    return p0
.end method

.method public final hasError()Z
    .registers 2

    iget p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->hasError:I

    sget-object v0, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final setCurrent(Lcom/oplus/utrace/lib/NodeID;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->current:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public final setEndTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->endTime:J

    return-void
.end method

.method public final setHasError(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->hasError:I

    return-void
.end method

.method public final setInfo(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->info:Ljava/lang/String;

    return-void
.end method

.method public final setParent(Lcom/oplus/utrace/lib/NodeID;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->parent:Lcom/oplus/utrace/lib/NodeID;

    return-void
.end method

.method public final setSpanName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanName:Ljava/lang/String;

    return-void
.end method

.method public final setSpanType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanType:I

    return-void
.end method

.method public final setStartTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->startTime:J

    return-void
.end method

.method public final setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->status:I

    return-void
.end method

.method public final setStatusCode(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->statusCode:I

    return-void
.end method

.method public final setTags(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->tags:Ljava/util/Map;

    return-void
.end method

.method public final setTraceID(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->traceID:Ljava/lang/String;

    return-void
.end method

.method public final setType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->type:I

    return-void
.end method

.method public final toJsonString()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getTraceID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "traceID"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/NodeID;->toJsonString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getParent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    if-nez v1, :cond_23

    const/4 v1, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {v1}, Lcom/oplus/utrace/lib/NodeID;->toJsonString()Ljava/lang/String;

    move-result-object v1

    :goto_27
    const-string v2, "parent"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getSpanName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "spanName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getStartTime()J

    move-result-wide v1

    const-string v3, "startTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getEndTime()J

    move-result-wide v1

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getStatus()I

    move-result v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getHasError()I

    move-result v1

    const-string v2, "hasError"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getStatusCode()I

    move-result v1

    const-string v2, "statusCode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getSpanType()I

    move-result v1

    const-string v2, "spanType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getTags()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p0, "tags"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "toJsonString, "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTraceRecordV2"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "resultJson.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toLegacyObj()Lcom/oplus/utrace/lib/UTraceRecord;
    .registers 14

    new-instance v12, Lcom/oplus/utrace/lib/UTraceRecord;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->traceID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->current:Lcom/oplus/utrace/lib/NodeID;

    iget-object v3, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->parent:Lcom/oplus/utrace/lib/NodeID;

    iget-object v4, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->startTime:J

    iget-wide v7, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->endTime:J

    iget v9, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->status:I

    iget-object v10, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->info:Ljava/lang/String;

    iget v11, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->hasError:I

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/oplus/utrace/lib/UTraceRecord;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;I)V

    return-object v12
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "UTraceRecord(traceID=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->traceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', current="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->current:Lcom/oplus/utrace/lib/NodeID;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/utrace/lib/NodeID;->getSpanID(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->parent:Lcom/oplus/utrace/lib/NodeID;

    if-nez v1, :cond_25

    const/4 v1, 0x0

    goto :goto_29

    :cond_25
    invoke-virtual {v1, v2}, Lcom/oplus/utrace/lib/NodeID;->getSpanID(Z)Ljava/lang/String;

    move-result-object v1

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->hasError:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->spanType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/utrace/lib/UTraceRecordV2;->tags:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
