.class public Lcom/oplus/log/log/CollectLog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/IBaseLog;
.implements Lcom/oplus/log/log/ICollectLog;


# instance fields
.field private final mAppender:Lcom/oplus/log/appender/ILogAppender;


# direct methods
.method public constructor <init>(Lcom/oplus/log/appender/ILogAppender;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/log/CollectLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    return-void
.end method

.method private getAutoCollectLog(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-direct {p0, p1}, Lcom/oplus/log/log/CollectLog;->getExtra(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getExtra(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getExtras()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getExtras()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    :try_start_24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_34

    :try_start_2a
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_31

    goto :goto_32

    :catchall_31
    move-object v1, v2

    :goto_32
    move-object v2, v3

    goto :goto_35

    :catchall_34
    move-object v1, v2

    :goto_35
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    const-string v3, "RAMSize"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "GB"

    if-eqz v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/oplus/log/log/CollectLog;->unitFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_58
    const-string v3, "InternalFreeSpace"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/oplus/log/log/CollectLog;->unitFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_6d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_84
    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unitFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_7

    :catchall_5
    const-wide/16 p0, 0x0

    :goto_7
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-float p0, p0

    const/high16 p1, 0x49800000  # 1048576.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-virtual {v0, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public append(Lcom/oplus/log/collect/LoggingEvent;I)V
    .registers 5

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/oplus/log/log/CollectLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/log/log/CollectLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/oplus/log/log/CollectLog;->getAutoCollectLog(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getPriority()B

    move-result p1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/oplus/log/appender/ILogAppender;->append(Ljava/lang/String;Ljava/lang/String;BI)V

    :cond_1f
    return-void
.end method

.method public appendSync(Lcom/oplus/log/collect/LoggingEvent;I)V
    .registers 5

    if-eqz p1, :cond_1f

    iget-object v0, p0, Lcom/oplus/log/log/CollectLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/log/log/CollectLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/oplus/log/log/CollectLog;->getAutoCollectLog(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getPriority()B

    move-result p1

    invoke-interface {v0, v1, p0, p1, p2}, Lcom/oplus/log/appender/ILogAppender;->append(Ljava/lang/String;Ljava/lang/String;BI)V

    :cond_1f
    return-void
.end method

.method public getLogType()I
    .registers 1

    const/16 p0, 0x68

    return p0
.end method
