.class public final Lcom/oplus/utrace/hlog/HLogConfigHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

.field private static final MAX_DELAY_DURATION:I = 0x1e

.field private static final MILLS_IN_HOUR:J = 0x36ee80L

.field private static final MIN_DELAY_DURATION:I = 0x12

.field private static final MSG_START_QUERY_CONFIG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.HLogConfigHelper"

.field private static final handler$delegate:Lh4/f;

.field private static isLogEnabled:Z

.field private static logExpireDays:I

.field private static final logFilePath:Ljava/lang/String;

.field private static final logPrefix$delegate:Lh4/f;

.field private static ouid:Ljava/lang/String;

.field private static volatile running:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;-><init>()V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    const/4 v0, 0x7

    sput v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logExpireDays:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logFilePath:Ljava/lang/String;

    sget-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper$logPrefix$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logPrefix$delegate:Lh4/f;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->running:Z

    sget-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->handler$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->doQueryHLogConfig$lambda-7(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$doQueryHLogConfig(Lcom/oplus/utrace/hlog/HLogConfigHelper;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->doQueryHLogConfig(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogConfigHelper;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRunning$p()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->running:Z

    return v0
.end method

.method private final delayQueryConfig()V
    .registers 7

    sget-boolean v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->running:Z

    const-string v1, "UTrace.Sdk.HLogConfigHelper"

    if-nez v0, :cond_16

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    const-string v2, " delayQueryConfig() running=false"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    :try_start_16
    new-instance v0, Ly4/d;

    const/16 v2, 0x12

    const/16 v3, 0x1e

    invoke-direct {v0, v2, v3}, Ly4/d;-><init>(II)V

    sget-object v2, Lw4/c;->a:Lw4/c$a;

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "random"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_54

    :try_start_2b
    invoke-static {v2, v0}, Lw4/d;->a(Lw4/c;Ly4/d;)I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2f} :catch_49
    .catchall {:try_start_2b .. :try_end_2f} :catchall_54

    int-to-long v2, v0

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    :try_start_34
    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getHandler()Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getHandler()Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;

    move-result-object p0

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_59

    :catch_49
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catchall {:try_start_34 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_59
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_60

    goto :goto_83

    :cond_60
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-direct {v3}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " delayQueryConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_83
    return-void
.end method

.method private final doQueryHLogConfig(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doQueryHLogConfig() context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogConfigHelper"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->running:Z

    if-nez v1, :cond_31

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    const-string p1, " doQueryHLogConfig() running=false #1"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_31
    sget-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogUtils;->getExecutor$utrace_sdk_fullRelease()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "HLogUtils.executor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/common/util/x0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/common/util/x0;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final doQueryHLogConfig$lambda-7(Landroid/content/Context;)V
    .registers 16

    const-string v0, "log_enabled"

    const-string v1, "UTrace.Sdk.HLogConfigHelper"

    const-string v2, "$context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    :try_start_b
    sget-object v3, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getFolderSize(Ljava/lang/String;)J

    move-result-wide v3

    sget-boolean v5, Lcom/oplus/utrace/hlog/HLogConfigHelper;->running:Z

    if-nez v5, :cond_26

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-direct {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v2, " doQueryHLogConfig() running=false #2"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_110

    :cond_26
    sget-object v5, Lcom/oplus/utrace/utils/Providers;->INSTANCE:Lcom/oplus/utrace/utils/Providers;

    const-string v6, "get_log_config"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "module"

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getModuleName$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->handleModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "size"

    invoke-virtual {v7, v8, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5, p0, v6, v7}, Lcom/oplus/utrace/utils/Providers;->callCoreProvider(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doQueryHLogConfig() folderSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", query-result="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_6e

    goto/16 :goto_110

    :cond_6e
    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "log_expire_days"

    const/4 v8, 0x7

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    sget-boolean v5, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled:Z

    const/4 v7, 0x1

    if-eq v5, v4, :cond_81

    move v5, v7

    goto :goto_82

    :cond_81
    move v5, v3

    :goto_82
    sget v8, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logExpireDays:I

    if-eq v11, v8, :cond_88

    move v8, v7

    goto :goto_89

    :cond_88
    move v8, v3

    :goto_89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " doQueryHLogConfig() logEnabled="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " expireDays="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " enableChanged="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " expireChanged="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled:Z

    sput v11, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logExpireDays:I

    invoke-static {p0, v0, v4}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v10, "log_expire_days"

    const/4 v12, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    move-object v9, p0

    invoke-static/range {v9 .. v14}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->putInt$default(Landroid/content/Context;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-boolean p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->running:Z

    if-nez p0, :cond_df

    invoke-direct {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    const-string v0, " doQueryHLogConfig() running=false #3"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, v1, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_110

    :cond_df
    if-eqz v5, :cond_f7

    if-eqz v4, :cond_e7

    invoke-direct {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->initHLog()V

    goto :goto_110

    :cond_e7
    sget-object p0, Lcom/oplus/utrace/sdk/ULog;->INSTANCE:Lcom/oplus/utrace/sdk/ULog;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object p0

    if-nez p0, :cond_f0

    goto :goto_f3

    :cond_f0
    invoke-interface {p0}, Lcom/oplus/utrace/sdk/IULogger;->deleteLog()V

    :goto_f3
    invoke-direct {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->releaseHLog()V

    goto :goto_110

    :cond_f7
    if-eqz v4, :cond_110

    if-nez v8, :cond_10d

    sget-object p0, Lcom/oplus/utrace/sdk/ULog;->INSTANCE:Lcom/oplus/utrace/sdk/ULog;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object p0

    if-nez p0, :cond_104

    goto :goto_10b

    :cond_104
    invoke-interface {p0}, Lcom/oplus/utrace/sdk/IULogger;->available()Z

    move-result p0

    if-ne p0, v7, :cond_10b

    move v3, v7

    :cond_10b
    :goto_10b
    if-nez v3, :cond_110

    :cond_10d
    invoke-direct {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->initHLog()V

    :cond_110
    :goto_110
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_112
    .catchall {:try_start_b .. :try_end_112} :catchall_113

    goto :goto_118

    :catchall_113
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_118
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_11f

    goto :goto_142

    :cond_11f
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-direct {v3}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doQueryHLogConfig error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_142
    sget-object p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->delayQueryConfig()V

    return-void
.end method

.method private final getFolderSize(Ljava/lang/String;)J
    .registers 8

    :try_start_0
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3e

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_14

    goto :goto_3e

    :cond_14
    const/4 p1, 0x0

    array-length v2, p0

    :cond_16
    :goto_16
    if-ge p1, v2, :cond_3e

    aget-object v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    :goto_26
    add-long/2addr v0, v3

    goto :goto_16

    :cond_28
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v5, "file.absolutePath"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v3}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getFolderSize(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_3d
    .catchall {:try_start_0 .. :try_end_3d} :catchall_3f

    goto :goto_26

    :cond_3e
    :goto_3e
    return-wide v0

    :catchall_3f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4b

    goto :goto_70

    :cond_4b
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-direct {v1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getFolderSize error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTrace.Sdk.HLogConfigHelper"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_70
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private final getHandler()Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->handler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;

    return-object p0
.end method

.method private final getLogPrefix()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logPrefix$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final initHLog()V
    .registers 8

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getModuleName$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, " initHLog() enter. moduleName="

    const-string v5, " logger="

    invoke-static {v2, v3, v4, v0, v5}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/utrace/sdk/ULog;->INSTANCE:Lcom/oplus/utrace/sdk/ULog;

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTrace.Sdk.HLogConfigHelper"

    invoke-virtual {v1, v4, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object v2

    if-nez v2, :cond_2f

    goto :goto_32

    :cond_2f
    invoke-interface {v2}, Lcom/oplus/utrace/sdk/IULogger;->release()V

    :goto_32
    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3a

    const/4 v2, 0x0

    goto :goto_40

    :cond_3a
    new-instance v6, Lcom/oplus/utrace/hlog/ULoggerImpl;

    invoke-direct {v6, v2, v0}, Lcom/oplus/utrace/hlog/ULoggerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v2, v6

    :goto_40
    invoke-virtual {v3, v2}, Lcom/oplus/utrace/sdk/ULog;->setMLogger$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/IULogger;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    const-string v6, " initHLog() exit. moduleName="

    invoke-static {v2, p0, v6, v0, v5}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final releaseHLog()V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " releaseHLog() logger="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/oplus/utrace/sdk/ULog;->INSTANCE:Lcom/oplus/utrace/sdk/ULog;

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogConfigHelper"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-interface {v0}, Lcom/oplus/utrace/sdk/IULogger;->release()V

    :goto_2f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/utrace/sdk/ULog;->setMLogger$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/IULogger;)V

    return-void
.end method


# virtual methods
.method public final getLogExpireDays()I
    .registers 1

    sget p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logExpireDays:I

    return p0
.end method

.method public final getOuid$utrace_sdk_fullRelease()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->ouid:Ljava/lang/String;

    return-object p0
.end method

.method public final handleModuleName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "moduleName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p0, v0, v0, v1}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final isLogEnabled()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled:Z

    return p0
.end method

.method public final loadHLogConfigFromSp(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "log_enabled"

    invoke-static {p1, v0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled:Z

    const-string v0, "log_expire_days"

    invoke-static {p1, v0}, Lcom/oplus/utrace/utils/SharedPreferencesUtil;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_16

    const/4 p1, 0x7

    :cond_16
    sput p1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logExpireDays:I

    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " loadHLogConfigFromSp() isLogEnabled="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " logExpireDays="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->logExpireDays:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTrace.Sdk.HLogConfigHelper"

    invoke-virtual {p1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final queryHLogConfig(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UTrace.Sdk.HLogConfigHelper"

    if-eqz v0, :cond_20

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, " queryHLogConfig() call doQueryHLogConfig() now"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->doQueryHLogConfig(Landroid/content/Context;)V

    goto :goto_37

    :cond_20
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v2, " queryHLogConfig() send MSG_START_QUERY_CONFIG"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getHandler()Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_37
    return-void
.end method

.method public final release()V
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, " release()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogConfigHelper"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->running:Z

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getHandler()Lcom/oplus/utrace/hlog/HLogConfigHelper$handler$2$1;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public final setOuid$utrace_sdk_fullRelease(Ljava/lang/String;)V
    .registers 2

    sput-object p1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->ouid:Ljava/lang/String;

    return-void
.end method
