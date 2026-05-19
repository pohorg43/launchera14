.class public Lcom/oplus/log/log/SimpleLog;
.super Lcom/oplus/log/log/BaseSimpleLog;
.source ""


# instance fields
.field private final mAppender:Lcom/oplus/log/appender/ILogAppender;

.field private mCollectLog:Lcom/oplus/log/log/CollectLog;

.field private monitor:Lcom/oplus/log/collect/ActivityLifeMonitor;


# direct methods
.method public constructor <init>(Lcom/oplus/log/appender/ILogAppender;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/log/log/BaseSimpleLog;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/log/SimpleLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/appender/ILogAppender;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/collect/ActivityLifeMonitor;)V
    .registers 4

    invoke-direct {p0}, Lcom/oplus/log/log/BaseSimpleLog;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/log/SimpleLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    iput-object p2, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iput-object p3, p0, Lcom/oplus/log/log/SimpleLog;->monitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/appender/ILogAppender;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/collect/ActivityLifeMonitor;Lcom/oplus/log/log/LogProcessor;Lcom/oplus/log/log/CollectLog;)V
    .registers 6

    invoke-direct {p0, p4}, Lcom/oplus/log/log/BaseSimpleLog;-><init>(Lcom/oplus/log/log/LogProcessor;)V

    iput-object p5, p0, Lcom/oplus/log/log/SimpleLog;->mCollectLog:Lcom/oplus/log/log/CollectLog;

    new-instance p4, Lcom/oplus/log/log/LogProcessor;

    invoke-direct {p4, p0, p5, p1}, Lcom/oplus/log/log/LogProcessor;-><init>(Lcom/oplus/log/log/SimpleLog;Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/appender/ILogAppender;)V

    iput-object p4, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    iput-object p1, p0, Lcom/oplus/log/log/SimpleLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    iput-object p2, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iput-object p3, p0, Lcom/oplus/log/log/SimpleLog;->monitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    return-void
.end method

.method private log2File(Ljava/lang/String;Ljava/lang/String;B)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    :cond_d
    iget-object v0, p0, Lcom/oplus/log/log/SimpleLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/oplus/log/log/BaseSimpleLog;->getLogType()I

    move-result p0

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/oplus/log/appender/ILogAppender;->append(Ljava/lang/String;Ljava/lang/String;BI)V

    :cond_18
    :goto_18
    return-void
.end method


# virtual methods
.method public append(Lcom/oplus/log/collect/LoggingEvent;I)V
    .registers 5

    if-eqz p1, :cond_16

    new-instance v0, Lcom/oplus/log/log/LogBean;

    invoke-direct {v0, p1, p2}, Lcom/oplus/log/log/LogBean;-><init>(Lcom/oplus/log/collect/LoggingEvent;I)V

    iget-object v1, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_16

    :cond_f
    iget-object p0, p0, Lcom/oplus/log/log/SimpleLog;->mCollectLog:Lcom/oplus/log/log/CollectLog;

    if-eqz p0, :cond_16

    invoke-virtual {p0, p1, p2}, Lcom/oplus/log/log/CollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :cond_16
    :goto_16
    return-void
.end method

.method public checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-nez v0, :cond_12

    goto/16 :goto_c0

    :cond_12
    invoke-virtual {v0}, Lcom/oplus/log/config/DynConfigManager;->isUpload()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->innerUpload(Ly3/a;Z)V

    :cond_1d
    iget-object v0, p0, Lcom/oplus/log/log/SimpleLog;->monitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->isForeground()Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "_back"

    invoke-static {p1, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2d
    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v0, p4}, Lcom/oplus/log/config/DynConfigManager;->isPrint(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v0}, Lcom/oplus/log/config/DynConfigManager;->getSpanContext()Ljava/lang/String;

    move-result-object v0

    const-string v3, "traceContext"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, " "

    if-eqz v4, :cond_6a

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    array-length v4, v0

    if-lez v4, :cond_91

    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_91

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v1

    invoke-static {v3, v1, v5, p1}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    array-length v1, v0

    if-le v1, v2, :cond_91

    aget-object p2, v0, v2

    goto :goto_91

    :cond_6a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_91

    const-string v1, "000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    const-string v0, "traceContext:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v1}, Lcom/oplus/log/config/DynConfigManager;->getSpanContext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_91
    :goto_91
    invoke-direct {p0, p1, p2, p4}, Lcom/oplus/log/log/SimpleLog;->log2File(Ljava/lang/String;Ljava/lang/String;B)V

    :cond_94
    if-eqz p3, :cond_c0

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {p0, p4}, Lcom/oplus/log/config/DynConfigManager;->isShow(I)Z

    move-result p0

    if-eqz p0, :cond_c0

    if-eq p4, v2, :cond_bd

    const/4 p0, 0x2

    if-eq p4, p0, :cond_b9

    const/4 p0, 0x3

    if-eq p4, p0, :cond_b5

    const/4 p0, 0x4

    if-eq p4, p0, :cond_b1

    const/4 p0, 0x5

    if-eq p4, p0, :cond_ad

    goto :goto_c0

    :cond_ad
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_b1
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_b5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_b9
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    :cond_bd
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    :goto_c0
    return-void
.end method

.method public quitTd()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/log/log/LogProcessor;->quitThread()V

    :cond_7
    return-void
.end method

.method public quitThread()V
    .registers 3

    const-string v0, "HLog"

    const-string v1, "append : quitThread 001 "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/log/log/SimpleLog;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    invoke-interface {v0}, Lcom/oplus/log/appender/ILogAppender;->quitThread()V

    invoke-virtual {p0}, Lcom/oplus/log/log/SimpleLog;->quitTd()V

    return-void
.end method
