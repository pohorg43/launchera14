.class public final Lcom/oplus/utrace/sdk/internal/SdkConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

.field private static final KEY_SDK_CONFIG_DATA:Ljava/lang/String; = "key_sdk_config_data"

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.SdkConfig"

.field private static volatile configData:Lcom/oplus/utrace/lib/SdkConfigData;

.field private static coreState:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->loadFromSp()Lcom/oplus/utrace/lib/SdkConfigData;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->queryIfExpired$lambda-5(Landroid/content/Context;)V

    return-void
.end method

.method private final configDataChanged()V
    .registers 2

    sget-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-direct {p0, v0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->saveToSp(Lcom/oplus/utrace/lib/SdkConfigData;)V

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData;->getLogsDebuggable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/utrace/utils/Logs;->setDebuggable(Z)V

    return-void
.end method

.method public static synthetic getConfigData$utrace_sdk_fullRelease$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final loadFromSp()Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 14

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    goto :goto_25

    :cond_8
    const-string v1, "key_sdk_config_data"

    invoke-static {p0, v1}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_25

    :cond_11
    invoke-static {p0}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object p0, v0

    :goto_1b
    if-nez p0, :cond_1e

    goto :goto_25

    :cond_1e
    sget-object v0, Lcom/oplus/utrace/lib/SdkConfigData;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->createFromJSONString(Ljava/lang/String;)Lcom/oplus/utrace/lib/SdkConfigData;

    move-result-object p0

    move-object v0, p0

    :goto_25
    if-nez v0, :cond_39

    new-instance v0, Lcom/oplus/utrace/lib/SdkConfigData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/16 v11, 0x3f

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/oplus/utrace/lib/SdkConfigData;-><init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_39
    return-object v0
.end method

.method private final queryIfExpired()V
    .registers 4

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_13

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "UTrace.Sdk.SdkConfig"

    const-string v1, "queryIfExpired() context==null ==> coreState=false"

    invoke-virtual {p0, v0, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->coreState:Z

    return-void

    :cond_13
    sget-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v0}, Lcom/oplus/utrace/lib/SdkConfigData;->isExpired()Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    :cond_1c
    sget-object v0, Lcom/oplus/utrace/utils/TraceUtil;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/TraceUtil;->getCommonExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/h1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/h1;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final queryIfExpired$lambda-5(Landroid/content/Context;)V
    .registers 15

    sget-object v0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->INSTANCE:Lcom/oplus/utrace/sdk/internal/SdkConfig;

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-direct {v0, p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->querySdkConfig(Landroid/content/Context;)Lcom/oplus/utrace/lib/SdkConfigData;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    sput-boolean v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->coreState:Z

    if-nez p0, :cond_46

    new-instance p0, Lcom/oplus/utrace/lib/SdkConfigData;

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled()Z

    move-result v3

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData;->getOverflow()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object v4

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData;->getOverflowPt()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData;->getLogsDebuggable()Z

    move-result v6

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData;->getTraceCacheMetrics()Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    move-result-object v7

    sget-object v1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1}, Lcom/oplus/utrace/lib/SdkConfigData;->getBindWindow()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    const/16 v12, 0x40

    const/4 v13, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Lcom/oplus/utrace/lib/SdkConfigData;-><init>(ZLcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;Ljava/lang/String;ZLcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_46
    sput-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "queryIfExpired() receive="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " coreState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oplus/utrace/sdk/internal/SdkConfig;->coreState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " version=1.4.6-a7b48bd-20240806-102432"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.SdkConfig"

    invoke-virtual {p0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configDataChanged()V

    :cond_70
    return-void
.end method

.method private final querySdkConfig(Landroid/content/Context;)Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 9

    const-string p0, "UTrace.Sdk.SdkConfig"

    const/4 v0, 0x0

    :try_start_3
    sget-object v1, Lcom/oplus/utrace/utils/Providers;->INSTANCE:Lcom/oplus/utrace/utils/Providers;

    const-string v3, "query_sdk_config"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/oplus/utrace/utils/Providers;->callCoreProvider$default(Lcom/oplus/utrace/utils/Providers;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p1

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, "querySdkConfig() result="

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1e

    :goto_1c
    move-object p1, v0

    goto :goto_37

    :cond_1e
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    move-object p1, v0

    :goto_28
    if-nez p1, :cond_2b

    goto :goto_1c

    :cond_2b
    sget-object v1, Lcom/oplus/utrace/lib/SdkConfigData;->Companion:Lcom/oplus/utrace/lib/SdkConfigData$Companion;

    invoke-virtual {v1, p1}, Lcom/oplus/utrace/lib/SdkConfigData$Companion;->createFromBundle(Landroid/os/Bundle;)Lcom/oplus/utrace/lib/SdkConfigData;

    move-result-object p1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_32

    goto :goto_37

    :catchall_32
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_37
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3e

    goto :goto_4d

    :cond_3e
    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "querySdkConfig() exception="

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4d
    instance-of p0, p1, Lh4/k$a;

    if-eqz p0, :cond_52

    goto :goto_53

    :cond_52
    move-object v0, p1

    :goto_53
    check-cast v0, Lcom/oplus/utrace/lib/SdkConfigData;

    return-object v0
.end method

.method private final saveToSp(Lcom/oplus/utrace/lib/SdkConfigData;)V
    .registers 3

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_10

    :cond_7
    invoke-virtual {p1}, Lcom/oplus/utrace/lib/SdkConfigData;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_sdk_config_data"

    invoke-static {p0, v0, p1}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void
.end method


# virtual methods
.method public final getBindWindow()J
    .registers 3

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->queryIfExpired()V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getBindWindow()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getConfigData$utrace_sdk_fullRelease()Lcom/oplus/utrace/lib/SdkConfigData;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    return-object p0
.end method

.method public final getCoreAvailable()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->queryIfExpired()V

    sget-boolean p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->coreState:Z

    return p0
.end method

.method public final getExpireTime()J
    .registers 3

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getExpireTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOverflow()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->queryIfExpired()V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getOverflow()Lcom/oplus/utrace/lib/SdkConfigData$FlowCtrl;

    move-result-object p0

    return-object p0
.end method

.method public final getOverflowPt()Ljava/util/Map;
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

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->queryIfExpired()V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getFlowCtrlPt()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getTraceCacheMetrics()Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->queryIfExpired()V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->getTraceCacheMetrics()Lcom/oplus/utrace/lib/SdkConfigData$TraceCacheMetrics;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled()Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/sdk/internal/SdkConfig;->queryIfExpired()V

    sget-object p0, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/SdkConfigData;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final setConfigData$utrace_sdk_fullRelease(Lcom/oplus/utrace/lib/SdkConfigData;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/oplus/utrace/sdk/internal/SdkConfig;->configData:Lcom/oplus/utrace/lib/SdkConfigData;

    return-void
.end method
