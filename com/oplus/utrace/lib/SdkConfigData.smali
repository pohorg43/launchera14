.class public final Lcom/oplus/utrace/lib/SdkConfigData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrlPt0;,
        Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;,
        Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;,
        Lcom/oplus/utrace/lib/SdkConfigData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/lib/SdkConfigData$Companion;

.field private static final DEFAULT_BIND_WINDOW:J

.field private static final DEFAULT_OVERFLOW:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

.field public static final EMPTY_JSON_ARRAY:Ljava/lang/String; = "[]"

.field private static final KEY_BIND_WINDOW:Ljava/lang/String; = "bind_window"

.field private static final KEY_EXPIRE_TIME:Ljava/lang/String; = "expire_time"

.field private static final KEY_IS_ENABLED:Ljava/lang/String; = "is_enabled"

.field private static final KEY_LOGS_DEBUGGABLE:Ljava/lang/String; = "logs_debuggable"

.field private static final KEY_MAX_FLOW:Ljava/lang/String; = "max_flow"

.field private static final KEY_OVERFLOW_MAX:Ljava/lang/String; = "overflow_max"

.field private static final KEY_OVERFLOW_PT:Ljava/lang/String; = "overflow_pt"

.field private static final KEY_OVERFLOW_WINDOW:Ljava/lang/String; = "overflow_window"

.field private static final KEY_PATTERN:Ljava/lang/String; = "pattern"

.field private static final KEY_TRACE_CACHE_METRICS:Ljava/lang/String; = "trace_cache_metrics"

.field private static final KEY_WINDOW:Ljava/lang/String; = "window"

.field public static final METHOD_QUERY_SDK_CONFIG:Ljava/lang/String; = "query_sdk_config"

.field private static final TAG:Ljava/lang/String; = "UTrace.Lib.SdkConfigData"


# instance fields
.field private final bindWindow:J

.field private final expireTime:J

.field private final flowCtrlPt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;",
            ">;"
        }
    .end annotation
.end field

.field private final isEnabled:Z

.field private final logsDebuggable:Z

.field private final overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

.field private final overflowPt:Ljava/lang/String;

.field private final traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/oplus/utrace/lib/SdkConfigData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/lib/SdkConfigData;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$Companion;

    new-instance v1, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    const-wide/16 v2, 0x3e8

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;-><init>(JJ)V

    sput-object v1, Lcom/oplus/utrace/lib/SdkConfigData;->DEFAULT_OVERFLOW:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->bindWindow(Z)J

    move-result-wide v0

    sput-wide v0, Lcom/oplus/utrace/lib/SdkConfigData;->DEFAULT_BIND_WINDOW:J

    return-void
.end method

.method public constructor <init>()V
    .registers 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x7f

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/oplus/utrace/lib/SdkConfigData;-><init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJ)V
    .registers 11

    const-string v0, "overflow"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overflowPt"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceCacheMetrics"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    iput-object p2, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    iput-object p3, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    iput-object p5, p0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    iput-wide p6, p0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    iput-wide p8, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    sget-object p1, Lcom/oplus/utrace/lib/SdkConfigData;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$Companion;

    invoke-virtual {p1, p3}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->parseOverflowPt$utrace_lib_release(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->flowCtrlPt:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 25

    and-int/lit8 v0, p10, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    move v0, p1

    :goto_8
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/oplus/utrace/lib/SdkConfigData;->DEFAULT_OVERFLOW:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    goto :goto_10

    :cond_f
    move-object v2, p2

    :goto_10
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_17

    const-string v3, "[]"

    goto :goto_19

    :cond_17
    move-object/from16 v3, p3

    :goto_19
    and-int/lit8 v4, p10, 0x8

    if-eqz v4, :cond_24

    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v4}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v4

    goto :goto_26

    :cond_24
    move/from16 v4, p4

    :goto_26
    and-int/lit8 v5, p10, 0x10

    if-eqz v5, :cond_37

    new-instance v5, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;-><init>(IIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_39

    :cond_37
    move-object/from16 v5, p5

    :goto_39
    and-int/lit8 v6, p10, 0x20

    if-eqz v6, :cond_40

    sget-wide v6, Lcom/oplus/utrace/lib/SdkConfigData;->DEFAULT_BIND_WINDOW:J

    goto :goto_42

    :cond_40
    move-wide/from16 v6, p6

    :goto_42
    and-int/lit8 v8, p10, 0x40

    if-eqz v8, :cond_4d

    sget-object v8, Lcom/oplus/utrace/lib/SdkConfigData;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$Companion;

    invoke-virtual {v8, v1}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->expireTime(Z)J

    move-result-wide v8

    goto :goto_4f

    :cond_4d
    move-wide/from16 v8, p8

    :goto_4f
    move p1, v0

    move-object p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move-object/from16 p5, v5

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    invoke-direct/range {p0 .. p9}, Lcom/oplus/utrace/lib/SdkConfigData;-><init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJ)V

    return-void
.end method

.method public static final synthetic access$getDEFAULT_BIND_WINDOW$cp()J
    .registers 2

    sget-wide v0, Lcom/oplus/utrace/lib/SdkConfigData;->DEFAULT_BIND_WINDOW:J

    return-wide v0
