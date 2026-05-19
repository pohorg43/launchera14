.class public final Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/hlog/ULoggerImpl;
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

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;->quit$lambda-0()V

    return-void
.end method

.method private static final quit$lambda-0()V
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->release()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized doQueryHLogConfig(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->loadHLogConfigFromSp(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->queryHLogConfig(Landroid/content/Context;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final quit()V
    .registers 3

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lcom/oplus/utrace/utils/TraceUtil;->generateLogPrefix$utrace_sdk_fullRelease$default(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " quit()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.HLog.ULoggerImpl"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogUtils;->getExecutor$utrace_sdk_fullRelease()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "HLogUtils.executor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/utrace/hlog/d;->a:Lcom/oplus/utrace/hlog/d;

    invoke-static {v0, v1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogUtils;->getExecutor$utrace_sdk_fullRelease()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
