.class public abstract Lcom/oplus/log/log/BaseSimpleLog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/IBaseLog;
.implements Lcom/oplus/log/ISimpleLog;


# instance fields
.field public dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field private mConsoleLogLevel:I

.field private mFileLogLevel:I

.field public mLogProcessor:Lcom/oplus/log/log/LogProcessor;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mFileLogLevel:I

    iput v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/log/LogProcessor;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mFileLogLevel:I

    iput v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    iput-object p1, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    return-void
.end method

.method private cvtMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getSpanContext()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "traceContext:"

    const-string v1, ";"

    invoke-static {v0, p0, v1, p1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1c
    return-object p1
.end method


# virtual methods
.method public abstract checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    iget v5, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v5, v4, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    invoke-direct {v0, v3, p1, p2, v1}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_26

    :cond_1d
    iget v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v0, v4, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_26
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x2

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_17
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x6

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    iget v5, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v5, v4, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    invoke-direct {v0, v3, p1, p2, v1}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_26

    :cond_1d
    iget v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v0, v4, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_26
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x5

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_17
    return-void
.end method

.method public getConsoleLogLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    return p0
.end method

.method public getFileLogLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mFileLogLevel:I

    return p0
.end method

.method public getLogType()I
    .registers 1

    const/16 p0, 0x65

    return p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x6

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    iget v5, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v5, v4, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    invoke-direct {v0, v3, p1, p2, v1}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_26

    :cond_1d
    iget v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v0, v4, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_26
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x3

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_17
    return-void
.end method

.method public setConsoleLogLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    return-void
.end method

.method public setFileLogLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/log/BaseSimpleLog;->mFileLogLevel:I

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eqz v0, :cond_1b

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    iget v4, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v4, v2, :cond_12

    move v1, v3

    :cond_12
    invoke-direct {v0, v3, p1, p2, v1}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_23

    :cond_1b
    iget v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v0, v2, :cond_20

    move v1, v3

    :cond_20
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_23
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_17
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x6

    if-eqz v0, :cond_1d

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    iget v5, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v5, v4, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    invoke-direct {v0, v3, p1, p2, v1}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_26

    :cond_1d
    iget v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mConsoleLogLevel:I

    if-eq v0, v4, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    invoke-virtual {p0, p1, p2, v1, v3}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_26
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    const/4 v1, 0x4

    if-eqz v0, :cond_14

    invoke-direct {p0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->cvtMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/oplus/log/log/LogBean;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/oplus/log/log/LogBean;-><init>(BLjava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/oplus/log/log/BaseSimpleLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    invoke-virtual {p0, v0}, Lcom/oplus/log/log/LogProcessor;->sendLogInfo(Lcom/oplus/log/log/LogBean;)V

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/oplus/log/log/BaseSimpleLog;->checkAndLog(Ljava/lang/String;Ljava/lang/String;ZB)V

    :goto_17
    return-void
.end method
