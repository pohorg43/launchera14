.class public final Lcom/oplus/utrace/hlog/HLogUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HLOG_SO_DIR:Ljava/lang/String; = "lib/arm64-v8a"

.field public static final INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

.field public static final TAG:Ljava/lang/String; = "UTrace.Sdk.HLogUtils"

.field private static volatile canResolveReceiver:Ljava/lang/Boolean;

.field private static final defaultUploadFlags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/hlog/UploadFlag;",
            ">;"
        }
    .end annotation
.end field

.field private static final executor$delegate:Lh4/f;

.field private static volatile isPlugin:Ljava/lang/Boolean;

.field private static final libDirEnsured:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final logPrefix$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/HLogUtils;-><init>()V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils$logPrefix$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils$logPrefix$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->logPrefix$delegate:Lh4/f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->libDirEnsured:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils$executor$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils$executor$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->executor$delegate:Lh4/f;

    const/16 v0, 0x9

    new-array v0, v0, [Lh4/j;

    sget-object v2, Lcom/oplus/utrace/hlog/UploadFlag;->NEED_PROXY:Lcom/oplus/utrace/hlog/UploadFlag;

    new-instance v3, Lh4/j;

    const-string v4, "com.android.systemui"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x1

    new-instance v3, Lh4/j;

    const-string v4, "com.android.launcher"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    new-instance v3, Lh4/j;

    const-string v4, "com.oplus.secondaryhome"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x3

    new-instance v3, Lh4/j;

    const-string v4, "com.coloros.assistantscreen"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/oplus/utrace/hlog/UploadFlag;->CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    new-instance v3, Lh4/j;

    const-string v4, "com.oplus.pantanal.ums"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x5

    new-instance v3, Lh4/j;

    const-string v4, "com.oplus.metis"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x6

    new-instance v3, Lh4/j;

    const-string v4, "com.coloros.sceneservice"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x7

    new-instance v3, Lh4/j;

    const-string v4, "com.oplus.utrace"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/16 v1, 0x8

    new-instance v3, Lh4/j;

    const-string v4, "com.oplus.utrace.agent"

    invoke-direct {v3, v4, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->defaultUploadFlags:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/log/Logger;
    .registers 27
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "logFilePath"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object v4, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " buildLogger() context="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " logFilePath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTrace.Sdk.HLogUtils"

    invoke-virtual {v3, v6, v5}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_46

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_44

    goto :goto_46

    :cond_44
    move v8, v7

    goto :goto_47

    :cond_46
    :goto_46
    move v8, v5

    :goto_47
    const/4 v9, 0x0

    if-eqz v8, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " buildLogger() ouid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_6b
    new-instance v8, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;

    invoke-direct {v8}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;-><init>()V

    const-string v9, "[^0-9a-zA-Z]+"

    const-string v10, "pattern"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    const-string v10, "compile(pattern)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "nativePattern"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/oplus/utrace/utils/UtilsKt;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3a

    const/4 v12, 0x2

    invoke-static {v10, v11, v7, v12}, Lk7/q;->u(Ljava/lang/CharSequence;CZI)Z

    move-result v13

    const/4 v14, 0x6

    if-eqz v13, :cond_aa

    invoke-static {v10, v11, v7, v7, v14}, Lk7/q;->E(Ljava/lang/CharSequence;CIZI)I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_ac

    const-string v10, "unknown"

    goto :goto_ac

    :cond_aa
    const-string v10, "main"

    :cond_ac
    :goto_ac
    const-string v11, "input"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "_"

    const-string v14, "replacement"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "nativePattern.matcher(in…).replaceAll(replacement)"

    invoke-static {v10, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v7

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getModuleName$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v12, v5

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x3e

    const-string v17, "_"

    move-object/from16 v16, v12

    invoke-static/range {v16 .. v23}, Li4/k;->H([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    const-string v9, " buildLogger() processName="

    const-string v11, " namePrefix="

    invoke-static {v7, v4, v9, v10, v11}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/oplus/utrace/hlog/HLogUtils$buildLogger$idProvider$1;

    invoke-direct {v3, v1}, Lcom/oplus/utrace/hlog/HLogUtils$buildLogger$idProvider$1;-><init>(Ljava/lang/String;)V

    :try_start_117
    invoke-static {}, Lcom/oplus/log/Logger;->newBuilder()Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/oplus/log/Logger$Builder;->withHttpDelegate(Lcom/oplus/log/uploader/IHttpDelegate;)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oplus/log/Logger$Builder;->logFilePath(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lcom/oplus/utrace/hlog/HLogUtils;->defaultLogCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/log/Logger$Builder;->mmapCacheDir(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oplus/log/Logger$Builder;->fileLogLevel(I)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/oplus/log/Logger$Builder;->consoleLogLevel(I)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    sget-object v2, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v2}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->getLogExpireDays()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oplus/log/Logger$Builder;->fileExpireDays(I)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/oplus/log/Logger$Builder;->setProcessName(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/oplus/log/Logger$Builder;->logNamePrefix(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/oplus/log/Logger$Builder;->setOpenIdProvider(Lcom/oplus/log/Settings$IOpenIdProvider;)Lcom/oplus/log/Logger$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oplus/log/Logger$Builder;->create(Landroid/content/Context;)Lcom/oplus/log/Logger;

    move-result-object v0
    :try_end_14f
    .catchall {:try_start_117 .. :try_end_14f} :catchall_150

    goto :goto_155

    :catchall_150
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_155
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_15c

    goto :goto_17b

    :cond_15c
    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " buildLogger() exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_17b
    instance-of v1, v0, Lh4/k$a;

    if-eqz v1, :cond_180

    const/4 v0, 0x0

    :cond_180
    check-cast v0, Lcom/oplus/log/Logger;

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-direct {v3}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " buildLogger() logger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final defaultLogCachePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogUtils;->defaultLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "cache"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final defaultLogPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "log"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final defaultLogUploadPath(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogUtils;->defaultLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final ensureLibraryDirectories$utrace_sdk_fullRelease()V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedPrivateApi"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->libDirEnsured:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ensureLibraryDirectories() libDirEnsured="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTrace.Sdk.HLogUtils"

    invoke-virtual {v2, v5, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    return-void

    :cond_2b
    :try_start_2b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ensureLibraryDirectories() classLoader="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Ldalvik/system/BaseDexClassLoader;

    const-string v6, "pathList"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/utrace/utils/UtilsKt;->getFirstDexFileNameFromPathList(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ensureLibraryDirectories() firstDexFileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    if-eqz v3, :cond_88

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_86

    goto :goto_88

    :cond_86
    move v7, v6

    goto :goto_89

    :cond_88
    :goto_88
    move v7, v1

    :goto_89
    if-eqz v7, :cond_8c

    return-void

    :cond_8c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "addNativePath"

    new-array v9, v1, [Ljava/lang/Class;

    const-class v10, Ljava/util/Collection;

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "!/lib/arm64-v8a"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v8, v6

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v6, "nativeLibraryPathElements"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_c8

    check-cast v0, [Ljava/lang/Object;

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v4}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ensureLibraryDirectories() nativeLibraryPathElements(after)="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Li4/i;->b([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_ea
    .catchall {:try_start_2b .. :try_end_ea} :catchall_eb

    goto :goto_f0

    :catchall_eb
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_f0
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_f7

    goto :goto_106

    :cond_f7
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ensureLibraryDirectories() exception="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_106
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v0}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v1

    if-eqz v1, :cond_154

    sget-object v1, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    :try_start_110
    const-string v2, "opluslog"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-direct {v1}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, " ensureLibraryDirectories() try load opluslog ok"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_124
    .catchall {:try_start_110 .. :try_end_124} :catchall_125

    goto :goto_12a

    :catchall_125
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_12a
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_131

    goto :goto_154

    :cond_131
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-direct {v3}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ensureLibraryDirectories() try load opluslog fails: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_154
    :goto_154
    return-void
.end method

.method private final getLogPrefix()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->logPrefix$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final isInPlugin()Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->isPlugin:Ljava/lang/Boolean;

    if-nez v0, :cond_55

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    goto :goto_1b

    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_1b

    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_1b
    const-class v0, Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v1, :cond_2f

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oplus/utrace/hlog/HLogUtils;->isPlugin:Ljava/lang/Boolean;

    :cond_2f
    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v3, "isInPlugin() isPlugin="

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oplus/utrace/hlog/HLogUtils;->isPlugin:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " myLoader="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " appLoader="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Sdk.HLogUtils"

    invoke-virtual {v2, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->isPlugin:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final resolveReceiver(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->canResolveReceiver:Ljava/lang/Boolean;

    if-nez v0, :cond_40

    sget-object v0, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogUtils;->resolveReceivers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v1}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v2

    if-eqz v2, :cond_34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " resolveReceiver() resolvedList="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTrace.Sdk.HLogUtils"

    invoke-virtual {v1, v2, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->canResolveReceiver:Ljava/lang/Boolean;

    :cond_40
    sget-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->canResolveReceiver:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static final resolveReceivers(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.pantanal.log.upload"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_e
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_23

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object p0

    goto :goto_33

    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2e

    goto :goto_33

    :catchall_2e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_33
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3a

    goto :goto_5f

    :cond_3a
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-direct {v3}, Lcom/oplus/utrace/hlog/HLogUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resolveReceivers() exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Sdk.HLogUtils"

    invoke-virtual {v1, v3, v2, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5f
    instance-of v0, p0, Lh4/k$a;

    if-eqz v0, :cond_64

    const/4 p0, 0x0

    :cond_64
    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_6a

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_6a
    return-object p0
.end method


# virtual methods
.method public final getDefaultUploadFlags$utrace_sdk_fullRelease()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/hlog/UploadFlag;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->defaultUploadFlags:Ljava/util/Map;

    return-object p0
.end method

.method public final getExecutor$utrace_sdk_fullRelease()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/hlog/HLogUtils;->executor$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method
