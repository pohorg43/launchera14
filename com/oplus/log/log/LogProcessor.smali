.class public Lcom/oplus/log/log/LogProcessor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/ISimpleLog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/log/LogProcessor$LogThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NearX-HLog_LogProcessor"


# instance fields
.field private blockIndex:I

.field private blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/oplus/log/log/LogBean;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Ljava/lang/Object;

.field private mAppender:Lcom/oplus/log/appender/ILogAppender;

.field private mCollectLog:Lcom/oplus/log/log/ICollectLog;

.field private mLogThread:Lcom/oplus/log/log/LogProcessor$LogThread;

.field private mSimpleLog:Lcom/oplus/log/log/SimpleLog;

.field private preTimeStamp:J


# direct methods
.method public constructor <init>(Lcom/oplus/log/log/SimpleLog;Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/appender/ILogAppender;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/log/LogProcessor;->blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/log/LogProcessor;->blockIndex:I

    iput-object p1, p0, Lcom/oplus/log/log/LogProcessor;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    iput-object p2, p0, Lcom/oplus/log/log/LogProcessor;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    iput-object p3, p0, Lcom/oplus/log/log/LogProcessor;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    invoke-virtual {p0}, Lcom/oplus/log/log/LogProcessor;->initThread()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/log/log/LogProcessor;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/log/LogProcessor;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/log/log/LogProcessor;)Lcom/oplus/log/appender/ILogAppender;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/log/LogProcessor;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/log/log/LogProcessor;)I
    .registers 1

    iget p0, p0, Lcom/oplus/log/log/LogProcessor;->blockIndex:I

    return p0
.end method

.method public static synthetic access$202(Lcom/oplus/log/log/LogProcessor;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/log/log/LogProcessor;->blockIndex:I

    return p1
.end method

.method public static synthetic access$208(Lcom/oplus/log/log/LogProcessor;)I
    .registers 3

    iget v0, p0, Lcom/oplus/log/log/LogProcessor;->blockIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/log/log/LogProcessor;->blockIndex:I

    return v0
.end method

.method public static synthetic access$300(Lcom/oplus/log/log/LogProcessor;)J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/log/log/LogProcessor;->preTimeStamp:J

    return-wide v0
.end method

.method public static synthetic access$302(Lcom/oplus/log/log/LogProcessor;J)J
    .registers 3

    iput-wide p1, p0, Lcom/oplus/log/log/LogProcessor;->preTimeStamp:J

    return-wide p1
.end method

.method public static synthetic access$400(Lcom/oplus/log/log/LogProcessor;)Lcom/oplus/log/log/ICollectLog;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/log/LogProcessor;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    return-object p0
.end method


# virtual methods
.method public append(Lcom/oplus/log/collect/LoggingEvent;I)V
    .registers 4

    if-eqz p1, :cond_a

    new-instance v0, Lcom/oplus/log/log/LogBean;

    invoke-direct {v0, p1, p2}, Lcom/oplus/log/log/LogBean;-><init>(Lcom/oplus/log/collect/LoggingEvent;I)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    :cond_a
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public initThread()V
    .registers 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/log/LogProcessor;->lock:Ljava/lang/Object;

    new-instance v0, Lcom/oplus/log/log/LogProcessor$LogThread;

    iget-object v1, p0, Lcom/oplus/log/log/LogProcessor;->blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p0, v1}, Lcom/oplus/log/log/LogProcessor$LogThread;-><init>(Lcom/oplus/log/log/LogProcessor;Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v0, p0, Lcom/oplus/log/log/LogProcessor;->mLogThread:Lcom/oplus/log/log/LogProcessor$LogThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public notifyRun()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/oplus/log/log/LogProcessor;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public quitThread()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor;->mLogThread:Lcom/oplus/log/log/LogProcessor$LogThread;

    invoke-virtual {v0}, Lcom/oplus/log/log/LogProcessor$LogThread;->Quit()V

    iget-object p0, p0, Lcom/oplus/log/log/LogProcessor;->mLogThread:Lcom/oplus/log/log/LogProcessor$LogThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public sendLogInfo(Lcom/oplus/log/log/LogBean;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-boolean v0, Lcom/oplus/log/HLog;->quit:Z

    const-string v1, "NearX-HLog_LogProcessor"

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor;->mLogThread:Lcom/oplus/log/log/LogProcessor$LogThread;

    if-eqz v0, :cond_16

    :try_start_d
    invoke-virtual {v0}, Lcom/oplus/log/log/LogProcessor$LogThread;->Quit()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    const-string v0, "HLog 工作线程退出"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_2f

    const-string p0, "HLog未初始化-->"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/log/log/LogBean;->getLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_2f
    iget-object v0, p0, Lcom/oplus/log/log/LogProcessor;->blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_41

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/oplus/log/log/LogProcessor;->blockQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p1

    if-lez p1, :cond_41

    invoke-virtual {p0}, Lcom/oplus/log/log/LogProcessor;->notifyRun()V

    :cond_41
    :goto_41
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    new-instance v0, Lcom/oplus/log/log/LogBean;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    return-void
.end method

.method public writeLogInfo(Lcom/oplus/log/log/LogBean;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/oplus/log/log/LogProcessor;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez p0, :cond_1e

    const-string p0, "HLog未初始化-->"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/log/log/LogBean;->getLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NearX-HLog_LogProcessor"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_1e
    invoke-virtual {p1}, Lcom/oplus/log/log/LogBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/log/log/LogBean;->getLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/log/log/LogBean;->isShowConsole()Z

    move-result v2

    invoke-virtual {p1}, Lcom/oplus/log/log/LogBean;->getLevel()B

    move-result p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/oplus/log/log/SimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_31
    return-void
.end method
