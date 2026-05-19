.class public Lcom/oplus/log/collect/auto/CrashCollect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.implements Lcom/oplus/log/collect/auto/IDataCollect;
.implements Lcom/oplus/log/IBaseLog;


# static fields
.field private static final CRASH_TAG:Ljava/lang/String; = "crash_info"


# instance fields
.field private defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mAppender:Lcom/oplus/log/log/ICollectLog;

.field private mSimpleLog:Lcom/oplus/log/log/SimpleLog;


# direct methods
.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/collect/auto/CrashCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/collect/auto/CrashCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    iput-object p2, p0, Lcom/oplus/log/collect/auto/CrashCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    return-void
.end method

.method private obtainException(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/oplus/log/collect/auto/CrashCollect;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/log/collect/auto/CrashCollect;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method public getLogType()I
    .registers 1

    const/16 p0, 0x66

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/collect/auto/CrashCollect;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public setAppender(Lcom/oplus/log/log/ICollectLog;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/auto/CrashCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/log/collect/auto/CrashCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0, p2}, Lcom/oplus/log/collect/auto/CrashCollect;->obtainException(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/oplus/log/collect/LoggingEvent;

    const/4 v4, 0x5

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "crash_info"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    iget-object v1, p0, Lcom/oplus/log/collect/auto/CrashCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/CrashCollect;->getLogType()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/oplus/log/log/ICollectLog;->appendSync(Lcom/oplus/log/collect/LoggingEvent;I)V

    const-wide/16 v0, 0x12c

    :try_start_23
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oplus/log/HLog;->flush(Z)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_2a} :catch_32

    iget-object p0, p0, Lcom/oplus/log/collect/auto/CrashCollect;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_31

    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_31
    return-void

    :catch_32
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
