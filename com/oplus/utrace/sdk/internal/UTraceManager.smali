.class public final Lcom/oplus/utrace/sdk/internal/UTraceManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;
    }
.end annotation


# static fields
.field private static final AGENT_LEVEL_1ST:I = 0x1

.field private static final AGENT_LEVEL_2ND:I = 0x2

.field private static final AGENT_LEVEL_LIST:I = 0x3

.field private static final DELAY_UNBIND:J = 0x2710L

.field private static final EXCP_MAX_COUNT:I = 0x3

.field private static final EXCP_TS_INVALID:J = 0x0L

.field private static final EXCP_TS_UNSET:J = -0x1L

.field public static final INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

.field private static final KEY_EXP_TS:Ljava/lang/String; = "exception_timestamp"

.field private static final MSG_ADDTRACE_LIST:I = 0x1002

.field private static final MSG_UNBIND:I = 0x1001

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.Manager"

.field private static bindInfo:Ljava/lang/String;

.field private static excpCount:I

.field private static excpTS:J

.field private static final logInterval1:Lcom/oplus/utrace/utils/Interval;

.field private static final logInterval2:Lcom/oplus/utrace/utils/Interval;

.field private static mAgentLevel:I

.field private static volatile mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final mHandler$delegate:Lh4/f;

.field private static volatile mIsBinding:Z

.field private static final mPendingRecords:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/oplus/utrace/lib/UTraceRecordV2;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpanNamesL1:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/oplus/utrace/lib/NodeID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpanNamesL2:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/oplus/utrace/lib/NodeID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpanNamesLock:Ljava/lang/Object;

.field private static final overflow:Lcom/oplus/utrace/sdk/internal/Overflow;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    const v0, 0x7fffffff

    sput v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    const-string v0, ""

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindInfo:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesL1:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesL2:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesLock:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/utrace/sdk/internal/Overflow;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/Overflow;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->overflow:Lcom/oplus/utrace/sdk/internal/Overflow;

    sget-object v0, Lcom/oplus/utrace/sdk/internal/c;->a:Lcom/oplus/utrace/sdk/internal/c;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/oplus/utrace/utils/Interval;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/utrace/utils/Interval;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->logInterval1:Lcom/oplus/utrace/utils/Interval;

    new-instance v0, Lcom/oplus/utrace/utils/Interval;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/utrace/utils/Interval;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->logInterval2:Lcom/oplus/utrace/utils/Interval;

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mHandler$delegate:Lh4/f;

    new-instance v0, Lcom/oplus/utrace/sdk/internal/UTraceManager$mConnection$1;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mConnection$1;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->uninit$lambda-39()V

    return-void
.end method

