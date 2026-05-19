.class Lcom/oplus/log/core/LoganControlCenter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private dataFormat:Ljava/text/SimpleDateFormat;

.field private mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/oplus/log/core/LoganModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCachePath:Ljava/lang/String;

.field private mEncryptIv16:Ljava/lang/String;

.field private mEncryptKey16:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mLoganThread:Lcom/oplus/log/core/LoganThread;

.field private mMaxLogFile:J

.field private mMaxQueue:I

.field private mMinSDCard:J

.field private mPath:Ljava/lang/String;

.field private mSaveTime:J


# direct methods
.method public constructor <init>(Lcom/oplus/log/core/LoganConfig;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mMaxQueue:I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/log/core/LoganControlCenter;->dataFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/oplus/log/core/LoganConfig;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p1, Lcom/oplus/log/core/LoganConfig;->mPathPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mPath:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/log/core/LoganConfig;->mCachePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mCachePath:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/log/core/LoganConfig;->mFileNamePrefix:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mFileNamePrefix:Ljava/lang/String;

    iget-wide v1, p1, Lcom/oplus/log/core/LoganConfig;->mDay:J

    iput-wide v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mSaveTime:J

    iget-wide v1, p1, Lcom/oplus/log/core/LoganConfig;->mMinSDCard:J

    iput-wide v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mMinSDCard:J

    iget-wide v1, p1, Lcom/oplus/log/core/LoganConfig;->mMaxFile:J

    iput-wide v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mMaxLogFile:J

    iget-wide v1, p1, Lcom/oplus/log/core/LoganConfig;->mMaxQueue:J

    long-to-int v1, v1

    iput v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mMaxQueue:I

    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/oplus/log/core/LoganConfig;->mEncryptKey16:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mEncryptKey16:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/log/core/LoganConfig;->mEncryptIv16:[B

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mEncryptIv16:Ljava/lang/String;

    iget p1, p0, Lcom/oplus/log/core/LoganControlCenter;->mMaxQueue:I

    const/16 v1, 0xc8

    if-ge p1, v1, :cond_4d

    iput v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mMaxQueue:I

    :cond_4d
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    iget v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mMaxQueue:I

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/log/core/LoganControlCenter;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Lcom/oplus/log/core/LoganControlCenter;->init()V

    return-void

    :cond_5a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "config\'s param is invalid"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getDateTime(Ljava/lang/String;)J
    .registers 2

    :try_start_0
    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->dataFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_24

    :catch_b
    move-exception p0

    const-string p1, "getDateTime : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LoganControlCenter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    :goto_24
    return-wide p0
.end method

.method private init()V
    .registers 15

    iget-object v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    if-nez v0, :cond_28

    new-instance v0, Lcom/oplus/log/core/LoganThread;

    iget-object v2, p0, Lcom/oplus/log/core/LoganControlCenter;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iget-object v3, p0, Lcom/oplus/log/core/LoganControlCenter;->mCachePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/log/core/LoganControlCenter;->mPath:Ljava/lang/String;

    iget-wide v5, p0, Lcom/oplus/log/core/LoganControlCenter;->mSaveTime:J

    iget-wide v7, p0, Lcom/oplus/log/core/LoganControlCenter;->mMaxLogFile:J

    iget-wide v9, p0, Lcom/oplus/log/core/LoganControlCenter;->mMinSDCard:J

    iget-object v11, p0, Lcom/oplus/log/core/LoganControlCenter;->mEncryptKey16:Ljava/lang/String;

    iget-object v12, p0, Lcom/oplus/log/core/LoganControlCenter;->mEncryptIv16:Ljava/lang/String;

    iget-object v13, p0, Lcom/oplus/log/core/LoganControlCenter;->mFileNamePrefix:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/oplus/log/core/LoganThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    const-string v1, "logan-thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_28
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/log/core/LoganControlCenter;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V

    return-void
.end method

.method public flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lcom/oplus/log/core/LoganModel;

    invoke-direct {v0}, Lcom/oplus/log/core/LoganModel;-><init>()V

    sget-object v1, Lcom/oplus/log/core/LoganModel$Action;->FLUSH:Lcom/oplus/log/core/LoganModel$Action;

    iput-object v1, v0, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    iput-object p1, v0, Lcom/oplus/log/core/LoganModel;->listener:Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;

    iget-object p1, p0, Lcom/oplus/log/core/LoganControlCenter;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganThread;->notifyRun()V

    :cond_20
    return-void
.end method

.method public flushSync()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganThread;->doFlushLog2File()V

    :cond_10
    return-void
.end method

.method public getCacheQueueSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getDir()Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getsLoganProtocolStatus()Lcom/oplus/log/core/OnLoganProtocolStatus;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganThread;->getsLoganProtocolStatus()Lcom/oplus/log/core/OnLoganProtocolStatus;

    move-result-object p0

    return-object p0
.end method

.method public quitThread()V
    .registers 3

    const-string v0, "HLog"

    :try_start_2
    const-string v1, "append : quitThread 005 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    invoke-virtual {v1}, Lcom/oplus/log/core/LoganThread;->quit()V

    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    const-string p0, "append : quitThread 006 "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_16

    :catch_16
    return-void
.end method

.method public send([Ljava/lang/String;Lcom/oplus/log/core/SendLogRunnable;)V
    .registers 10

    iget-object v0, p0, Lcom/oplus/log/core/LoganControlCenter;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    if-eqz p1, :cond_4c

    array-length v0, p1

    if-nez v0, :cond_e

    goto :goto_4c

    :cond_e
    array-length v0, p1

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_4c

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_49

    :cond_1b
    invoke-direct {p0, v2}, Lcom/oplus/log/core/LoganControlCenter;->getDateTime(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_49

    new-instance v4, Lcom/oplus/log/core/LoganModel;

    invoke-direct {v4}, Lcom/oplus/log/core/LoganModel;-><init>()V

    new-instance v5, Lcom/oplus/log/core/SendAction;

    invoke-direct {v5}, Lcom/oplus/log/core/SendAction;-><init>()V

    sget-object v6, Lcom/oplus/log/core/LoganModel$Action;->SEND:Lcom/oplus/log/core/LoganModel$Action;

    iput-object v6, v4, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/oplus/log/core/SendAction;->date:Ljava/lang/String;

    iput-object p2, v5, Lcom/oplus/log/core/SendAction;->sendLogRunnable:Lcom/oplus/log/core/SendLogRunnable;

    iput-object v5, v4, Lcom/oplus/log/core/LoganModel;->sendAction:Lcom/oplus/log/core/SendAction;

    iget-object v2, p0, Lcom/oplus/log/core/LoganControlCenter;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Lcom/oplus/log/core/LoganThread;->notifyRun()V

    :cond_49
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_4c
    :goto_4c
    return-void
.end method

.method public setsLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mLoganThread:Lcom/oplus/log/core/LoganThread;

    invoke-virtual {p0, p1}, Lcom/oplus/log/core/LoganThread;->setsLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V

    return-void
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;BI)V
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/oplus/log/core/LoganModel;

    invoke-direct {v0}, Lcom/oplus/log/core/LoganModel;-><init>()V

    sget-object v1, Lcom/oplus/log/core/LoganModel$Action;->WRITE:Lcom/oplus/log/core/LoganModel$Action;

    iput-object v1, v0, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    new-instance v1, Lcom/oplus/log/core/WriteAction;

    invoke-direct {v1}, Lcom/oplus/log/core/WriteAction;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    iput-object p1, v1, Lcom/oplus/log/core/WriteAction;->tag:Ljava/lang/String;

    iput-object p2, v1, Lcom/oplus/log/core/WriteAction;->log:Ljava/lang/String;

    iput-byte p3, v1, Lcom/oplus/log/core/WriteAction;->level:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v1, Lcom/oplus/log/core/WriteAction;->localTime:J

    iput p4, v1, Lcom/oplus/log/core/WriteAction;->flag:I

    iput-wide v3, v1, Lcom/oplus/log/core/WriteAction;->threadId:J

    iput-object v2, v1, Lcom/oplus/log/core/WriteAction;->threadName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/log/core/LoganModel;->writeAction:Lcom/oplus/log/core/WriteAction;

    :try_start_39
    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;BIZ)V
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_7

    return-void

    :cond_7
    new-instance p5, Lcom/oplus/log/core/LoganModel;

    invoke-direct {p5}, Lcom/oplus/log/core/LoganModel;-><init>()V

    sget-object v0, Lcom/oplus/log/core/LoganModel$Action;->WRITE:Lcom/oplus/log/core/LoganModel$Action;

    iput-object v0, p5, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    new-instance v0, Lcom/oplus/log/core/WriteAction;

    invoke-direct {v0}, Lcom/oplus/log/core/WriteAction;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-object p1, v0, Lcom/oplus/log/core/WriteAction;->tag:Ljava/lang/String;

    iput-object p2, v0, Lcom/oplus/log/core/WriteAction;->log:Ljava/lang/String;

    iput-byte p3, v0, Lcom/oplus/log/core/WriteAction;->level:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/oplus/log/core/WriteAction;->localTime:J

    iput p4, v0, Lcom/oplus/log/core/WriteAction;->flag:I

    iput-wide v2, v0, Lcom/oplus/log/core/WriteAction;->threadId:J

    iput-object v1, v0, Lcom/oplus/log/core/WriteAction;->threadName:Ljava/lang/String;

    iput-object v0, p5, Lcom/oplus/log/core/LoganModel;->writeAction:Lcom/oplus/log/core/WriteAction;

    :try_start_39
    iget-object p0, p0, Lcom/oplus/log/core/LoganControlCenter;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, p5}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3e} :catch_3f

    return-void

    :catch_3f
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
