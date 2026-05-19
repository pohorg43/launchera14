.class public final Lcom/oplus/utrace/hlog/PushData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/PushData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/hlog/PushData$Companion;

.field private static final KEY_BEGINTIME:Ljava/lang/String; = "beginTime"

.field private static final KEY_BUSINESS:Ljava/lang/String; = "business"

.field private static final KEY_ENDTIME:Ljava/lang/String; = "endTime"

.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field private static final KEY_TRACEID:Ljava/lang/String; = "traceId"

.field private static final KEY_TRACEPKG:Ljava/lang/String; = "tracePkg"

.field private static final KEY_USEWIFI:Ljava/lang/String; = "useWifi"


# instance fields
.field private final beginTime:J

.field private final business:Ljava/lang/String;

.field private final endTime:J

.field private final extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final traceId:J

.field private final tracePkg:Ljava/lang/String;

.field private final useWifi:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/PushData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/PushData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/PushData;->Companion:Lcom/oplus/utrace/hlog/PushData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/oplus/utrace/hlog/PushData;-><init>(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "business"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracePkg"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    iput-wide p2, p0, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    iput-wide p4, p0, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    iput-wide p6, p0, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    iput-boolean p8, p0, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    iput-object p9, p0, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    iput-object p10, p0, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p12, p11, 0x1

    const-string v0, ""

    if-eqz p12, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p12, p11, 0x2

    const-wide/16 v1, 0x0

    if-eqz p12, :cond_e

    move-wide p2, v1

    :cond_e
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_13

    move-wide p4, v1

    :cond_13
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_18

    move-wide p6, v1

    :cond_18
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_1d

    const/4 p8, 0x0

    :cond_1d
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_22

    move-object p9, v0

    :cond_22
    and-int/lit8 p11, p11, 0x40

    if-eqz p11, :cond_2b

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object p10, Li4/z;->a:Li4/z;

    :cond_2b
    invoke-direct/range {p0 .. p10}, Lcom/oplus/utrace/hlog/PushData;-><init>(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/oplus/utrace/hlog/PushData;
    .registers 24

    move-object v0, p0

    and-int/lit8 v1, p11, 0x1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v1, p1

    :goto_9
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_10

    iget-wide v2, v0, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    goto :goto_11

    :cond_10
    move-wide v2, p2

    :goto_11
    and-int/lit8 v4, p11, 0x4

    if-eqz v4, :cond_18

    iget-wide v4, v0, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    goto :goto_19

    :cond_18
    move-wide v4, p4

    :goto_19
    and-int/lit8 v6, p11, 0x8

    if-eqz v6, :cond_20

    iget-wide v6, v0, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    goto :goto_22

    :cond_20
    move-wide/from16 v6, p6

    :goto_22
    and-int/lit8 v8, p11, 0x10

    if-eqz v8, :cond_29

    iget-boolean v8, v0, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    goto :goto_2b

    :cond_29
    move/from16 v8, p8

    :goto_2b
    and-int/lit8 v9, p11, 0x20

    if-eqz v9, :cond_32

    iget-object v9, v0, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    goto :goto_34

    :cond_32
    move-object/from16 v9, p9

    :goto_34
    and-int/lit8 v10, p11, 0x40

    if-eqz v10, :cond_3b

    iget-object v10, v0, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    goto :goto_3d

    :cond_3b
    move-object/from16 v10, p10

    :goto_3d
    move-object p1, v1

    move-wide p2, v2

    move-wide p4, v4

    move-wide/from16 p6, v6

    move/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    invoke-virtual/range {p0 .. p10}, Lcom/oplus/utrace/hlog/PushData;->copy(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;)Lcom/oplus/utrace/hlog/PushData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    return-wide v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    return-wide v0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    return-wide v0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;)Lcom/oplus/utrace/hlog/PushData;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/utrace/hlog/PushData;"
        }
    .end annotation

    const-string v0, "business"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracePkg"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/utrace/hlog/PushData;

    move-object v1, v0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lcom/oplus/utrace/hlog/PushData;-><init>(Ljava/lang/String;JJJZLjava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/hlog/PushData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/hlog/PushData;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    iget-wide v5, p1, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-wide v3, p0, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    iget-wide v5, p1, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget-wide v3, p0, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    iget-wide v5, p1, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_32

    return v2

    :cond_32
    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    iget-boolean v3, p1, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    if-eq v1, v3, :cond_39

    return v2

    :cond_39
    iget-object v1, p0, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    return v2

    :cond_44
    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    iget-object p1, p1, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    return v2

    :cond_4f
    return v0
.end method

.method public final getBeginTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    return-wide v0
.end method

.method public final getBusiness()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    return-object p0
.end method

.method public final getEndTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    return-wide v0
.end method

.method public final getExtras()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    return-object p0
.end method

.method public final getTraceId()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    return-wide v0
.end method

.method public final getTracePkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    return-object p0
.end method

.method public final getUseWifi()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    return p0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    :cond_21
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toJsonString()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getBusiness()Ljava/lang/String;

    move-result-object v1

    const-string v2, "business"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v1

    const-string v3, "traceId"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getBeginTime()J

    move-result-wide v1

    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getEndTime()J

    move-result-wide v1

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getUseWifi()Z

    move-result v1

    const-string v2, "useWifi"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getTracePkg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tracePkg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/PushData;->getExtras()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4c

    :cond_66
    const-string p0, "extras"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JSONObject().apply {\n   …  })\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "PushData(business="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/utrace/hlog/PushData;->business:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", traceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/PushData;->traceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", beginTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/PushData;->beginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/hlog/PushData;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", useWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/PushData;->useWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", tracePkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/hlog/PushData;->tracePkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/utrace/hlog/PushData;->extras:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
