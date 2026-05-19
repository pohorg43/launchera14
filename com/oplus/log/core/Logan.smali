.class public Lcom/oplus/log/core/Logan;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static sDebug:Z


# instance fields
.field private sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/log/core/Logan;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V

    return-void
.end method

.method public flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1}, Lcom/oplus/log/core/LoganControlCenter;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please initialize Logan first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flushSync()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganControlCenter;->flushSync()V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Please initialize Logan first"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllFiles()[Ljava/io/File;
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganControlCenter;->getDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Please initialize Logan first"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllFilesInfo()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganControlCenter;->getDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    :cond_10
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_17

    return-object v1

    :cond_17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_3c

    aget-object v3, p0, v2

    :try_start_22
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oplus/log/core/Util;->getDateStr(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_39} :catch_39

    :catch_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3c
    return-object v0

    :cond_3d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Please initialize Logan first"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCacheQueueSize()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganControlCenter;->getCacheQueueSize()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/oplus/log/core/LoganConfig;)V
    .registers 3

    new-instance v0, Lcom/oplus/log/core/LoganControlCenter;

    invoke-direct {v0, p1}, Lcom/oplus/log/core/LoganControlCenter;-><init>(Lcom/oplus/log/core/LoganConfig;)V

    iput-object v0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    return-void
.end method

.method public onListenerLogWriteStatus(Ljava/lang/String;I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganControlCenter;->getsLoganProtocolStatus()Lcom/oplus/log/core/OnLoganProtocolStatus;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0, p1, p2}, Lcom/oplus/log/core/OnLoganProtocolStatus;->loganProtocolStatus(Ljava/lang/String;I)V

    :cond_b
    return-void
.end method

.method public quitThread()V
    .registers 3

    const-string v0, "HLog"

    const-string v1, "append : quitThread 003 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    invoke-virtual {p0}, Lcom/oplus/log/core/LoganControlCenter;->quitThread()V

    return-void
.end method

.method public s([Ljava/lang/String;Lcom/oplus/log/core/SendLogRunnable;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/oplus/log/core/LoganControlCenter;->send([Ljava/lang/String;Lcom/oplus/log/core/SendLogRunnable;)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please initialize Logan first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDebug(Z)V
    .registers 2

    sput-boolean p1, Lcom/oplus/log/core/Logan;->sDebug:Z

    return-void
.end method

.method public setOnLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    invoke-virtual {p0, p1}, Lcom/oplus/log/core/LoganControlCenter;->setsLoganProtocolStatus(Lcom/oplus/log/core/OnLoganProtocolStatus;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;BI)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz p0, :cond_8

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/log/core/LoganControlCenter;->write(Ljava/lang/String;Ljava/lang/String;BI)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please initialize Logan first"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;BIZ)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/log/core/Logan;->sLoganControlCenter:Lcom/oplus/log/core/LoganControlCenter;

    if-eqz v0, :cond_d

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/log/core/LoganControlCenter;->write(Ljava/lang/String;Ljava/lang/String;BIZ)V

    return-void

    :cond_d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Please initialize Logan first with keyflag"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
