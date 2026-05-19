.class Lcom/oplus/log/core/LoganThread;
.super Ljava/lang/Thread;
.source ""


# static fields
.field private static final CACHE_SIZE:I = 0x400

.field private static final MINUTE:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "HLog-LoganThread"


# instance fields
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

.field private mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/oplus/log/core/LoganModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEncryptIv16:Ljava/lang/String;

.field private mEncryptKey16:Ljava/lang/String;

.field private mFileDirectory:Ljava/io/File;

.field private mFileNamePrefix:Ljava/lang/String;

.field private final mFileStrategy:Lcom/oplus/log/core/FileStrategy;

.field private final mFormatter:Lcom/oplus/log/formatter/SimpleLogFormatter;

.field private volatile mIsRun:Z

.field private mIsSDCard:Z

.field private mIsWorking:Z

.field private mKeyLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

.field private mLastTime:J

.field private mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

.field private mMaxLogFile:J

.field private mMinSDCard:J

.field private mPath:Ljava/lang/String;

.field private mSaveTime:J

.field private mSendLogStatusCode:I

.field private mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private sLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

.field private final sendSync:Ljava/lang/Object;

.field private final sync:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/oplus/log/core/LoganModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/core/LoganThread;->sync:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/core/LoganThread;->sendSync:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/log/core/LoganThread;->mIsRun:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/core/LoganThread;->mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/oplus/log/core/LoganThread;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object p2, p0, Lcom/oplus/log/core/LoganThread;->mCachePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    iput-object p12, p0, Lcom/oplus/log/core/LoganThread;->mFileNamePrefix:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oplus/log/core/LoganThread;->mSaveTime:J

    iput-wide p6, p0, Lcom/oplus/log/core/LoganThread;->mMaxLogFile:J

    iput-wide p8, p0, Lcom/oplus/log/core/LoganThread;->mMinSDCard:J

    iput-object p10, p0, Lcom/oplus/log/core/LoganThread;->mEncryptKey16:Ljava/lang/String;

    iput-object p11, p0, Lcom/oplus/log/core/LoganThread;->mEncryptIv16:Ljava/lang/String;

    new-instance p1, Lcom/oplus/log/core/FileStrategy;

    invoke-direct {p1}, Lcom/oplus/log/core/FileStrategy;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/core/LoganThread;->mFileStrategy:Lcom/oplus/log/core/FileStrategy;

    new-instance p1, Lcom/oplus/log/formatter/SimpleLogFormatter;

    invoke-direct {p1}, Lcom/oplus/log/formatter/SimpleLogFormatter;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/core/LoganThread;->mFormatter:Lcom/oplus/log/formatter/SimpleLogFormatter;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/log/core/LoganThread;)Lcom/oplus/log/core/OnLoganProtocolStatus;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->sLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/log/core/LoganThread;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->sendSync:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/oplus/log/core/LoganThread;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/log/core/LoganThread;->mSendLogStatusCode:I

    return p1
.end method

