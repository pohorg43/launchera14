.class public final Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/hlog/HLogFilesCollector;
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

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->processMessage$lambda-0(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V

    return-void
.end method

.method public static final synthetic access$getExecutor(Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$receiveLogFiles(Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;JLjava/lang/String;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->receiveLogFiles(JLjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 1

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$getExecutor$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private static final processMessage$lambda-0(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V
    .registers 4

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pushData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_14

    :cond_13
    move-object p0, v1

    :goto_14
    invoke-direct {v0, p0, p1}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->processMessageInThread(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V

    return-void
.end method

.method private final processMessageInThread(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V
    .registers 10

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const/16 v1, 0x5b

    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] processMessageInThread() pushData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Sdk.HLogFiles"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v4

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$getUploaders$cp()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] processMessageInThread() duplicated traceId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4d
    new-instance v2, Lcom/oplus/utrace/hlog/HLogUploader;

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v6, "executor"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;->INSTANCE:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion$processMessageInThread$1;

    invoke-direct {v2, p1, p0, p2, v6}, Lcom/oplus/utrace/hlog/HLogUploader;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/oplus/utrace/hlog/PushData;Lkotlin/jvm/functions/Function1;)V

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$getUploaders$cp()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] processMessageInThread() traceId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is cached"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/utrace/hlog/HLogUploader;->start()V

    return-void
.end method

.method private final receiveLogFiles(JLjava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$getUploaders$cp()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/utrace/hlog/HLogUploader;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    goto :goto_17

    :cond_12
    invoke-virtual {p0, p3, p4}, Lcom/oplus/utrace/hlog/HLogUploader;->receiveLogFiles(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_17
    if-nez p0, :cond_53

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] receiveLogFiles() no uploaders found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTrace.Sdk.HLogFiles"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_4a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_3e

    :catchall_4e
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    goto :goto_3e

    :cond_53
    return-void
.end method

.method public static synthetic resolveLogCollectorUri$utrace_sdk_fullRelease$default(Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->resolveLogCollectorUri$utrace_sdk_fullRelease(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final isLogEnabled()Z
    .registers 1

    sget-object p0, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled()Z

    move-result p0

    return p0
.end method

.method public final processMessage(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const/16 v1, 0x5b

    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] processMessage() pushData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isLogEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->isLogEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTrace.Sdk.HLogFiles"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->isLogEnabled()Z

    move-result v2

    if-nez v2, :cond_3d

    return-void

    :cond_3d
    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/PushData;->getTracePkg()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_49

    const/4 v2, 0x1

    goto :goto_4a

    :cond_49
    const/4 v2, 0x0

    :goto_4a
    if-eqz v2, :cond_67

    invoke-static {v1}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] processMessage() tracePkg is empty. pushData="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_67
    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const-string v0, "executor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/statistics/f;

    invoke-direct {v0, p1, p2}, Lcom/oplus/statistics/f;-><init>(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V

    invoke-static {p0, v0}, Lcom/oplus/utrace/utils/UtilsKt;->submitSafe(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resolveLogCollectorUri$utrace_sdk_fullRelease(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 10

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "suggestPackage"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$getCollectorUri$cp()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_9e

    const/4 p0, 0x3

    new-array v0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "com.oplus.utrace"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "com.oplus.pantanal.ums"

    aput-object v4, v0, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v4, v1

    :cond_26
    :goto_26
    if-ge v4, p0, :cond_37

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_26

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :cond_37
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/oplus/utrace/hlog/HLogFilesCollector;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_46

    :cond_61
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_65
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    sget-object v2, Lcom/oplus/utrace/utils/Providers;->INSTANCE:Lcom/oplus/utrace/utils/Providers;

    invoke-virtual {v2, p1, v0, v1}, Lcom/oplus/utrace/utils/Providers;->resolveProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;Z)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_65

    goto :goto_7b

    :cond_7a
    const/4 v0, 0x0

    :goto_7b
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveLogCollectorUri() suggestPackage="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTrace.Sdk.HLogFiles"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$setCollectorUri$cp(Landroid/net/Uri;)V

    :cond_9e
    invoke-static {}, Lcom/oplus/utrace/hlog/HLogFilesCollector;->access$getCollectorUri$cp()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
