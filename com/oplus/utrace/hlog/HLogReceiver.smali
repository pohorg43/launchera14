.class public final Lcom/oplus/utrace/hlog/HLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/HLogReceiver$Companion;,
        Lcom/oplus/utrace/hlog/HLogReceiver$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.HLogReceiver"

.field private static final logPrefix$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static receivedMessages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/oplus/utrace/hlog/UploadParams;",
            ">;"
        }
    .end annotation
.end field

.field private static sLogger:Lcom/oplus/log/Logger;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final handler$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogReceiver;->receivedMessages:Landroid/util/LruCache;

    sget-object v0, Lcom/oplus/utrace/hlog/HLogReceiver$Companion$logPrefix$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogReceiver$Companion$logPrefix$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/hlog/HLogReceiver;->logPrefix$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lcom/oplus/utrace/hlog/HLogReceiver$handler$2;->INSTANCE:Lcom/oplus/utrace/hlog/HLogReceiver$handler$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/utrace/hlog/HLogReceiver;->handler$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/utrace/hlog/HLogReceiver;->onActionUploadNeedProxy$lambda-14(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getLogPrefix$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/HLogReceiver;->logPrefix$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$getSLogger$cp()Lcom/oplus/log/Logger;
    .registers 1

    sget-object v0, Lcom/oplus/utrace/hlog/HLogReceiver;->sLogger:Lcom/oplus/log/Logger;

    return-object v0
.end method

.method public static final synthetic access$setSLogger$cp(Lcom/oplus/log/Logger;)V
    .registers 1

    sput-object p0, Lcom/oplus/utrace/hlog/HLogReceiver;->sLogger:Lcom/oplus/log/Logger;

    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogReceiver;->handler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final onActionUpload(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18

    move-object v0, p0

    sget-object v1, Lcom/oplus/utrace/hlog/HLogConfigHelper;->INSTANCE:Lcom/oplus/utrace/hlog/HLogConfigHelper;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/HLogConfigHelper;->isLogEnabled()Z

    move-result v1

    sget-object v2, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v4}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onActionUpload() logEnabled:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTrace.Sdk.HLogReceiver"

    invoke-virtual {v2, v5, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2b

    return-void

    :cond_2b
    sget-object v6, Lcom/oplus/utrace/hlog/HLogReceiver;->sLogger:Lcom/oplus/log/Logger;

    if-nez v6, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onActionUpload() mLogger is null. this="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4b
    sget-object v1, Lcom/oplus/utrace/hlog/UploadParams;->Companion:Lcom/oplus/utrace/hlog/UploadParams$Companion;

    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/oplus/utrace/hlog/UploadParams$Companion;->from(Landroid/content/Intent;)Lcom/oplus/utrace/hlog/UploadParams;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " onActionUpload() uploadParams="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " this="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/oplus/utrace/hlog/HLogReceiver;->receivedMessages:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->toKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/utrace/hlog/UploadParams;

    if-nez v3, :cond_85

    goto :goto_9d

    :cond_85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v3}, Lcom/oplus/utrace/hlog/UploadParams;->getCreateTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-gtz v8, :cond_96

    const/4 v8, 0x1

    goto :goto_97

    :cond_96
    const/4 v8, 0x0

    :goto_97
    if-eqz v8, :cond_9a

    goto :goto_9b

    :cond_9a
    const/4 v3, 0x0

    :goto_9b
    if-nez v3, :cond_fe

    :goto_9d
    sget-object v3, Lcom/oplus/utrace/hlog/HLogReceiver;->receivedMessages:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->toKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->getUploadFlag()Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object v3

    sget-object v8, Lcom/oplus/utrace/hlog/HLogReceiver$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    const/4 v8, 0x2

    if-eq v3, v8, :cond_bf

    const/4 v2, 0x3

    if-eq v3, v2, :cond_b9

    goto :goto_fd

    :cond_b9
    move-object/from16 v2, p1

    invoke-direct {p0, v2, v1}, Lcom/oplus/utrace/hlog/HLogReceiver;->onActionUploadNeedProxy(Landroid/content/Context;Lcom/oplus/utrace/hlog/UploadParams;)V

    goto :goto_fd

    :cond_bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onActionUpload() invoke logger.upload() with uploadParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->getBusiness()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->getTraceId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->getStartTime()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->getEndTime()J

    move-result-wide v11

    invoke-virtual {v1}, Lcom/oplus/utrace/hlog/UploadParams;->getUseWifi()Z

    move-result v13

    const-string v14, ""

    invoke-virtual/range {v6 .. v14}, Lcom/oplus/log/Logger;->upload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;)V

    :goto_fd
    return-void

    :cond_fe
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onActionUpload() duplicated upload message. this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final onActionUploadNeedProxy(Landroid/content/Context;Lcom/oplus/utrace/hlog/UploadParams;)V
    .registers 16

    const-string v0, "UTrace.Sdk.HLogReceiver"

    if-nez p1, :cond_16

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object p1, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " onActionUploadNeedProxy() context=null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    sget-object v1, Lcom/oplus/utrace/hlog/HLogFilesCollector;->Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/UploadParams;->getSendFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->resolveLogCollectorUri$utrace_sdk_fullRelease(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_34

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object p1, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " onActionUploadNeedProxy() collectorUri=null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_34
    sget-object v2, Lcom/oplus/utrace/sdk/ULog;->INSTANCE:Lcom/oplus/utrace/sdk/ULog;

    invoke-virtual {v2}, Lcom/oplus/utrace/sdk/ULog;->getMLogger$utrace_sdk_fullRelease()Lcom/oplus/utrace/sdk/IULogger;

    move-result-object v2

    instance-of v3, v2, Lcom/oplus/utrace/hlog/ULoggerImpl;

    const/4 v4, 0x0

    if-eqz v3, :cond_42

    check-cast v2, Lcom/oplus/utrace/hlog/ULoggerImpl;

    goto :goto_43

    :cond_42
    move-object v2, v4

    :goto_43
    if-nez v2, :cond_47

    move-object v10, v4

    goto :goto_4c

    :cond_47
    invoke-virtual {v2}, Lcom/oplus/utrace/hlog/ULoggerImpl;->getLogFilePath$utrace_sdk_fullRelease()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    :goto_4c
    const/4 v2, 0x1

    if-eqz v10, :cond_58

    invoke-static {v10}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_58

    :cond_56
    const/4 v3, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    move v3, v2

    :goto_59
    if-eqz v3, :cond_6d

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object p1, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " onActionUploadNeedProxy() logFilePath is null or blank"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6d
    sget-object v3, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/UploadParams;->getStartTime()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/UploadParams;->getEndTime()J

    move-result-wide v8

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/UploadParams;->getMaxFileSize()J

    move-result-wide v11

    move-object v5, v3

    invoke-static/range {v5 .. v12}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogFiles(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;JJLjava/lang/String;J)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {v6}, Lcom/oplus/utrace/utils/Logs;->getDebuggable()Z

    move-result v7

    if-eqz v7, :cond_ce

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onActionUploadNeedProxy() files="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_bc

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a8

    :cond_bc
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " params="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    const/high16 v7, 0x10000000

    :try_start_e5
    invoke-static {v6, v7}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7
    :try_end_e9
    .catchall {:try_start_e5 .. :try_end_e9} :catchall_ea

    goto :goto_ef

    :catchall_ea
    move-exception v7

    invoke-static {v7}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    :goto_ef
    invoke-static {v7}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-nez v8, :cond_f6

    goto :goto_115

    :cond_f6
    sget-object v9, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v11}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " onActionUploadNeedProxy() open fd exception="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v0, v8}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_115
    instance-of v8, v7, Lh4/k$a;

    if-eqz v8, :cond_11a

    move-object v7, v4

    :cond_11a
    check-cast v7, Landroid/os/ParcelFileDescriptor;

    if-nez v7, :cond_11f

    goto :goto_d7

    :cond_11f
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "file.name"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d7

    :cond_12c
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_139
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_155

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_139

    :cond_155
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/UploadParams;->getTraceId()J

    move-result-wide v5

    const-string v7, "traceId"

    invoke-virtual {v3, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "logFiles"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;

    invoke-direct {v4, p0, p1, v1, v3}, Lcom/oplus/utrace/hlog/HLogReceiver$onActionUploadNeedProxy$actionCall$1;-><init>(Lcom/oplus/utrace/hlog/HLogReceiver;Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {p2}, Lcom/oplus/utrace/hlog/UploadParams;->getSimFdTimeout()Z

    move-result p1

    if-eqz p1, :cond_193

    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object p2, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {p2}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object p2

    const-string v1, " onActionUploadNeedProxy() simulate fd timeout"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogReceiver;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance p1, Lcom/android/launcher3/anim/iconsurfacemanager/b;

    invoke-direct {p1, v4, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/b;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_196

    :cond_193
    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_196
    return-void
.end method

.method private static final onActionUploadNeedProxy$lambda-14(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string v0, "UTrace.Sdk.HLogReceiver"

    if-nez p2, :cond_16

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    sget-object p1, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {p1}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object p1

    const-string p2, " onReceive intent is null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-static {p2}, Lcom/oplus/utrace/utils/UtilsKt;->checkIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v3}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " onReceive() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " this="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.oplus.pantanal.log.upload"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/hlog/HLogReceiver;->onActionUpload(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6f

    :cond_54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onReceive action:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6f
    return-void
.end method

.method public final register$utrace_sdk_fullRelease(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v2}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " register() context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTrace.Sdk.HLogReceiver"

    invoke-virtual {v0, v3, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2e
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oplus.pantanal.log.upload"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v1, v4, :cond_41

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    goto :goto_4b

    :cond_41
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_46

    goto :goto_4b

    :catchall_46
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_4b
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_52

    goto :goto_7b

    :cond_52
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v4}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " register() exception="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7b
    return-void
.end method

.method public final unregister$utrace_sdk_fullRelease(Landroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v2}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " unregister() context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTrace.Sdk.HLogReceiver"

    invoke-virtual {v0, v3, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2e
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_34

    goto :goto_39

    :catchall_34
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_39
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_40

    goto :goto_69

    :cond_40
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/oplus/utrace/hlog/HLogReceiver;->Companion:Lcom/oplus/utrace/hlog/HLogReceiver$Companion;

    invoke-static {v4}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->access$getLogPrefix(Lcom/oplus/utrace/hlog/HLogReceiver$Companion;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " unregister() exception="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_69
    return-void
.end method