.method public static synthetic access$300(Lcom/oplus/log/core/LoganThread;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/log/core/LoganThread;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private action(Lcom/oplus/log/core/LoganModel;)V
    .registers 10

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/oplus/log/core/LoganModel;->isValid()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_70

    :cond_9
    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    if-nez v0, :cond_33

    new-instance v0, Lcom/oplus/log/core/LoganProtocol;

    invoke-direct {v0}, Lcom/oplus/log/core/LoganProtocol;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    new-instance v1, Lcom/oplus/log/core/LoganThread$1;

    invoke-direct {v1, p0}, Lcom/oplus/log/core/LoganThread$1;-><init>(Lcom/oplus/log/core/LoganThread;)V

    invoke-virtual {v0, v1}, Lcom/oplus/log/core/LoganProtocol;->setOnLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V

    iget-object v2, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    iget-object v3, p0, Lcom/oplus/log/core/LoganThread;->mCachePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    iget-wide v0, p0, Lcom/oplus/log/core/LoganThread;->mMaxLogFile:J

    long-to-int v5, v0

    iget-object v6, p0, Lcom/oplus/log/core/LoganThread;->mEncryptKey16:Ljava/lang/String;

    iget-object v7, p0, Lcom/oplus/log/core/LoganThread;->mEncryptIv16:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/log/core/LoganProtocol;->logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    sget-boolean v1, Lcom/oplus/log/core/Logan;->sDebug:Z

    invoke-virtual {v0, v1}, Lcom/oplus/log/core/LoganProtocol;->logan_debug(Z)V

    :cond_33
    iget-object v0, p1, Lcom/oplus/log/core/LoganModel;->action:Lcom/oplus/log/core/LoganModel$Action;

    sget-object v1, Lcom/oplus/log/core/LoganModel$Action;->WRITE:Lcom/oplus/log/core/LoganModel$Action;

    if-ne v0, v1, :cond_3f

    iget-object p1, p1, Lcom/oplus/log/core/LoganModel;->writeAction:Lcom/oplus/log/core/WriteAction;

    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganThread;->doWriteLog2File(Lcom/oplus/log/core/WriteAction;)V

    goto :goto_70

    :cond_3f
    sget-object v1, Lcom/oplus/log/core/LoganModel$Action;->SEND:Lcom/oplus/log/core/LoganModel$Action;

    if-ne v0, v1, :cond_62

    iget-object v0, p1, Lcom/oplus/log/core/LoganModel;->sendAction:Lcom/oplus/log/core/SendAction;

    iget-object v0, v0, Lcom/oplus/log/core/SendAction;->sendLogRunnable:Lcom/oplus/log/core/SendLogRunnable;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->sendSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_4c
    iget v1, p0, Lcom/oplus/log/core/LoganThread;->mSendLogStatusCode:I

    const/16 v2, 0x2711

    if-ne v1, v2, :cond_58

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->mCacheSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_58
    iget-object p1, p1, Lcom/oplus/log/core/LoganModel;->sendAction:Lcom/oplus/log/core/SendAction;

    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganThread;->doSendLog2Net(Lcom/oplus/log/core/SendAction;)V

    :goto_5d
    monitor-exit v0

    goto :goto_70

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_5f

    throw p0

    :cond_62
    sget-object v1, Lcom/oplus/log/core/LoganModel$Action;->FLUSH:Lcom/oplus/log/core/LoganModel$Action;

    if-ne v0, v1, :cond_70

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganThread;->doFlushLog2File()V

    iget-object p0, p1, Lcom/oplus/log/core/LoganModel;->listener:Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;

    if-eqz p0, :cond_70

    invoke-interface {p0}, Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;->onComplete()V

    :cond_70
    :goto_70
    return-void
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-string p0, "copyFile : "

    const-string v0, "HLog-LoganThread"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_10} :catch_97
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_10} :catch_63
    .catchall {:try_start_6 .. :try_end_10} :catchall_5e

    :try_start_10
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1a} :catch_59
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1a} :catch_54
    .catchall {:try_start_10 .. :try_end_1a} :catchall_4e

    const/16 p2, 0x400

    :try_start_1c
    new-array p2, p2, [B

    :goto_1e
    invoke-virtual {v3, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2b

    invoke-virtual {p1, p2, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2a} :catch_4b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2a} :catch_48
    .catchall {:try_start_1c .. :try_end_2a} :catchall_45

    goto :goto_1e

    :cond_2b
    const/4 v2, 0x1

    :try_start_2c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    move-exception p2

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_38
    :try_start_38
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3d

    goto/16 :goto_db

    :catch_3d
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_ca

    :catchall_45
    move-exception p2

    move-object v1, p1

    goto :goto_50

    :catch_48
    move-exception p2

    move-object v1, p1

    goto :goto_56

    :catch_4b
    move-exception p2

    move-object v1, p1

    goto :goto_5b

    :catchall_4e
    move-exception p1

    move-object p2, p1

    :goto_50
    move-object p1, v1

    move-object v1, v3

    goto/16 :goto_dd

    :catch_54
    move-exception p1

    move-object p2, p1

    :goto_56
    move-object p1, v1

    move-object v1, v3

    goto :goto_66

    :catch_59
    move-exception p1

    move-object p2, p1

    :goto_5b
    move-object p1, v1

    move-object v1, v3

    goto :goto_9a

    :catchall_5e
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    goto/16 :goto_dd

    :catch_63
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    :goto_66
    :try_start_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_66 .. :try_end_7c} :catchall_dc

    if-eqz v1, :cond_8a

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_81} :catch_82

    goto :goto_8a

    :catch_82
    move-exception p2

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    if-eqz p1, :cond_db

    :try_start_8c
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_db

    :catch_90
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_ca

    :catch_97
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    :goto_9a
    :try_start_9a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_9a .. :try_end_b0} :catchall_dc

    if-eqz v1, :cond_be

    :try_start_b2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_be

    :catch_b6
    move-exception p2

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, v1, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_be
    :goto_be
    if-eqz p1, :cond_db

    :try_start_c0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_db

    :catch_c4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_ca
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_db
    :goto_db
    return v2

    :catchall_dc
    move-exception p2

    :goto_dd
    if-eqz v1, :cond_eb

    :try_start_df
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e2} :catch_e3

    goto :goto_eb

    :catch_e3
    move-exception v1

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_eb
    :goto_eb
    if-eqz p1, :cond_f9

    :try_start_ed
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_f1

    goto :goto_f9

    :catch_f1
    move-exception p1

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    throw p2
.end method

