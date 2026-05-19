.class public Lcom/oplus/log/olc/OlcManagerHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LOGCORE_BINDSERVICE_TIMEOUT:J = 0x5dcL

.field private static final LOGCORE_SERVICE_ACTION:Ljava/lang/String; = "oplus.intent.action.LOG_CORE"

.field private static final LOGCORE_SERVICE_PACKAGE:Ljava/lang/String; = "com.oplus.olc"

.field private static final TAG:Ljava/lang/String; = "OlcManagerHelper"

.field private static instances:Lcom/oplus/log/olc/OlcManagerHelper;


# instance fields
.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mOlcServiceInterface:Lcom/oplus/olc/IOplusLogCore;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/log/olc/OlcManagerHelper$1;

    invoke-direct {v0, p0}, Lcom/oplus/log/olc/OlcManagerHelper$1;-><init>(Lcom/oplus/log/olc/OlcManagerHelper;)V

    iput-object v0, p0, Lcom/oplus/log/olc/OlcManagerHelper;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic access$002(Lcom/oplus/log/olc/OlcManagerHelper;Lcom/oplus/olc/IOplusLogCore;)Lcom/oplus/olc/IOplusLogCore;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/olc/OlcManagerHelper;->mOlcServiceInterface:Lcom/oplus/olc/IOplusLogCore;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/oplus/log/olc/OlcManagerHelper;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/olc/OlcManagerHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static getInstances()Lcom/oplus/log/olc/OlcManagerHelper;
    .registers 2

    const-class v0, Lcom/oplus/log/olc/OlcManagerHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/log/olc/OlcManagerHelper;->instances:Lcom/oplus/log/olc/OlcManagerHelper;

    if-nez v1, :cond_e

    new-instance v1, Lcom/oplus/log/olc/OlcManagerHelper;

    invoke-direct {v1}, Lcom/oplus/log/olc/OlcManagerHelper;-><init>()V

    sput-object v1, Lcom/oplus/log/olc/OlcManagerHelper;->instances:Lcom/oplus/log/olc/OlcManagerHelper;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/oplus/log/olc/OlcManagerHelper;->instances:Lcom/oplus/log/olc/OlcManagerHelper;

    return-object v0

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private shoudBinderService()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/olc/OlcManagerHelper;->mOlcServiceInterface:Lcom/oplus/olc/IOplusLogCore;

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/log/olc/OlcManagerHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/oplus/log/olc/OlcManagerHelper;->binderService(Landroid/content/Context;)V

    :try_start_11
    iget-object p0, p0, Lcom/oplus/log/olc/OlcManagerHelper;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p0, :cond_24

    const-wide/16 v0, 0x5dc

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method public binderService(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oplus.intent.action.LOG_CORE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oplus.olc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_18

    iget-object p0, p0, Lcom/oplus/log/olc/OlcManagerHelper;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_1f

    :cond_18
    const-string p0, "OlcManagerHelper"

    const-string p1, "binderService cxt is null"

    invoke-static {p0, p1}, Lcom/oplus/log/HLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public sendException()I
    .registers 12

    new-instance v0, Lcom/oplus/log/olc/ExceptionInfo;

    invoke-direct {v0}, Lcom/oplus/log/olc/ExceptionInfo;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/log/olc/ExceptionInfo;->setTime(J)V

    const v1, 0x10004001

    invoke-virtual {v0, v1}, Lcom/oplus/log/olc/ExceptionInfo;->setId(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/log/olc/ExceptionInfo;->setExceptionType(I)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/oplus/log/olc/ExceptionInfo;->setExceptionLevel(I)V

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/oplus/log/olc/ExceptionInfo;->setAtomicLogs(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/log/olc/ExceptionInfo;->setLogParmas(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/log/olc/ExceptionInfo;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/oplus/log/olc/ExceptionInfo;->getId()I

    move-result v5

    invoke-virtual {v0}, Lcom/oplus/log/olc/ExceptionInfo;->getExceptionType()I

    move-result v6

    invoke-virtual {v0}, Lcom/oplus/log/olc/ExceptionInfo;->getExceptionLevel()I

    move-result v7

    invoke-virtual {v0}, Lcom/oplus/log/olc/ExceptionInfo;->getAtomicLogs()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/oplus/log/olc/ExceptionInfo;->getLogParmas()Ljava/lang/String;

    move-result-object v10

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/oplus/log/olc/OlcManagerHelper;->sendException(JIIIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public sendException(JIIIJLjava/lang/String;)I
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Lcom/oplus/log/olc/OlcManagerHelper;->mOlcServiceInterface:Lcom/oplus/olc/IOplusLogCore;

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/oplus/log/olc/OlcManagerHelper;->shoudBinderService()V

    :cond_8
    iget-object v2, v0, Lcom/oplus/log/olc/OlcManagerHelper;->mOlcServiceInterface:Lcom/oplus/olc/IOplusLogCore;

    if-nez v2, :cond_e

    const/4 v0, -0x1

    return v0

    :cond_e
    move-wide v3, p1

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    :try_start_17
    invoke-interface/range {v2 .. v10}, Lcom/oplus/olc/IOplusLogCore;->sendException(JIIIJLjava/lang/String;)I

    move-result v0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1b} :catch_1c

    return v0

    :catch_1c
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendException(Lcom/oplus/log/olc/ExceptionInfo;)I
    .registers 11

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/oplus/log/olc/OlcManagerHelper;->sendException()I

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p1}, Lcom/oplus/log/olc/ExceptionInfo;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/oplus/log/olc/ExceptionInfo;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/oplus/log/olc/ExceptionInfo;->getExceptionType()I

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/log/olc/ExceptionInfo;->getExceptionLevel()I

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/log/olc/ExceptionInfo;->getAtomicLogs()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/oplus/log/olc/ExceptionInfo;->getLogParmas()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/oplus/log/olc/OlcManagerHelper;->sendException(JIIIJLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public unbinderService(Landroid/content/Context;)V
    .registers 2

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/oplus/log/olc/OlcManagerHelper;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz p0, :cond_a

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_11

    :cond_a
    const-string p0, "OlcManagerHelper"

    const-string p1, "binderService cxt is null"

    invoke-static {p0, p1}, Lcom/oplus/log/HLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method
