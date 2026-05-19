.class public final Lcom/oplus/utrace/hlog/HLogUploadService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/HLogUploadService$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_UPLOAD:Ljava/lang/String; = "com.oplus.utrace.hlog.HLogUploadService.upload"

.field public static final Companion:Lcom/oplus/utrace/hlog/HLogUploadService$Companion;

.field public static final KEY_LOG_PATH:Ljava/lang/String; = "log_path"

.field public static final KEY_OUID:Ljava/lang/String; = "ouid"

.field public static final KEY_PUSH_DATA:Ljava/lang/String; = "push_data"


# instance fields
.field private final handler$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/HLogUploadService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/HLogUploadService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/HLogUploadService;->Companion:Lcom/oplus/utrace/hlog/HLogUploadService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/oplus/utrace/hlog/HLogUploadService$handler$2;

    invoke-direct {v0, p0}, Lcom/oplus/utrace/hlog/HLogUploadService$handler$2;-><init>(Lcom/oplus/utrace/hlog/HLogUploadService;)V

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/utrace/hlog/HLogUploadService;->handler$delegate:Lh4/f;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/utrace/hlog/HLogUploadService;Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/utrace/hlog/HLogUploadService;->onMsgUpload$lambda-3(Lcom/oplus/utrace/hlog/HLogUploadService;Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    return-void
.end method

.method private final getHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/HLogUploadService;->handler$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final onMsgIdle(Landroid/os/Message;)V
    .registers 12

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploadService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v2, "UTrace.Sdk.HLogUploadService"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1b

    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v0, "onMsgIdle() has MSG_UPLOAD"

    invoke-virtual {p1, v2, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v4, v5, v1, v3}, Lcom/oplus/utrace/hlog/HLogUploadService;->resetIdleMessage$default(Lcom/oplus/utrace/hlog/HLogUploadService;JILjava/lang/Object;)V

    return-void

    :cond_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_24

    check-cast p1, Ljava/lang/Long;

    goto :goto_25

    :cond_24
    move-object p1, v3

    :goto_25
    if-nez p1, :cond_29

    move-wide v6, v4

    goto :goto_2d

    :cond_29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_2d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long p1, v4, v8

    const/4 v0, 0x0

    if-gtz p1, :cond_3e

    const-wide/16 v6, 0x3e8

    cmp-long p1, v8, v6

    if-gez p1, :cond_3e

    move v0, v1

    :cond_3e
    if-eqz v0, :cond_4f

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string p1, "onMsgIdle() kill now"

    invoke-virtual {p0, v2, p1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_52

    :cond_4f
    invoke-static {p0, v4, v5, v1, v3}, Lcom/oplus/utrace/hlog/HLogUploadService;->resetIdleMessage$default(Lcom/oplus/utrace/hlog/HLogUploadService;JILjava/lang/Object;)V

    :goto_52
    return-void
.end method

.method private final onMsgUpload(Landroid/os/Message;)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v0, Landroid/content/Intent;

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0

    goto :goto_10

    :cond_f
    move-object v2, v3

    :goto_10
    const-string v4, "UTrace.Sdk.HLogUploadService"

    if-nez v2, :cond_1c

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "onMsgUpload() intent is null"

    invoke-virtual {v0, v4, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    const-string v0, "sendFrom"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    const-string v0, ""

    :cond_26
    move-object v5, v0

    const-string v0, "push_data"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    move-object v6, v3

    goto :goto_38

    :cond_31
    sget-object v6, Lcom/oplus/utrace/hlog/PushData;->Companion:Lcom/oplus/utrace/hlog/PushData$Companion;

    invoke-virtual {v6, v0}, Lcom/oplus/utrace/hlog/PushData$Companion;->fromJsonString(Ljava/lang/String;)Lcom/oplus/utrace/hlog/PushData;

    move-result-object v0

    move-object v6, v0

    :goto_38
    if-nez v6, :cond_42

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "onMsgUpload() pushData is null"

    invoke-virtual {v0, v4, v1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_42
    const/16 v0, 0x5b

    invoke-static {v0}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v7, 0x5d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "log_path"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_6b

    invoke-static {v0}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_69

    goto :goto_6b

    :cond_69
    move v10, v8

    goto :goto_6c

    :cond_6b
    :goto_6b
    move v10, v9

    :goto_6c
    if-eqz v10, :cond_7d

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, " onMsgUpload() logPath is null or blank"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3, v6, v5}, Lcom/oplus/utrace/hlog/HLogUploadService;->onUploadFinish(Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    return-void

    :cond_7d
    const-string v10, "ouid"

    invoke-virtual {v2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8e

    invoke-static {v10}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8c

    goto :goto_8e

    :cond_8c
    move v11, v8

    goto :goto_8f

    :cond_8e
    :goto_8e
    move v11, v9

    :goto_8f
    if-eqz v11, :cond_a0

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, " onMsgUpload() ouid is null or blank"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3, v6, v5}, Lcom/oplus/utrace/hlog/HLogUploadService;->onUploadFinish(Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    return-void

    :cond_a0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v11, "applicationContext"

    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10, v0}, Lcom/oplus/utrace/hlog/HLogUtils;->buildLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/log/Logger;

    move-result-object v3

    if-nez v3, :cond_be

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, " onMsgUpload() logger is null"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v3, v6, v5}, Lcom/oplus/utrace/hlog/HLogUploadService;->onUploadFinish(Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    return-void

    :cond_be
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v9, Lcom/oplus/utrace/hlog/HLogUploadService$onMsgUpload$1;

    invoke-direct {v9, v7, v0}, Lcom/oplus/utrace/hlog/HLogUploadService$onMsgUpload$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v9}, Lcom/oplus/log/Logger;->setUploaderListener(Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V

    invoke-virtual {v6}, Lcom/oplus/utrace/hlog/PushData;->getBusiness()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Lcom/oplus/utrace/hlog/PushData;->getBeginTime()J

    move-result-wide v15

    invoke-virtual {v6}, Lcom/oplus/utrace/hlog/PushData;->getEndTime()J

    move-result-wide v17

    invoke-virtual {v6}, Lcom/oplus/utrace/hlog/PushData;->getUseWifi()Z

    move-result v19

    const-string v20, ""

    move-object v12, v3

    invoke-virtual/range {v12 .. v20}, Lcom/oplus/log/Logger;->upload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;)V

    const-wide/16 v9, 0x4e20

    :try_start_eb
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_f5
    .catchall {:try_start_eb .. :try_end_f5} :catchall_f6

    goto :goto_fb

    :catchall_f6
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_fb
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_102

    goto :goto_11b

    :cond_102
    sget-object v9, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " latch.await: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11b
    const-string v0, "simulate_upload_timeout"

    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_140

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v2, " onMsgUpload() simulate upload timeout"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/oplus/utrace/hlog/HLogUploadService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/oplus/quickstep/gesture/g;

    invoke-direct {v2, v1, v3, v6, v5}, Lcom/oplus/quickstep/gesture/g;-><init>(Lcom/oplus/utrace/hlog/HLogUploadService;Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {v1, v3, v4}, Lcom/oplus/utrace/hlog/HLogUploadService;->resetIdleMessage(J)V

    goto :goto_143

    :cond_140
    invoke-direct {v1, v3, v6, v5}, Lcom/oplus/utrace/hlog/HLogUploadService;->onUploadFinish(Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    :goto_143
    return-void
.end method

.method private static final onMsgUpload$lambda-3(Lcom/oplus/utrace/hlog/HLogUploadService;Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$sendFrom"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/utrace/hlog/HLogUploadService;->onUploadFinish(Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    return-void
.end method

.method private final onUploadFinish(Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/16 v2, 0x5b

    invoke-static {v2}, Landroidx/emoji2/text/flatbuffer/a;->a(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " onUploadFinish() logger="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " sendFrom/replyTo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTrace.Sdk.HLogUploadService"

    invoke-virtual {v3, v5, v4}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_40

    goto :goto_46

    :cond_40
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/log/Logger;->deleteLogFile()V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/log/Logger;->exit()V

    :goto_46
    sget-object v0, Lcom/oplus/utrace/hlog/HLogFilesCollector;->Companion:Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "applicationContext"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->resolveLogCollectorUri$utrace_sdk_fullRelease(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_61

    const-string v0, " onUploadFinish() collectorUri=null"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_61
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/oplus/utrace/hlog/PushData;->getTraceId()J

    move-result-wide v0

    const-string v3, "traceId"

    invoke-virtual {v12, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :try_start_6f
    sget-object v7, Lcom/oplus/utrace/utils/Providers;->INSTANCE:Lcom/oplus/utrace/utils/Providers;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "onUploadFinish"

    const/4 v11, 0x0

    const/16 v13, 0x8

    const/4 v14, 0x0

    invoke-static/range {v7 .. v14}, Lcom/oplus/utrace/utils/Providers;->unstableProviderCall$default(Lcom/oplus/utrace/utils/Providers;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_82
    .catchall {:try_start_6f .. :try_end_82} :catchall_83

    goto :goto_88

    :catchall_83
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_88
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8f

    goto :goto_a8

    :cond_8f
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onActionUploadNeedProxy() provider call exception="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2, v0}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a8
    return-void
.end method

.method public static synthetic onUploadFinish$default(Lcom/oplus/utrace/hlog/HLogUploadService;Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    const-string p3, ""

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/utrace/hlog/HLogUploadService;->onUploadFinish(Lcom/oplus/log/Logger;Lcom/oplus/utrace/hlog/PushData;Ljava/lang/String;)V

    return-void
.end method

.method private final resetIdleMessage(J)V
    .registers 7

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploadService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploadService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-string v1, "handler.obtainMessage(MS…lapsedRealtime() + delay)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploadService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static synthetic resetIdleMessage$default(Lcom/oplus/utrace/hlog/HLogUploadService;JILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x4e20

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/hlog/HLogUploadService;->resetIdleMessage(J)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    goto :goto_15

    :cond_e
    invoke-direct {p0, p1}, Lcom/oplus/utrace/hlog/HLogUploadService;->onMsgIdle(Landroid/os/Message;)V

    goto :goto_15

    :cond_12
    invoke-direct {p0, p1}, Lcom/oplus/utrace/hlog/HLogUploadService;->onMsgUpload(Landroid/os/Message;)V

    :goto_15
    const/4 p0, 0x0

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/oplus/utrace/hlog/HLogUploadService;->resetIdleMessage$default(Lcom/oplus/utrace/hlog/HLogUploadService;JILjava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "onStartCommand() intent="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLogUploadService"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_12

    move-object v1, v0

    goto :goto_16

    :cond_12
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_16
    const-string v2, "com.oplus.utrace.hlog.HLogUploadService.upload"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-static {p1}, Lcom/oplus/utrace/utils/UtilsKt;->checkIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v0}, Lcom/oplus/utrace/hlog/HLogUploadService;->resetIdleMessage$default(Lcom/oplus/utrace/hlog/HLogUploadService;JILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/HLogUploadService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_35
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