.method private deleteExpiredFile(J)V
    .registers 12

    const-string v0, "HLog-LoganThread"

    const-string v1, "-"

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_a8

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_a8

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_a8

    aget-object v5, p0, v4

    if-nez v5, :cond_22

    goto/16 :goto_a4

    :cond_22
    :try_start_22
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v3

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x5

    if-ge v7, v8, :cond_39

    goto :goto_a4

    :cond_39
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, v6

    add-int/lit8 v8, v8, -0x4

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    add-int/lit8 v8, v8, -0x3

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    add-int/lit8 v8, v8, -0x2

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aget-object v6, v6, v8

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd-HH"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-gtz v6, :cond_a4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "被删除"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_99} :catch_9a

    goto :goto_a4

    :catch_9a
    move-exception v5

    const-string v6, "deleteExpiredFile : "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1a

    :cond_a8
    return-void
.end method

.method private doSendLog2Net(Lcom/oplus/log/core/SendAction;)V
    .registers 4

    const-string v0, "HLog-LoganThread"

    const-string v1, "Logan send start"

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    if-eqz p1, :cond_4d

    invoke-virtual {p1}, Lcom/oplus/log/core/SendAction;->isValid()Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4d

    :cond_18
    invoke-direct {p0, p1}, Lcom/oplus/log/core/LoganThread;->prepareLogFile(Lcom/oplus/log/core/SendAction;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string p0, "Logan prepare log file failed, can\'t find log file"

    invoke-static {v0, p0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_24
    iget-object v0, p1, Lcom/oplus/log/core/SendAction;->sendLogRunnable:Lcom/oplus/log/core/SendLogRunnable;

    invoke-virtual {v0, p1}, Lcom/oplus/log/core/SendLogRunnable;->setSendAction(Lcom/oplus/log/core/SendAction;)V

    iget-object v0, p1, Lcom/oplus/log/core/SendAction;->sendLogRunnable:Lcom/oplus/log/core/SendLogRunnable;

    new-instance v1, Lcom/oplus/log/core/LoganThread$2;

    invoke-direct {v1, p0}, Lcom/oplus/log/core/LoganThread$2;-><init>(Lcom/oplus/log/core/LoganThread;)V

    invoke-virtual {v0, v1}, Lcom/oplus/log/core/SendLogRunnable;->setCallBackListener(Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;)V

    const/16 v0, 0x2711

    iput v0, p0, Lcom/oplus/log/core/LoganThread;->mSendLogStatusCode:I

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_46

    new-instance v0, Lcom/oplus/log/core/LoganThread$3;

    invoke-direct {v0, p0}, Lcom/oplus/log/core/LoganThread$3;-><init>(Lcom/oplus/log/core/LoganThread;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/core/LoganThread;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_46
    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->mSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/oplus/log/core/SendAction;->sendLogRunnable:Lcom/oplus/log/core/SendLogRunnable;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method private doWriteLog2File(Lcom/oplus/log/core/WriteAction;)V
    .registers 11

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mFileDirectory:Ljava/io/File;

    if-nez v0, :cond_d

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/log/core/LoganThread;->mFileDirectory:Ljava/io/File;

    :cond_d
    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mFileStrategy:Lcom/oplus/log/core/FileStrategy;

    invoke-virtual {v0}, Lcom/oplus/log/core/FileStrategy;->shouldOpenNewFile()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    invoke-virtual {v0}, Lcom/oplus/log/core/LoganProtocol;->logan_flush()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/log/core/LoganThread;->mSaveTime:J

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/oplus/log/core/LoganThread;->deleteExpiredFile(J)V

    iget-object v2, p0, Lcom/oplus/log/core/LoganThread;->mFileStrategy:Lcom/oplus/log/core/FileStrategy;

    iget-object v3, p0, Lcom/oplus/log/core/LoganThread;->mFileNamePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/oplus/log/core/FileStrategy;->makeFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    invoke-virtual {v1, v0}, Lcom/oplus/log/core/LoganProtocol;->logan_open(Ljava/lang/String;)V

    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/log/core/LoganThread;->mLastTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_4c

    invoke-direct {p0}, Lcom/oplus/log/core/LoganThread;->isCanWriteSDCard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/log/core/LoganThread;->mIsSDCard:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/log/core/LoganThread;->mLastTime:J

    :cond_4c
    iget-boolean v0, p0, Lcom/oplus/log/core/LoganThread;->mIsSDCard:Z

    if-nez v0, :cond_51

    return-void

    :cond_51
    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mFormatter:Lcom/oplus/log/formatter/SimpleLogFormatter;

    if-eqz v0, :cond_62

    iget-object v1, p1, Lcom/oplus/log/core/WriteAction;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/oplus/log/core/WriteAction;->log:Ljava/lang/String;

    iget-byte v3, p1, Lcom/oplus/log/core/WriteAction;->level:B

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/log/formatter/SimpleLogFormatter;->format(Ljava/lang/String;Ljava/lang/String;BLjava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oplus/log/core/WriteAction;->log:Ljava/lang/String;

    :cond_62
    iget-object v1, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    iget v2, p1, Lcom/oplus/log/core/WriteAction;->flag:I

    iget-object v3, p1, Lcom/oplus/log/core/WriteAction;->log:Ljava/lang/String;

    iget-wide v4, p1, Lcom/oplus/log/core/WriteAction;->localTime:J

    iget-object v6, p1, Lcom/oplus/log/core/WriteAction;->threadName:Ljava/lang/String;

    iget-wide v7, p1, Lcom/oplus/log/core/WriteAction;->threadId:J

    invoke-virtual/range {v1 .. v8}, Lcom/oplus/log/core/LoganProtocol;->logan_write(ILjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method private isCanWriteSDCard()Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    iget-wide v1, p0, Lcom/oplus/log/core/LoganThread;->mMinSDCard:J
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_15} :catch_1b

    cmp-long p0, v4, v1

    if-lez p0, :cond_32

    const/4 v0, 0x1

    goto :goto_32

    :catch_1b
    move-exception p0

    const-string v1, "isCanWriteSDCard : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "HLog-LoganThread"

    invoke-static {v1, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    return v0
.end method

.method private isFile(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2, p0, p1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    return v1
.end method

.method private prepareLogFile(Lcom/oplus/log/core/SendAction;)Z
    .registers 7

    const-string v0, "HLog-LoganThread"

    const-string v1, "prepare log file"

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/oplus/log/core/SendAction;->date:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/log/core/LoganThread;->isFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oplus/log/core/SendAction;->date:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/oplus/log/core/SendAction;->date:Ljava/lang/String;

    invoke-static {}, Lcom/oplus/log/core/Util;->getCurrentTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_59

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganThread;->doFlushLog2File()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/log/core/LoganThread;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oplus/log/core/SendAction;->date:Ljava/lang/String;

    const-string v4, ".copy"

    invoke-static {v2, v1, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oplus/log/core/LoganThread;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_60

    iput-object v1, p1, Lcom/oplus/log/core/SendAction;->uploadPath:Ljava/lang/String;

    return v3

    :cond_59
    iput-object v0, p1, Lcom/oplus/log/core/SendAction;->uploadPath:Ljava/lang/String;

    return v3

    :cond_5c
    const-string p0, ""

    iput-object p0, p1, Lcom/oplus/log/core/SendAction;->uploadPath:Ljava/lang/String;

    :cond_60
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public doFlushLog2File()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->mLoganProtocol:Lcom/oplus/log/core/LoganProtocol;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganProtocol;->logan_flush()V

    :cond_7
    return-void
.end method

.method public getsLoganProtocolStatus()Lcom/oplus/log/core/OnLoganProtocolStatus;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->sLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

    return-object p0
.end method

.method public notifyRun()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/log/core/LoganThread;->mIsWorking:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->sync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_11

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0

    :cond_11
    :goto_11
    return-void
.end method

.method public quit()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/log/core/LoganThread;->mIsRun:Z

    iget-boolean v0, p0, Lcom/oplus/log/core/LoganThread;->mIsWorking:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->sync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object p0, p0, Lcom/oplus/log/core/LoganThread;->sync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    :goto_14
    return-void
.end method

.method public quitThread()V
    .registers 1

    return-void
.end method

.method public run()V
    .registers 3

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "***********************mIsRun "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/log/core/LoganThread;->mIsRun:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "*********************"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HLog-LoganThread"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1c
    :cond_1c
    :goto_1c
    iget-boolean v0, p0, Lcom/oplus/log/core/LoganThread;->mIsRun:Z

    if-eqz v0, :cond_2e

    :try_start_20
    iget-object v0, p0, Lcom/oplus/log/core/LoganThread;->mCacheLogQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/log/core/LoganModel;

    if-eqz v0, :cond_1c

    invoke-direct {p0, v0}, Lcom/oplus/log/core/LoganThread;->action(Lcom/oplus/log/core/LoganModel;)V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_2d} :catch_1c

    goto :goto_1c

    :cond_2e
    const-string p0, "***********************************************"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "*******************LoganThread线程退出*****************"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setsLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganThread;->sLoganProtocolStatus:Lcom/oplus/log/core/OnLoganProtocolStatus;

    return-void
.end method
