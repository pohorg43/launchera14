.class public Lcom/oplus/log/NLogWriter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/ILogWriter;


# static fields
.field private static final TAG:Ljava/lang/String; = "NLogWriter"


# instance fields
.field private mLogan:Lcom/oplus/log/core/Logan;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;BI)V
    .registers 5

    :try_start_0
    iget-object p0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/log/core/Logan;->w(Ljava/lang/String;Ljava/lang/String;BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception p0

    const-string p1, "append : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "NLogWriter"

    invoke-static {p0, p1, p2}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/log/NLogWriter;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V

    return-void
.end method

.method public flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    invoke-virtual {p0, p1}, Lcom/oplus/log/core/Logan;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception p0

    const-string p1, "flush : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "NLogWriter"

    invoke-static {p0, p1, v0}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public flushSync()V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    invoke-virtual {p0}, Lcom/oplus/log/core/Logan;->flushSync()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_12

    :catch_6
    move-exception p0

    const-string v0, "flushSync : "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NLogWriter"

    invoke-static {p0, v0, v1}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_12
    return-void
.end method

.method public getCacheQueueSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/log/core/Logan;->getCacheQueueSize()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/oplus/log/Settings;)V
    .registers 6

    const-string v0, "0123456789012345"

    :try_start_2
    new-instance v1, Lcom/oplus/log/core/LoganConfig$Builder;

    invoke-direct {v1}, Lcom/oplus/log/core/LoganConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getCacheDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/log/core/LoganConfig$Builder;->setCachePath(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/log/core/LoganConfig$Builder;->setPath(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getFileExpireDays()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/oplus/log/core/LoganConfig$Builder;->setDay(J)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getNamePrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/oplus/log/core/LoganConfig$Builder;->setFileNamePrefix(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/log/core/LoganConfig$Builder;->setEncryptKey16([B)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/log/core/LoganConfig$Builder;->setEncryptIV16([B)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/log/core/LoganConfig$Builder;->build()Lcom/oplus/log/core/LoganConfig;

    move-result-object p1

    new-instance v0, Lcom/oplus/log/core/Logan;

    invoke-direct {v0}, Lcom/oplus/log/core/Logan;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    invoke-virtual {v0, p1}, Lcom/oplus/log/core/Logan;->init(Lcom/oplus/log/core/LoganConfig;)V

    iget-object p1, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    new-instance v0, Lcom/oplus/log/NLogWriter$1;

    invoke-direct {v0, p0}, Lcom/oplus/log/NLogWriter$1;-><init>(Lcom/oplus/log/NLogWriter;)V

    invoke-virtual {p1, v0}, Lcom/oplus/log/core/Logan;->setOnLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V
    :try_end_50
    .catchall {:try_start_2 .. :try_end_50} :catchall_51

    goto :goto_68

    :catchall_51
    move-exception p0

    const-string p1, "init : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NLogWriter"

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_68
    return-void
.end method

.method public init(Lcom/oplus/log/core/LoganConfig;)V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/oplus/log/core/Logan;

    invoke-direct {v0}, Lcom/oplus/log/core/Logan;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    invoke-virtual {v0, p1}, Lcom/oplus/log/core/Logan;->init(Lcom/oplus/log/core/LoganConfig;)V

    iget-object p1, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    new-instance v0, Lcom/oplus/log/NLogWriter$2;

    invoke-direct {v0, p0}, Lcom/oplus/log/NLogWriter$2;-><init>(Lcom/oplus/log/NLogWriter;)V

    invoke-virtual {p1, v0}, Lcom/oplus/log/core/Logan;->setOnLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_2c

    :catchall_15
    move-exception p0

    const-string p1, "init : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NLogWriter"

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method public quitThread()V
    .registers 3

    const-string v0, "HLog"

    const-string v1, "append : quitThread 003 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/log/NLogWriter;->mLogan:Lcom/oplus/log/core/Logan;

    invoke-virtual {p0}, Lcom/oplus/log/core/Logan;->quitThread()V

    return-void
.end method
