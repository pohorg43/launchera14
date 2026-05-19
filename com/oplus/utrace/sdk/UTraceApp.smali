.class public final Lcom/oplus/utrace/sdk/UTraceApp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final FLAG_ENABLE_CORE:I = 0x1

.field public static final FLAG_IN_SEEDLING_PLUGIN:I = 0x2

.field public static final INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

.field private static mContext:Landroid/content/Context;

.field private static mEnabled:Z

.field private static mInSeedlingPlugin:Z

.field private static mPkgName:Ljava/lang/String;

.field private static moduleName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/UTraceApp;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    const-string v0, ""

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->mPkgName:Ljava/lang/String;

    sput-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->moduleName:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/utrace/sdk/UTraceApp;->mEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContext$utrace_sdk_fullRelease()Landroid/content/Context;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getModuleName$utrace_sdk_fullRelease()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getPkgName$utrace_sdk_fullRelease()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public static final init(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/oplus/utrace/sdk/UTraceApp;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->mContext:Landroid/content/Context;

    const-string v1, "UTrace.Sdk.App"

    if-eqz v0, :cond_1a

    const-string p0, "init() redundant call. moduleName="

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    sget-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    sput-object p0, Lcom/oplus/utrace/sdk/UTraceApp;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "context.packageName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/oplus/utrace/sdk/UTraceApp;->mPkgName:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_31

    const/4 v2, 0x1

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    if-eqz v2, :cond_37

    const-string v2, "default"

    goto :goto_38

    :cond_37
    move-object v2, p1

    :goto_38
    sput-object v2, Lcom/oplus/utrace/sdk/UTraceApp;->moduleName:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/utrace/utils/ExceptionProtectUtil;->setContext(Landroid/content/Context;)V

    invoke-direct {v0, p0}, Lcom/oplus/utrace/sdk/UTraceApp;->initLog(Landroid/content/Context;)V

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() moduleName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version=1.4.6-a7b48bd-20240806-102432"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final initLog(Landroid/content/Context;)V
    .registers 5

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/utils/Logs;->init(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lcom/oplus/utrace/utils/TraceUtil;->generateLogPrefix$utrace_sdk_fullRelease$default(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " initLog() context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " loader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.App"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->Companion:Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;

    invoke-virtual {p0, p1}, Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;->doQueryHLogConfig(Landroid/content/Context;)V

    return-void
.end method

.method public static final isInSeedlingPlugin$utrace_sdk_fullRelease()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/oplus/utrace/sdk/UTraceApp;->mInSeedlingPlugin:Z

    return v0
.end method

.method public static final setFlag(II)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "setFlag flag = "

    const-string v2, ", value = "

    invoke-static {v1, p0, v2, p1}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.App"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    if-eqz p1, :cond_16

    move v0, v1

    :cond_16
    sput-boolean v0, Lcom/oplus/utrace/sdk/UTraceApp;->mEnabled:Z

    goto :goto_21

    :cond_19
    const/4 v2, 0x2

    if-ne p0, v2, :cond_21

    if-eqz p1, :cond_1f

    move v0, v1

    :cond_1f
    sput-boolean v0, Lcom/oplus/utrace/sdk/UTraceApp;->mInSeedlingPlugin:Z

    :cond_21
    :goto_21
    return-void
.end method

.method public static final uninit()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "uninit() moduleName="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/oplus/utrace/sdk/UTraceApp;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version=1.4.6-a7b48bd-20240806-102432"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.App"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager;

    invoke-virtual {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->uninit$utrace_sdk_fullRelease()V

    sget-object v0, Lcom/oplus/utrace/sdk/UTraceApp;->INSTANCE:Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/UTraceApp;->uninitLog()V

    sget-object v0, Lcom/oplus/utrace/utils/TraceUtil;->INSTANCE:Lcom/oplus/utrace/utils/TraceUtil;

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/TraceUtil;->getCommonExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method private final uninitLog()V
    .registers 5

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lcom/oplus/utrace/utils/TraceUtil;->generateLogPrefix$utrace_sdk_fullRelease$default(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uninit() mLogger="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/utrace/sdk/ULog;->INSTANCE:Lcom/oplus/utrace/sdk/ULog;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " loader="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Lcom/oplus/utrace/sdk/UTraceApp;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTrace.Sdk.App"

    invoke-virtual {p0, v3, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object p0

    if-nez p0, :cond_3c

    goto :goto_3f

    :cond_3c
    invoke-interface {p0}, Lcom/oplus/utrace/sdk/IULogger;->release()V

    :goto_3f
    invoke-virtual {v2, v1}, Lcom/oplus/utrace/sdk/ULog;->setMLogger$utrace_sdk_fullRelease(Lcom/oplus/utrace/sdk/IULogger;)V

    sget-object p0, Lcom/oplus/utrace/hlog/ULoggerImpl;->Companion:Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/ULoggerImpl$Companion;->quit()V

    return-void
.end method


# virtual methods
.method public final getMEnabled$utrace_sdk_fullRelease()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/utrace/sdk/UTraceApp;->mEnabled:Z

    return p0
.end method

.method public final setMEnabled$utrace_sdk_fullRelease(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/utrace/sdk/UTraceApp;->mEnabled:Z

    return-void
.end method
