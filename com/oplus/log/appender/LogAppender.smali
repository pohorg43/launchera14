.class public Lcom/oplus/log/appender/LogAppender;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/appender/ILogAppender;


# static fields
.field private static volatile instance:Lcom/oplus/log/appender/LogAppender;


# instance fields
.field private mLogWriter:Lcom/oplus/log/ILogWriter;


# direct methods
.method public constructor <init>(Lcom/oplus/log/Settings;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/log/NLogWriter;

    invoke-direct {v0}, Lcom/oplus/log/NLogWriter;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    invoke-interface {v0, p1}, Lcom/oplus/log/ILogWriter;->init(Lcom/oplus/log/Settings;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/core/LoganConfig;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/log/NLogWriter;

    invoke-direct {v0}, Lcom/oplus/log/NLogWriter;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    invoke-interface {v0, p1}, Lcom/oplus/log/ILogWriter;->init(Lcom/oplus/log/core/LoganConfig;)V

    return-void
.end method

.method public static getSingleton(Lcom/oplus/log/Settings;)Lcom/oplus/log/appender/LogAppender;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/oplus/log/appender/LogAppender;->instance:Lcom/oplus/log/appender/LogAppender;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/log/appender/LogAppender;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/log/appender/LogAppender;->instance:Lcom/oplus/log/appender/LogAppender;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/log/appender/LogAppender;

    invoke-direct {v1, p0}, Lcom/oplus/log/appender/LogAppender;-><init>(Lcom/oplus/log/Settings;)V

    sput-object v1, Lcom/oplus/log/appender/LogAppender;->instance:Lcom/oplus/log/appender/LogAppender;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/oplus/log/appender/LogAppender;->instance:Lcom/oplus/log/appender/LogAppender;

    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;BI)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/oplus/log/ILogWriter;->append(Ljava/lang/String;Ljava/lang/String;BI)V

    :cond_7
    return-void
.end method

.method public close()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/log/ILogWriter;->close()V

    :cond_7
    return-void
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/log/appender/LogAppender;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V

    return-void
.end method

.method public flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/oplus/log/ILogWriter;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V

    :cond_7
    return-void
.end method

.method public flushSync()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/oplus/log/ILogWriter;->flushSync()V

    :cond_7
    return-void
.end method

.method public getCacheQueueSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/oplus/log/ILogWriter;->getCacheQueueSize()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public quitThread()V
    .registers 3

    const-string v0, "HLog"

    const-string v1, "append : quitThread 002 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/log/appender/LogAppender;->mLogWriter:Lcom/oplus/log/ILogWriter;

    invoke-interface {p0}, Lcom/oplus/log/ILogWriter;->quitThread()V

    return-void
.end method