.method public static final synthetic access$getMExecutor$p()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static final synthetic access$getMHandler(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMPendingRecords$p()Ljava/util/LinkedList;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static final synthetic access$isShutdown(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->isShutdown()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$removeExcpTimestamp(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->removeExcpTimestamp()V

    return-void
.end method

.method public static final synthetic access$resetUnbindMessage(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->resetUnbindMessage()V

    return-void
.end method

.method public static final synthetic access$setBindInfo$p(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindInfo:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setExcpTimestamp(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->setExcpTimestamp()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setMAgentLevel$p(I)V
    .registers 1

    sput p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    return-void
.end method

.method public static final synthetic access$setMAgentProxy$p(Lcom/oplus/utrace/lib/IUTraceInterface;)V
    .registers 1

    sput-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    return-void
.end method

.method public static final synthetic access$setMIsBinding$p(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    return-void
.end method

.method public static final synthetic access$tryProxyAddTrace2(Lcom/oplus/utrace/sdk/internal/UTraceManager;)Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->tryProxyAddTrace2()Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$unBindService(Lcom/oplus/utrace/sdk/internal/UTraceManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->unBindService()V

    return-void
.end method

.method public static synthetic addTrace$default(Lcom/oplus/utrace/sdk/internal/UTraceManager;Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .registers 30

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move v10, v1

    goto :goto_b

    :cond_9
    move/from16 v10, p8

    :goto_b
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_13

    const-string v1, ""

    move-object v11, v1

    goto :goto_15

    :cond_13
    move-object/from16 v11, p9

    :goto_15
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_21

    sget-object v1, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->NO_ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2$StatusError;->getValue()I

    move-result v1

    move v12, v1

    goto :goto_23

    :cond_21
    move/from16 v12, p10

    :goto_23
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2a

    const/4 v1, 0x0

    move-object v13, v1

    goto :goto_2c

    :cond_2a
    move-object/from16 v13, p11

    :goto_2c
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_37

    invoke-static {}, Li4/k0;->e()Ljava/util/Map;

    sget-object v0, Li4/z;->a:Li4/z;

    move-object v14, v0

    goto :goto_39

    :cond_37
    move-object/from16 v14, p12

    :goto_39
    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v14}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace(Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static final addTrace$lambda-3(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;JJLjava/lang/String;IILcom/oplus/utrace/lib/UTraceRecordV2$RecordType;Ljava/util/Map;)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$myCtx"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$status"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$info"

    move-object/from16 v13, p7

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$recordType"

    move-object/from16 v3, p10

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$tags"

    move-object/from16 v15, p11

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    :try_start_25
    new-instance v14, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getTraceID$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/utrace/sdk/UTraceContext;->getParent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v6

    move-object/from16 v7, p2

    invoke-direct {v2, v0, v1, v7}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->genSpanName(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->getValue()I

    move-result v12

    invoke-virtual/range {p10 .. p10}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/utrace/sdk/UTraceContextV2;->getSpanType$utrace_sdk_fullRelease()I

    move-result v17

    move-object v3, v14

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    move-object/from16 v13, p7

    move-object v0, v14

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v18, p11

    invoke-direct/range {v3 .. v18}, Lcom/oplus/utrace/lib/UTraceRecordV2;-><init>(Ljava/lang/String;Lcom/oplus/utrace/lib/NodeID;Lcom/oplus/utrace/lib/NodeID;Ljava/lang/String;JJILjava/lang/String;IIIILjava/util/Map;)V

    invoke-direct {v2, v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTraceInThread(Lcom/oplus/utrace/lib/UTraceRecordV2;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_5b
    .catchall {:try_start_25 .. :try_end_5b} :catchall_5c

    goto :goto_61

    :catchall_5c
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_61
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_68

    goto :goto_79

    :cond_68
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "addTrace error: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Sdk.Manager"

    invoke-virtual {v1, v3, v2, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_79
    return-void
.end method

.method private final addTraceInThread(Lcom/oplus/utrace/lib/UTraceRecordV2;)V
    .registers 10

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v1

    const-string v2, " record="

    const-string v3, " isBinding="

    const-string v4, "addTraceInThread() proxy="

    const-string v5, "UTrace.Sdk.Manager"

    if-eqz v1, :cond_30

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_36

    :cond_30
    sget-object v1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->logInterval1:Lcom/oplus/utrace/utils/Interval;

    invoke-virtual {v1}, Lcom/oplus/utrace/utils/Interval;->check()Z

    move-result v1

    :goto_36
    const-string v6, " mAgentLevel="

    if-eqz v1, :cond_78

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " bindInfo="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindInfo:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPendingRecords.size="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->overflow:Lcom/oplus/utrace/sdk/internal/Overflow;

    invoke-virtual {v2, p1}, Lcom/oplus/utrace/sdk/internal/Overflow;->checkIfOverflow(Lcom/oplus/utrace/lib/UTraceRecordV2;)Z

    move-result v2

    if-eqz v2, :cond_81

    return-void

    :cond_81
    sget-object v2, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getTraceCacheMetrics()Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    move-result-object v2

    sget-object v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->getMaxPendingRecordsL1()I

    move-result v4

    if-le p1, v4, :cond_99

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_99
    sget-object p1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    const/16 v4, 0xa

    const-string v7, "addTraceInThread() clear mPendingRecords="

    if-nez p1, :cond_13f

    sget-boolean p1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    if-eqz p1, :cond_a6

    return-void

    :cond_a6
    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->insideExcpTimeWindow()Z

    move-result p1

    if-eqz p1, :cond_105

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result p0

    if-eqz p0, :cond_ec

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "addTraceInThread() insideExpTimeWindow returns true. proc="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_e4
    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ff

    :cond_ec
    if-eqz v1, :cond_ff

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "addTraceInThread() insideExpTimeWindow=true. proc="

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ff
    :goto_ff
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void

    :cond_105
    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindService()Z

    move-result p0

    if-nez p0, :cond_13e

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result p0

    if-eqz p0, :cond_139

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_11e

    :cond_132
    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_139
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_13e
    return-void

    :cond_13f
    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->resetUnbindMessage()V

    const-string p1, "addTraceInThread() mPendingRecords.size="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->getMaxPendingRecordsL2()I

    move-result v1

    const/16 v6, 0x1002

    if-ge p1, v1, :cond_191

    sget p1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    const/4 v1, 0x3

    if-ge p1, v1, :cond_170

    goto :goto_191

    :cond_170
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_21e

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->isShutdown()Z

    move-result p1

    if-eqz p1, :cond_184

    const-string p0, "addTraceInThread() isShutdown=true #1"

    invoke-virtual {v0, v5, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_21e

    :cond_184
    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object p0

    invoke-virtual {v2}, Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;->getDelayAddTraceList()J

    move-result-wide v0

    invoke-virtual {p0, v6, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_21e

    :cond_191
    :goto_191
    const-string p1, "addTraceInThread() tryProxyAddTrace2 invoke"

    invoke-virtual {v0, v5, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->tryProxyAddTrace2()Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    move-result-object p1

    const-string v1, "addTraceInThread tryProxyAddTrace2 returns "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->NEED_REBIND:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    if-ne p1, v1, :cond_1eb

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->unBindService()V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindService()Z

    move-result p0

    if-nez p0, :cond_21e

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result p0

    if-eqz p0, :cond_1e5

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1ca
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1de

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1ca

    :cond_1de
    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e5
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    goto :goto_21e

    :cond_1eb
    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result p0

    if-eqz p0, :cond_219

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v3, v4}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1fe
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_212

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1fe

    :cond_212
    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_219
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    :cond_21e
    :goto_21e
    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mExecutor$lambda-0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private final bindService()Z
    .registers 11

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->isShutdown()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UTrace.Sdk.Manager"

    if-eqz v0, :cond_11

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "bindService() isShutdown=true"

    invoke-virtual {p0, v2, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_11
    sget-object v0, Lcom/oplus/utrace/lib/PackageNames;->INSTANCE:Lcom/oplus/utrace/lib/PackageNames;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/PackageNames;->getCORE_APPS()[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v0

    move v5, v1

    :goto_1f
    if-ge v5, v4, :cond_39

    aget-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.oplus.utrace.core.UTraceService"

    invoke-direct {v8, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_39
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/Intent;

    sget-object v5, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v6, "当前尝试解析的intent为 "

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-string v6, "it"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v4}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->resolveServiceIntent(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_3d

    goto :goto_64

    :cond_63
    const/4 v3, 0x0

    :goto_64
    check-cast v3, Landroid/content/Intent;

    const-string v0, "binding:"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindInfo:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez v3, :cond_7e

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v3, "当前没有与之匹配的intent，开始记录当前时间戳"

    invoke-virtual {v1, v2, v3}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->setExcpTimestamp()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_7e
    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "当前满足条件的intent为 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " (version=1.4.6-a7b48bd-20240806-102432) context="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a0
    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_a7

    goto :goto_b1

    :cond_a7
    sput-boolean v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->resetUnbindMessage()V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v3, p0, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_b1
    .catchall {:try_start_a0 .. :try_end_b1} :catchall_b8

    :goto_b1
    :try_start_b1
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_b3
    .catchall {:try_start_b1 .. :try_end_b3} :catchall_b5

    move v3, v0

    goto :goto_be

    :catchall_b5
    move-exception p0

    move v3, v0

    goto :goto_ba

    :catchall_b8
    move-exception p0

    move v3, v1

    :goto_ba
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_be
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_c5

    goto :goto_102

    :cond_c5
    sget-object v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    sput-boolean v1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    invoke-direct {v3}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object v1

    const/16 v4, 0x1001

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bindService() exception="

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v3}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->setExcpTimestamp()Z

    move-result v1

    xor-int/lit8 v3, v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failure:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindInfo:Ljava/lang/String;

    :goto_102
    return v3
.end method

.method public static synthetic c(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;JJLjava/lang/String;IILcom/oplus/utrace/lib/UTraceRecordV2$RecordType;Ljava/util/Map;)V
    .registers 12

    invoke-static/range {p0 .. p11}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->addTrace$lambda-3(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;JJLjava/lang/String;IILcom/oplus/utrace/lib/UTraceRecordV2$RecordType;Ljava/util/Map;)V

    return-void
.end method

.method private final genSpanName(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p1}, Lcom/oplus/utrace/sdk/UTraceContext;->getCurrent$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/NodeID;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p3, :cond_11

    invoke-static {p3}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    :cond_f
    move v1, p1

    goto :goto_12

    :cond_11
    :goto_11
    move v1, v0

    :goto_12
    if-eqz v1, :cond_2e

    sget-object v1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_17
    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesL1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_29

    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesL2:Landroid/util/LruCache;

    invoke-virtual {v2, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit v1

    goto :goto_2f

    :catchall_2b
    move-exception p0

    monitor-exit v1

    throw p0

    :cond_2e
    move-object v2, p3

    :goto_2f
    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getPkgName$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_3e

    invoke-static {v2}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3e

    :cond_3c
    move v3, p1

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v3, v0

    :goto_3f
    if-eqz v3, :cond_42

    goto :goto_5b

    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5b
    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_5e
    sget-object v3, Lcom/oplus/utrace/lib/UTraceRecordV2$Status;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    if-ne p2, v3, :cond_79

    if-eqz p3, :cond_6a

    invoke-static {p3}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6b

    :cond_6a
    move p1, v0

    :cond_6b
    xor-int/2addr p1, v0

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 p3, 0x0

    :goto_70
    if-nez p3, :cond_73

    goto :goto_8c

    :cond_73
    sget-object p1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesL1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8c

    :cond_79
    sget-object p1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesL1:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_84

    goto :goto_8c

    :cond_84
    sget-object p2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mSpanNamesL2:Landroid/util/LruCache;

    invoke-virtual {p2, p0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_8c
    .catchall {:try_start_5e .. :try_end_8c} :catchall_8e

    :goto_8c
    monitor-exit v2

    return-object v1

    :catchall_8e
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method private final getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mHandler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    return-object p0
.end method

.method private static synthetic getMSpanNamesL2$annotations()V
    .registers 0

    return-void
.end method

.method private final insideExcpTimeWindow()Z
    .registers 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    sget-wide v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-string v2, "UTrace.Sdk.Manager"

    if-nez v0, :cond_36

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    goto :goto_20

    :cond_13
    sget-object v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    const-string v4, "exception_timestamp"

    invoke-static {v0, v4}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->setExcpTS(J)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :goto_20
    if-nez v0, :cond_36

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getExcpTS()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v3, "insideExpTimeWindow return false, context=null excpTS="

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_36
    sget-wide v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_50

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-wide v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "insideExpTimeWindow return false, excpTS="

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->getBindWindow()J

    move-result-wide v5

    div-long v7, v3, v5

    sget-wide v9, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    div-long v5, v9, v5

    cmp-long v0, v3, v9

    if-ltz v0, :cond_6d

    cmp-long v0, v7, v5

    if-nez v0, :cond_69

    goto :goto_6d

    :cond_69
    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->removeExcpTimestamp()V

    goto :goto_96

    :cond_6d
    :goto_6d
    const-string p0, "insideExpTimeWindow return true. nowTime:"

    const-string v0, ",excpTS:"

    invoke-static {p0, v3, v4, v0}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-wide v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",nowTimeEXP:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",expTimeEXP:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0, v2, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindInfo:Ljava/lang/String;

    const/4 v1, 0x1

    :goto_96
    return v1
.end method

.method private final isShutdown()Z
    .registers 1

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p0

    return p0
.end method

.method private static final mExecutor$lambda-0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "UTrace.Sdk.Manager"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

.method private final removeExcpTimestamp()V
    .registers 3

    const/4 p0, 0x0

    sput p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_e

    goto :goto_13

    :cond_e
    const-string v0, "exception_timestamp"

    invoke-static {p0, v0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :goto_13
    return-void
.end method

.method private final resetUnbindMessage()V
    .registers 6

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->isShutdown()Z

    move-result v0

    const-string v2, "UTrace.Sdk.Manager"

    if-eqz v0, :cond_19

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "resetUnbindMessage() isShutdown=true"

    invoke-virtual {p0, v2, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :cond_19
    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object p0

    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_22
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "resetUnbindMessage:Reset the MSG_UNBIND message"

    invoke-virtual {p0, v2, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final resolveServiceIntent(Landroid/content/Intent;)Z
    .registers 4

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_9

    move-object p0, v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :goto_d
    if-nez p0, :cond_11

    move-object p0, v0

    goto :goto_16

    :cond_11
    const/4 v1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    :goto_16
    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_1b
    if-eqz v0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private final setExcpTimestamp()Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    sget p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpCount:I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ge p0, v1, :cond_9

    add-int/2addr p0, v0

    sput p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpCount:I

    :cond_9
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "setExcpTimestamp() excpCount="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Sdk.Manager"

    invoke-virtual {p0, v3, v2}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpCount:I

    if-lt v2, v1, :cond_4a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2d

    goto :goto_49

    :cond_2d
    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getExcpTS()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "setExcpTimestamp() excpTS="

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getExcpTS()J

    move-result-wide v2

    const-string p0, "exception_timestamp"

    invoke-static {v1, p0, v2, v3}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    :goto_49
    return v0

    :cond_4a
    const/4 p0, 0x0

    return p0
.end method

.method private final tryProxyAddTrace2()Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;
    .registers 12

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->logInterval2:Lcom/oplus/utrace/utils/Interval;

    invoke-virtual {p0}, Lcom/oplus/utrace/utils/Interval;->check()Z

    move-result p0

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    const-string v1, "UTrace.Sdk.Manager"

    if-nez v0, :cond_1e

    const-string v0, "tryProxyAddTrace2 proxy is null. return NEED_REBIND"

    if-eqz p0, :cond_16

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    :cond_16
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->NEED_REBIND:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    return-object p0

    :cond_1e
    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    const-string v2, "null cannot be cast to non-null type com.oplus.utrace.lib.IUTraceInterface"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v0, "tryProxyAddTrace2 mPendingRecords is empty, return NO_CACHE"

    if-eqz p0, :cond_37

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_37
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->NO_CACHE:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    return-object p0

    :cond_3f
    sget v3, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    const/4 v4, 0x3

    const-string v5, "tryProxyAddTrace, addTraces: "

    const/4 v6, 0x2

    if-lt v3, v4, :cond_e3

    :try_start_47
    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v3}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v4

    const/16 v7, 0xa

    if-eqz v4, :cond_7b

    const-string v4, "tryProxyAddTrace2 addTraces records="

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v9}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_74
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v7}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/utrace/lib/UTraceRecordV2;

    invoke-virtual {v4}, Lcom/oplus/utrace/lib/UTraceRecordV2;->toJsonString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    :cond_9e
    invoke-interface {v0, v3}, Lcom/oplus/utrace/lib/IUTraceInterface;->addTraces(Ljava/util/List;)I

    move-result v2

    const-string v3, "tryProxyAddTrace2 addTraces returns "

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz p0, :cond_b4

    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v4, v1, v3}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b9

    :cond_b4
    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v4, v1, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b9
    if-eqz v2, :cond_be

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->OK:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    return-object p0

    :cond_be
    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_c0
    .catchall {:try_start_47 .. :try_end_c0} :catchall_c1

    goto :goto_c6

    :catchall_c1
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_c6
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_cd

    goto :goto_e1

    :cond_cd
    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, v2, Ljava/lang/SecurityException;

    if-eqz v2, :cond_e1

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->REJECT:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    return-object p0

    :cond_e1
    :goto_e1
    sput v6, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    :cond_e3
    sget-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mPendingRecords:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/utrace/lib/UTraceRecordV2;

    :try_start_f5
    sget v4, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    const/4 v7, 0x1

    if-ne v4, v6, :cond_128

    sget-object v4, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v8, "tryProxyAddTrace2 addTrace2 record="

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->toJsonString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/oplus/utrace/lib/IUTraceInterface;->addTrace2(Ljava/lang/String;)I

    move-result v8

    const-string v9, "tryProxyAddTrace2 addTrace2 returns "

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    if-eqz p0, :cond_121

    invoke-virtual {v4, v1, v9}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_124

    :cond_121
    invoke-virtual {v4, v1, v9}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_124
    if-nez v8, :cond_128

    sput v7, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    :cond_128
    sget v4, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentLevel:I

    if-ne v4, v7, :cond_177

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result v4

    sget-object v8, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->START:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v8}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v8

    if-eq v4, v8, :cond_152

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result v4

    sget-object v8, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->ERROR:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v8}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v8

    if-eq v4, v8, :cond_152

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getType()I

    move-result v4

    sget-object v8, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->END:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    invoke-virtual {v8}, Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;->getValue()I

    move-result v8

    if-ne v4, v8, :cond_151

    goto :goto_152

    :cond_151
    const/4 v7, 0x0

    :cond_152
    :goto_152
    if-eqz v7, :cond_155

    goto :goto_156

    :cond_155
    const/4 v3, 0x0

    :goto_156
    if-nez v3, :cond_159

    goto :goto_177

    :cond_159
    const-string v4, "tryProxyAddTrace2 addTrace record="

    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->getCurrent()Lcom/oplus/utrace/lib/NodeID;

    move-result-object v7

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz p0, :cond_16b

    sget-object v7, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v7, v1, v4}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_170

    :cond_16b
    sget-object v7, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v7, v1, v4}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_170
    invoke-virtual {v3}, Lcom/oplus/utrace/lib/UTraceRecordV2;->toLegacyObj()Lcom/oplus/utrace/lib/UTraceRecord;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/oplus/utrace/lib/IUTraceInterface;->addTrace(Lcom/oplus/utrace/lib/UTraceRecord;)V

    :cond_177
    :goto_177
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_179
    .catchall {:try_start_f5 .. :try_end_179} :catchall_17a

    goto :goto_17f

    :catchall_17a
    move-exception v3

    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_17f
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_187

    goto/16 :goto_e9

    :cond_187
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of p0, v3, Ljava/lang/SecurityException;

    if-eqz p0, :cond_19b

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->REJECT:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    goto :goto_19d

    :cond_19b
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->NEED_REBIND:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    :goto_19d
    return-object p0

    :cond_19e
    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;->OK:Lcom/oplus/utrace/sdk/internal/UTraceManager$AddTraceResult;

    return-object p0
.end method

.method private final unBindService()V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "UTrace.Sdk.Manager"

    const-string v2, "unBindService()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "unbinding"

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->bindInfo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object p0

    const/16 v0, 0x1001

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-boolean p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    const/4 v0, 0x0

    if-nez p0, :cond_22

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    if-eqz p0, :cond_20

    goto :goto_22

    :cond_20
    move p0, v0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p0, 0x1

    :goto_23
    const/4 v2, 0x0

    sput-object v2, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mAgentProxy:Lcom/oplus/utrace/lib/IUTraceInterface;

    sput-boolean v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mIsBinding:Z

    if-eqz p0, :cond_60

    :try_start_2a
    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_31

    goto :goto_3e

    :cond_31
    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v2, Lh4/z;->a:Lh4/z;
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_3e
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_45

    goto :goto_60

    :cond_45
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, "unBindService() error: "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    :goto_60
    return-void
.end method

.method private static final uninit$lambda-39()V
    .registers 1

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->unBindService()V

    return-void
.end method


# virtual methods
.method public final addTrace(Lcom/oplus/utrace/sdk/UTraceContextV2;JJLcom/oplus/utrace/lib/UTraceRecordV2$Status;Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/utrace/sdk/UTraceContextV2;",
            "JJ",
            "Lcom/oplus/utrace/lib/UTraceRecordV2$Status;",
            "Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v11, p7

    move-object/from16 v8, p9

    const-string v0, "myCtx"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordType"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    move-object/from16 v12, p12

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTrace() myCtx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " hasError="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p10

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " recordType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " statusCode="

    const-string v5, " startTime="

    move/from16 v10, p8

    invoke-static {v3, v8, v4, v10, v5}, Landroidx/constraintlayout/core/state/i;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-wide/from16 v4, p2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " endTime="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p4

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " spanName="

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p11

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "UTrace.Sdk.Manager"

    invoke-virtual {v0, v14, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v14, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v0, "mExecutor"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v15, Lcom/oplus/utrace/sdk/internal/a;

    move-object v0, v15

    move-object/from16 v3, p11

    invoke-direct/range {v0 .. v12}, Lcom/oplus/utrace/sdk/internal/a;-><init>(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;JJLjava/lang/String;IILcom/oplus/utrace/lib/UTraceRecordV2$RecordType;Ljava/util/Map;)V

    invoke-static {v14, v15}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final crossDevice$utrace_sdk_fullRelease(Ljava/lang/String;)V
    .registers 2

    const-string p0, "traceID"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getExcpCount()I
    .registers 1

    sget p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpCount:I

    return p0
.end method

.method public final getExcpTS()J
    .registers 3

    sget-wide v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    return-wide v0
.end method

.method public final setExcpCount(I)V
    .registers 2

    sput p1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpCount:I

    return-void
.end method

.method public final setExcpTS(J)V
    .registers 3

    sput-wide p1, Lcom/oplus/utrace/sdk/internal/UTraceManager;->excpTS:J

    return-void
.end method

.method public final uninit$utrace_sdk_fullRelease()V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "UTrace.Sdk.Manager"

    const-string v2, "uninit()"

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->getMHandler()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object p0

    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const-string v0, "mExecutor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/sdk/internal/b;->a:Lcom/oplus/utrace/sdk/internal/b;

    invoke-static {p0, v0}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