.end method

.method public static final synthetic access$getDEFAULT_OVERFLOW$cp()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/lib/SdkConfigData;->DEFAULT_OVERFLOW:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/oplus/utrace/lib/SdkConfigData;ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJILjava/lang/Object;)Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 22

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    goto :goto_9

    :cond_8
    move v1, p1

    :goto_9
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    goto :goto_11

    :cond_10
    move-object v2, p2

    :goto_11
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_18

    iget-object v3, v0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    goto :goto_19

    :cond_18
    move-object v3, p3

    :goto_19
    and-int/lit8 v4, p10, 0x8

    if-eqz v4, :cond_20

    iget-boolean v4, v0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    goto :goto_21

    :cond_20
    move v4, p4

    :goto_21
    and-int/lit8 v5, p10, 0x10

    if-eqz v5, :cond_28

    iget-object v5, v0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    goto :goto_29

    :cond_28
    move-object v5, p5

    :goto_29
    and-int/lit8 v6, p10, 0x20

    if-eqz v6, :cond_30

    iget-wide v6, v0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    goto :goto_32

    :cond_30
    move-wide/from16 v6, p6

    :goto_32
    and-int/lit8 v8, p10, 0x40

    if-eqz v8, :cond_39

    iget-wide v8, v0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    goto :goto_3b

    :cond_39
    move-wide/from16 v8, p8

    :goto_3b
    move p1, v1

    move-object p2, v2

    move-object p3, v3

    move p4, v4

    move-object p5, v5

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    invoke-virtual/range {p0 .. p9}, Lcom/oplus/utrace/lib/SdkConfigData;->copy(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJ)Lcom/oplus/utrace/lib/SdkConfigData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    return p0
.end method

.method public final component2()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    return p0
.end method

.method public final component5()Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    return-object p0
.end method

.method public final component6()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    return-wide v0
.end method

.method public final component7()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    return-wide v0
.end method

.method public final copy(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJ)Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 21

    const-string v0, "overflow"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overflowPt"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceCacheMetrics"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/utrace/lib/SdkConfigData;

    move-object v1, v0

    move v2, p1

    move v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Lcom/oplus/utrace/lib/SdkConfigData;-><init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/utrace/lib/SdkConfigData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/utrace/lib/SdkConfigData;

    iget-boolean v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    iget-boolean v3, p1, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    iget-object v3, p1, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    iget-boolean v3, p1, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    if-eq v1, v3, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    iget-object v3, p1, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-wide v3, p0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    iget-wide v5, p1, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-wide v3, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    iget-wide p0, p1, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4d

    return v2

    :cond_4d
    return v0
.end method

.method public final getBindWindow()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    return-wide v0
.end method

.method public final getExpireTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    return-wide v0
.end method

.method public final getFlowCtrlPt()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->flowCtrlPt:Ljava/util/Map;

    return-object p0
.end method

.method public final getLogsDebuggable()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    return p0
.end method

.method public final getOverflow()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    return-object p0
.end method

.method public final getOverflowPt()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    return-object p0
.end method

.method public final getTraceCacheMetrics()Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v0, v2, v3}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-boolean v2, p0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    if-eqz v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    const/16 v0, 0x1f

    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    return p0
.end method

.method public final isExpired()Z
    .registers 5

    sget-object v0, Lcom/oplus/utrace/lib/SdkConfigData;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$Companion;

    invoke-static {v0}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->access$now(Lcom/oplus/utrace/lib/SdkConfigData$Companion;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final toJSONString()Ljava/lang/String;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled()Z

    move-result v1

    const-string v2, "is_enabled"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getOverflow()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getMaxFlow()J

    move-result-wide v1

    const-string v3, "overflow_max"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getOverflow()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getWindow()J

    move-result-wide v1

    const-string v3, "overflow_window"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getOverflowPt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "overflow_pt"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getLogsDebuggable()Z

    move-result v1

    const-string v2, "logs_debuggable"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getTraceCacheMetrics()Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->toJsonString$utrace_lib_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace_cache_metrics"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getBindWindow()J

    move-result-wide v1

    const-string v3, "bind_window"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getExpireTime()J

    move-result-wide v1

    const-string p0, "expire_time"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JSONObject().let {\n     …ime)\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "SdkConfigData(isEnabled="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", overflow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", overflowPt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", logsDebuggable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", traceCacheMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bindWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expireTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToBundle(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled:Z

    const-string v1, "is_enabled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getMaxFlow()J

    move-result-wide v0

    const-string v2, "overflow_max"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflow:Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;->getWindow()J

    move-result-wide v0

    const-string v2, "overflow_window"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->overflowPt:Ljava/lang/String;

    const-string v1, "overflow_pt"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->logsDebuggable:Z

    const-string v1, "logs_debuggable"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->traceCacheMetrics:Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->toJsonString$utrace_lib_release()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trace_cache_metrics"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->bindWindow:J

    const-string v2, "bind_window"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/oplus/utrace/lib/SdkConfigData;->expireTime:J

    const-string p0, "expire_time"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
