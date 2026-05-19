.class public final Lcom/oplus/utrace/hlog/ULoggerImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/utrace/sdk/IULogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;

.field private static final FLUSH_INTERVAL:J = 0x7530L

.field private static final FLUSH_LOG_COUNT:I = 0x64

.field private static final FLUSH_SYNC_INTERVAL:J = 0x493e0L

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.HLog.ULoggerImpl"


# instance fields
.field private final activityLifecycleCallbacks:Lcom/oplus/utrace/hlog/ULoggerImpl$activityLifecycleCallbacks$1;

.field private final context:Landroid/content/Context;

.field private volatile isRequestOpenId:Z

.field private lastFlushTime:J

.field private lastSyncFlushTime:J

.field private final logFilePath:Ljava/lang/String;

.field private final logPrefix:Ljava/lang/String;

.field private logger:Lcom/oplus/log/Logger;

.field private pendingLogCount:I

.field private receiver:Lcom/oplus/utrace/hlog/HLogReceiver;

.field private volatile retryCount:I

.field private simpleLog:Lcom/oplus/log/ISimpleLog;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/ULoggerImpl;->Companion:Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/utrace/hlog/HLogUtils;->defaultLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logFilePath:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/utrace/utils/TraceUtil;->generateLogPrefix$utrace_sdk_fullRelease(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    sget-object v1, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-virtual {v1}, Lcom/oplus/utrace/sdk/UTraceApp;->getMEnabled$utrace_sdk_fullRelease()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    sget-object v2, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled()Z

    move-result v2

    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init ULoggerImpl. switchOn="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " logEnabled="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " context="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-virtual {v3, v0, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_74

    if-eqz v2, :cond_74

    sget-object p1, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {p1}, Lcom/oplus/utrace/hlog/HLogUtils;->getExecutor$utrace_sdk_fullRelease()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    const-string v0, "HLogUtils.executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/splitscreen/e;

    invoke-direct {v0, p0, p2}, Lcom/oplus/splitscreen/e;-><init>(Lcom/oplus/utrace/hlog/ULoggerImpl;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    :cond_74
    new-instance p1, Lcom/oplus/utrace/hlog/ULoggerImpl$activityLifecycleCallbacks$1;

    invoke-direct {p1, p0}, Lcom/oplus/utrace/hlog/ULoggerImpl$activityLifecycleCallbacks$1;-><init>(Lcom/oplus/utrace/hlog/ULoggerImpl;)V

    iput-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->activityLifecycleCallbacks:Lcom/oplus/utrace/hlog/ULoggerImpl$activityLifecycleCallbacks$1;

    return-void
.end method

.method private static final _init_$lambda-0(Lcom/oplus/utrace/hlog/ULoggerImpl;Ljava/lang/String;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogUtils;->isInPlugin()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogUtils;->ensureLibraryDirectories$utrace_sdk_fullRelease()V

    :cond_13
    sget-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getOuid$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_22

    goto :goto_24

    :cond_22
    const/4 v1, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x1

    :goto_25
    if-eqz v1, :cond_2d

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/oplus/utrace/hlog/ULoggerImpl;->initOpenId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_39

    :cond_2d
    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getOuid$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, v0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->initLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method

.method public static synthetic a(Lcom/oplus/utrace/hlog/ULoggerImpl;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->release$lambda-5(Lcom/oplus/utrace/hlog/ULoggerImpl;)V

    return-void
.end method

.method public static final synthetic access$getLogPrefix$p(Lcom/oplus/utrace/hlog/ULoggerImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$tryFlush(Lcom/oplus/utrace/hlog/ULoggerImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/utrace/hlog/ULoggerImpl;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/utrace/hlog/ULoggerImpl;->_init_$lambda-0(Lcom/oplus/utrace/hlog/ULoggerImpl;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/oplus/utrace/hlog/ULoggerImpl;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush$lambda-6(Lcom/oplus/utrace/hlog/ULoggerImpl;Z)V

    return-void
.end method

.method private final checkOuid(Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_d

    :cond_b
    move v1, v0

    goto :goto_e

    :cond_d
    :goto_d
    move v1, p0

    :goto_e
    if-eqz v1, :cond_11

    return v0

    :cond_11
    const/4 v1, 0x4

    const-string v2, "0"

    const-string v3, ""

    invoke-static {p1, v2, v3, v0, v1}, Lk7/m;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_22

    move p1, p0

    goto :goto_23

    :cond_22
    move p1, v0

    :goto_23
    if-eqz p1, :cond_26

    return v0

    :cond_26
    return p0
.end method

.method private final initLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " initLogger() context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-virtual {p2, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logFilePath:Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/oplus/utrace/hlog/HLogUtils;->buildLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/log/Logger;

    move-result-object p3

    iput-object p3, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    if-nez p3, :cond_29

    const/4 p3, 0x0

    goto :goto_2d

    :cond_29
    invoke-virtual {p3}, Lcom/oplus/log/Logger;->getSimpleLog()Lcom/oplus/log/ISimpleLog;

    move-result-object p3

    :goto_2d
    iput-object p3, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " initLogger() logger="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " simpleLog="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " logFilePath="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logFilePath:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    if-nez p3, :cond_63

    goto :goto_71

    :cond_63
    sget-object v0, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-virtual {v0, p3}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->setLogger$utrace_sdk_fullRelease(Lcom/oplus/log/Logger;)V

    invoke-virtual {v0, p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->register$utrace_sdk_fullRelease(Landroid/content/Context;)Lcom/oplus/utrace/hlog/HLogReceiver;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->receiver:Lcom/oplus/utrace/hlog/HLogReceiver;

    invoke-virtual {p2, p0}, Lcom/oplus/utrace/utils/Logs;->setLogger(Lcom/oplus/utrace/utils/ILogger;)V

    :goto_71
    invoke-direct {p0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->registerActivityLifecycleCallback()V

    return-void
.end method

.method private final initOpenId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    const-string v3, " initOpenId() moduleName="

    const-string v4, " isRequestOpenId="

    invoke-static {v1, v2, v3, p2, v4}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->isRequestOpenId:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->isRequestOpenId:Z

    if-eqz v1, :cond_23

    return-void

    :cond_23
    sget-object v1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getOuid$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oplus/utrace/hlog/ULoggerImpl;->checkOuid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " checkOuid=true"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4c
    iget v3, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->retryCount:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_5d

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    const-string p1, " initOpenId retryCount is more than 3,so will not request ouid"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    const/4 v3, 0x1

    :try_start_5e
    iput-boolean v3, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->isRequestOpenId:Z

    iget-object v4, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    const-string v5, " initOpenId() start request openId"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/stdid/sdk/StdIDSDK;->init(Landroid/content/Context;)V

    sget v4, Lcom/oplus/stdid/bean/StdIDInfo;->Type_OUID:I

    invoke-static {p1, v4}, Lcom/oplus/stdid/sdk/StdIDSDK;->getStdIds(Landroid/content/Context;I)Lcom/oplus/stdid/bean/StdIDInfo;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->isRequestOpenId:Z

    invoke-virtual {v4}, Lcom/oplus/stdid/bean/StdIDInfo;->getOUID()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oplus/utrace/hlog/ULoggerImpl;->checkOuid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a2

    iget p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->retryCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->retryCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " initOpenId() end request openId ,openId is null.retryCount="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->retryCount:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    :cond_a2
    iput v5, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->retryCount:I

    invoke-virtual {v4}, Lcom/oplus/stdid/bean/StdIDInfo;->getOUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->setOuid$utrace_sdk_fullRelease(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getOuid$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v1}, Lcom/oplus/utrace/hlog/ULoggerImpl;->initLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    const-string p2, " initOpenId() end request openId and is not null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c0
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_c2
    .catchall {:try_start_5e .. :try_end_c2} :catchall_c3

    goto :goto_c8

    :catchall_c3
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_c8
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_cf

    goto :goto_ee

    :cond_cf
    sget-object p2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " initOpenId() exception="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v2, p0, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_ee
    return-void
.end method

.method private final registerActivityLifecycleCallback()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/app/Application;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    goto :goto_16

    :cond_11
    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->activityLifecycleCallbacks:Lcom/oplus/utrace/hlog/ULoggerImpl$activityLifecycleCallbacks$1;

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_16
    return-void
.end method

.method private static final release$lambda-5(Lcom/oplus/utrace/hlog/ULoggerImpl;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " release() logger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    if-nez v0, :cond_29

    goto :goto_2f

    :cond_29
    invoke-virtual {v0}, Lcom/oplus/log/Logger;->quit()V

    invoke-virtual {v0}, Lcom/oplus/log/Logger;->exit()V

    :goto_2f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    iput-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->retryCount:I

    iput v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->pendingLogCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->lastFlushTime:J

    iput-wide v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->lastSyncFlushTime:J

    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->receiver:Lcom/oplus/utrace/hlog/HLogReceiver;

    if-nez v1, :cond_44

    goto :goto_49

    :cond_44
    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/oplus/utrace/hlog/HLogReceiver;->unregister$utrace_sdk_fullRelease(Landroid/content/Context;)V

    :goto_49
    iput-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->receiver:Lcom/oplus/utrace/hlog/HLogReceiver;

    sget-object v1, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-virtual {v1, v0}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->setLogger$utrace_sdk_fullRelease(Lcom/oplus/log/Logger;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->unregisterActivityLifecycleCallback()V

    return-void
.end method

.method private final tryFlush(Z)V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {v0}, Lcom/oplus/utrace/hlog/HLogUtils;->getExecutor$utrace_sdk_fullRelease()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "HLogUtils.executor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/oplus/smartsdk/themecard/a;

    invoke-direct {v1, p0, p1}, Lcom/oplus/smartsdk/themecard/a;-><init>(Lcom/oplus/utrace/hlog/ULoggerImpl;Z)V

    invoke-static {v0, v1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final tryFlush$lambda-6(Lcom/oplus/utrace/hlog/ULoggerImpl;Z)V
    .registers 11

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->lastFlushTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_39

    if-eqz p1, :cond_1f

    iget v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->pendingLogCount:I

    if-lez v2, :cond_1d

    move v2, v3

    goto :goto_3b

    :cond_1d
    move v2, v4

    goto :goto_3b

    :cond_1f
    iget v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->pendingLogCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->pendingLogCount:I

    const/16 v5, 0x64

    if-lt v2, v5, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    move v2, v4

    :goto_2b
    iget-wide v5, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->lastSyncFlushTime:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0x493e0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_37

    goto :goto_3b

    :cond_37
    move v3, v4

    goto :goto_3b

    :cond_39
    move v2, v4

    move v3, v2

    :goto_3b
    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    if-nez v2, :cond_42

    goto :goto_45

    :cond_42
    invoke-virtual {v2, v3}, Lcom/oplus/log/Logger;->flush(Z)V

    :goto_45
    iput v4, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->pendingLogCount:I

    iput-wide v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->lastFlushTime:J

    if-eqz v3, :cond_4d

    iput-wide v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->lastSyncFlushTime:J

    :cond_4d
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " do flush logger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " forceFlush="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " sync="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " version=1.4.6-a7b48bd-20240806-102432"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-virtual {v0, p1, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method private final unregisterActivityLifecycleCallback()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/app/Application;

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    if-nez v0, :cond_11

    goto :goto_16

    :cond_11
    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->activityLifecycleCallbacks:Lcom/oplus/utrace/hlog/ULoggerImpl$activityLifecycleCallbacks$1;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :goto_16
    return-void
.end method


# virtual methods
.method public available()Z
    .registers 2

    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v1, p1, p2}, Lcom/oplus/log/ISimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, v0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "message"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v0, p1, p2}, Lcom/oplus/log/ISimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, p3}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return p3
.end method

.method public deleteLog()V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deleteLog() logger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    if-nez p0, :cond_24

    goto :goto_27

    :cond_24
    invoke-virtual {p0}, Lcom/oplus/log/Logger;->deleteLogFile()V

    :goto_27
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v1, p1, p2}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, v0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "message"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v0, p1, p2}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, p3}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return p3
.end method

.method public final getLogFilePath$utrace_sdk_fullRelease()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v1, p1, p2}, Lcom/oplus/log/ISimpleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, v0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "message"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v0, p1, p2}, Lcom/oplus/log/ISimpleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, p3}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return p3
.end method

.method public println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_d

    invoke-static {p2}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v0

    :goto_e
    if-nez v2, :cond_8b

    if-eqz p3, :cond_1a

    invoke-static {p3}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v1

    :cond_1a
    :goto_1a
    if-eqz v0, :cond_1e

    goto/16 :goto_8b

    :cond_1e
    const/4 v0, 0x2

    if-eq p1, v0, :cond_52

    const/4 v0, 0x3

    if-eq p1, v0, :cond_49

    const/4 v0, 0x4

    if-eq p1, v0, :cond_40

    const/4 v0, 0x5

    if-eq p1, v0, :cond_37

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2e

    goto :goto_5a

    :cond_2e
    :try_start_2e
    iget-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez p1, :cond_33

    goto :goto_5a

    :cond_33
    invoke-interface {p1, p2, p3}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_37
    iget-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez p1, :cond_3c

    goto :goto_5a

    :cond_3c
    invoke-interface {p1, p2, p3}, Lcom/oplus/log/ISimpleLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_40
    iget-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez p1, :cond_45

    goto :goto_5a

    :cond_45
    invoke-interface {p1, p2, p3}, Lcom/oplus/log/ISimpleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_49
    iget-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez p1, :cond_4e

    goto :goto_5a

    :cond_4e
    invoke-interface {p1, p2, p3}, Lcom/oplus/log/ISimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_52
    iget-object p1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez p1, :cond_57

    goto :goto_5a

    :cond_57
    invoke-interface {p1, p2, p3}, Lcom/oplus/log/ISimpleLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    invoke-direct {p0, v1}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_5f
    .catchall {:try_start_2e .. :try_end_5f} :catchall_60

    goto :goto_65

    :catchall_60
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_65
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6c

    goto :goto_8b

    :cond_6c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8b
    :goto_8b
    return v1
.end method

.method public release()V
    .registers 3

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {v0}, Lcom/oplus/utrace/hlog/HLogUtils;->getExecutor$utrace_sdk_fullRelease()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "HLogUtils.executor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/android/wm/shell/common/c;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/common/c;-><init>(Lcom/oplus/utrace/hlog/ULoggerImpl;)V

    invoke-static {v0, v1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;)V
    .registers 18

    const-string v1, "business"

    const-string v3, "traceId"

    const-string v5, "subType"

    move-object v0, p1

    move-object v2, p2

    move-object/from16 v4, p8

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    iget-object v0, v0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logger:Lcom/oplus/log/Logger;

    if-nez v0, :cond_13

    goto :goto_1e

    :cond_13
    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/log/Logger;->upload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;)V

    :goto_1e
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v1, p1, p2}, Lcom/oplus/log/ISimpleLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, v0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "message"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v0, p1, p2}, Lcom/oplus/log/ISimpleLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, p3}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return p3
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_b
    iget-object v1, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v1, p1, p2}, Lcom/oplus/log/ISimpleLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, v0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5

    const-string p3, "tag"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "message"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_b
    iget-object v0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->simpleLog:Lcom/oplus/log/ISimpleLog;

    if-nez v0, :cond_10

    goto :goto_13

    :cond_10
    invoke-interface {v0, p1, p2}, Lcom/oplus/log/ISimpleLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    invoke-direct {p0, p3}, Lcom/oplus/utrace/hlog/ULoggerImpl;->tryFlush(Z)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_1e
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_44

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->logPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exception="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_44
    return p3
.end method
