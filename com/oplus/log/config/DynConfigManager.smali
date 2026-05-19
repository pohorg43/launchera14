.class public Lcom/oplus/log/config/DynConfigManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_MAX_QUEUE:I = 0x1f4

.field private static final DEFAULT_PER_DAY:I = 0x3e8

.field private static final DYN_CONFIG_KEY:Ljava/lang/String; = "dyn-config"

.field private static final DYN_NX_CONFIG_KEY:Ljava/lang/String; = "nx-dyn-config"

.field private static final DYN_PERSIS_CONFIG_KEY:Ljava/lang/String; = "nx-persis-config"

.field private static final EFFORT:Ljava/lang/String; = "effort"

.field private static final HLOG_VAL:I = 0x2

.field private static final LIMIT_MIN_QUEUE:I = 0xc8

.field private static final NXLOG_VAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DynConfigManager"


# instance fields
.field private effort:I

.field private iDynConfig:Lcom/oplus/log/config/IDynConfig;

.field private isAutoUpload:Z

.field private isCheckConfig:Z

.field private isImplementOtel:Z

.field private mConfigDto:Ly3/a;

.field private mDefaultConfigDto:Ly3/a;

.field private mNxConfigDto:Ly3/a;

.field private persistData:Lcom/oplus/log/config/PersistData;

.field private priority:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mDefaultConfigDto:Ly3/a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/config/DynConfigManager;->effort:I

    iput-boolean v0, p0, Lcom/oplus/log/config/DynConfigManager;->isAutoUpload:Z

    iput-boolean v0, p0, Lcom/oplus/log/config/DynConfigManager;->isCheckConfig:Z

    iput-boolean v0, p0, Lcom/oplus/log/config/DynConfigManager;->isImplementOtel:Z

    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->getPriority()I

    move-result v0

    iput v0, p0, Lcom/oplus/log/config/DynConfigManager;->priority:I

    return-void
.end method

.method private getPriority()I
    .registers 2

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v0, "effort"

    invoke-virtual {p0, v0}, Lcom/oplus/log/util/SPUtil;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isPriority()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/config/DynConfigManager;->priority:I

    return p0
.end method

.method private static isThisDay(J)Z
    .registers 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "yyyy-MM-dd"

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public createDefaultConfig(II)V
    .registers 4

    new-instance v0, Lcom/oplus/log/config/UserTraceConfigBuilder;

    invoke-direct {v0}, Lcom/oplus/log/config/UserTraceConfigBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oplus/log/config/UserTraceConfigBuilder;->setConsole(I)Lcom/oplus/log/config/UserTraceConfigBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/oplus/log/config/UserTraceConfigBuilder;->setLevel(I)Lcom/oplus/log/config/UserTraceConfigBuilder;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/oplus/log/config/UserTraceConfigBuilder;->setMaxLogSize(I)Lcom/oplus/log/config/UserTraceConfigBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/log/config/UserTraceConfigBuilder;->build()Ly3/a;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/config/DynConfigManager;->mDefaultConfigDto:Ly3/a;

    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->getPriority()I

    move-result p1

    iput p1, p0, Lcom/oplus/log/config/DynConfigManager;->priority:I

    return-void
.end method

.method public getCacheQueueSize()I
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getPersistData()Lcom/oplus/log/config/PersistData;

    move-result-object p0

    if-nez p0, :cond_9

    const/16 p0, 0x1f4

    return p0

    :cond_9
    invoke-virtual {p0}, Lcom/oplus/log/config/PersistData;->getQueueSize()I

    move-result p0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_12

    move p0, v0

    :cond_12
    return p0
.end method

.method public getConfigDto()Ly3/a;
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    const-class v1, Ly3/a;

    const-string v2, "dyn-config"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/log/util/SPUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/a;

    if-eqz v0, :cond_16

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    :cond_16
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getNxConfigDto()Ly3/a;

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    return-object p0
.end method

.method public getDefaultConfigDto()Ly3/a;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mDefaultConfigDto:Ly3/a;

    if-nez v0, :cond_22

    invoke-static {}, Lcom/oplus/log/HLog;->getLogConfig()Lcom/oplus/log/Settings;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/oplus/log/HLog;->getLogConfig()Lcom/oplus/log/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getConsoleLogLevel()I

    move-result v0

    invoke-static {}, Lcom/oplus/log/HLog;->getLogConfig()Lcom/oplus/log/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getFileLogLevel()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/log/config/DynConfigManager;->createDefaultConfig(II)V

    goto :goto_22

    :cond_1e
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v0}, Lcom/oplus/log/config/DynConfigManager;->createDefaultConfig(II)V

    :cond_22
    :goto_22
    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mDefaultConfigDto:Ly3/a;

    return-object p0
.end method

.method public getNxConfigDto()Ly3/a;
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    if-nez v0, :cond_16

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    const-class v1, Ly3/a;

    const-string v2, "nx-dyn-config"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/log/util/SPUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/a;

    if-eqz v0, :cond_16

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    :cond_16
    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    return-object p0
.end method

.method public getNxLogConfig()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->isPriority()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    const-class v1, Ly3/a;

    const-string v2, "nx-dyn-config"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/log/util/SPUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/a;

    if-eqz v0, :cond_1d

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    :cond_1d
    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ly3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->isPriority()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5c

    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-nez v0, :cond_4b

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    const-class v1, Ly3/a;

    const-string v2, "dyn-config"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/log/util/SPUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/a;

    if-eqz v0, :cond_4b

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    :cond_4b
    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ly3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPersistData()Lcom/oplus/log/config/PersistData;
    .registers 4

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    const-class v1, Lcom/oplus/log/config/PersistData;

    const-string v2, "nx-persis-config"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/log/util/SPUtil;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/log/config/PersistData;

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->persistData:Lcom/oplus/log/config/PersistData;

    return-object v0
.end method

.method public getSpanContext()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->iDynConfig:Lcom/oplus/log/config/IDynConfig;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Lcom/oplus/log/config/IDynConfig;->getTraceContext()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, ""

    return-object p0
.end method

.method public getZipMaxFile()J
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getDefaultConfigDto()Ly3/a;

    move-result-object v0

    iget v0, v0, Ly3/a;->j:I

    iget-object v1, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Ly3/a;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    iget v0, p0, Ly3/a;->j:I

    :cond_14
    const/4 p0, 0x1

    if-ge v0, p0, :cond_18

    move v0, p0

    :cond_18
    int-to-long v0, v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getiDynConfig()Lcom/oplus/log/config/IDynConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->iDynConfig:Lcom/oplus/log/config/IDynConfig;

    return-object p0
.end method

.method public isCheckConfig()V
    .registers 7

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->remainCheckTimes()J

    move-result-wide v0

    const-string v2, "isCheckConfig remainTimes : "

    const-string v3, " isCheckConfig : "

    invoke-static {v2, v0, v1, v3}, Landroidx/concurrent/futures/c;->a(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oplus/log/config/DynConfigManager;->isCheckConfig:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynConfigManager"

    invoke-static {v3, v2}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_21

    return-void

    :cond_21
    iget-boolean v0, p0, Lcom/oplus/log/config/DynConfigManager;->isCheckConfig:Z

    if-nez v0, :cond_31

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/log/config/DynConfigManager;->isCheckConfig:Z

    const-string p0, "isCheckConfig start to request config ."

    invoke-static {v3, p0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/oplus/log/HLog;->checkUploadForCdn(Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V

    :cond_31
    return-void
.end method

.method public isPrint(I)Z
    .registers 6

    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->isPriority()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_28

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getNxConfigDto()Ly3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ly3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    iget p0, p0, Ly3/a;->h:I

    if-lt p1, p0, :cond_5a

    return v2

    :cond_1d
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getDefaultConfigDto()Ly3/a;

    move-result-object p0

    iget p0, p0, Ly3/a;->h:I

    if-lt p1, p0, :cond_5a

    if-ge p1, v1, :cond_5a

    return v2

    :cond_28
    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->isPriority()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4f

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getConfigDto()Ly3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ly3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    iget p0, p0, Ly3/a;->h:I

    if-lt p1, p0, :cond_5a

    return v2

    :cond_44
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getDefaultConfigDto()Ly3/a;

    move-result-object p0

    iget p0, p0, Ly3/a;->h:I

    if-lt p1, p0, :cond_5a

    if-ge p1, v1, :cond_5a

    return v2

    :cond_4f
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getDefaultConfigDto()Ly3/a;

    move-result-object p0

    iget p0, p0, Ly3/a;->h:I

    if-lt p1, p0, :cond_5a

    if-ge p1, v1, :cond_5a

    return v2

    :cond_5a
    const/4 p0, 0x0

    return p0
.end method

.method public isShow(I)Z
    .registers 6

    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->isPriority()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getNxConfigDto()Ly3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ly3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    iget v0, v0, Ly3/a;->i:I

    if-lez v0, :cond_1f

    if-lt p1, v0, :cond_5c

    return v2

    :cond_1f
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getDefaultConfigDto()Ly3/a;

    move-result-object p0

    iget p0, p0, Ly3/a;->i:I

    if-lt p1, p0, :cond_5c

    if-ge p1, v1, :cond_5c

    return v2

    :cond_2a
    invoke-direct {p0}, Lcom/oplus/log/config/DynConfigManager;->isPriority()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_51

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getConfigDto()Ly3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ly3/a;->a()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object p0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    iget p0, p0, Ly3/a;->i:I

    if-lt p1, p0, :cond_5c

    return v2

    :cond_46
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getDefaultConfigDto()Ly3/a;

    move-result-object p0

    iget p0, p0, Ly3/a;->i:I

    if-lt p1, p0, :cond_5c

    if-ge p1, v1, :cond_5c

    return v2

    :cond_51
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getDefaultConfigDto()Ly3/a;

    move-result-object p0

    iget p0, p0, Ly3/a;->i:I

    if-lt p1, p0, :cond_5c

    if-ge p1, v1, :cond_5c

    return v2

    :cond_5c
    const/4 p0, 0x0

    return p0
.end method

.method public isUpload()Z
    .registers 9

    iget-boolean v0, p0, Lcom/oplus/log/config/DynConfigManager;->isAutoUpload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getConfigDto()Ly3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    :cond_10
    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    if-nez v0, :cond_15

    return v1

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    iget-wide v4, v0, Ly3/a;->f:J

    const-wide/32 v6, 0xea60

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_26

    return v1

    :cond_26
    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    iget-wide v2, v2, Ly3/a;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/oplus/log/util/SPUtil;->hasBeenUpload(J)Z

    move-result v0

    if-eqz v0, :cond_35

    return v1

    :cond_35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/log/config/DynConfigManager;->isAutoUpload:Z

    return v0
.end method

.method public remainCheckTimes()J
    .registers 6

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v0, "maxTimePerDay"

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/oplus/log/util/SPUtil;->getInt(Ljava/lang/String;I)I

    move-result p0

    int-to-long v0, p0

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v2, "lastCheckTime"

    invoke-virtual {p0, v2}, Lcom/oplus/log/util/SPUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/oplus/log/config/DynConfigManager;->isThisDay(J)Z

    move-result p0

    const-string v2, "hasCheckTimes"

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_2a

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/log/util/SPUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_31

    :cond_2a
    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;J)V

    :goto_31
    sub-long/2addr v0, v3

    return-wide v0
.end method

.method public setAutoUpload(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/config/DynConfigManager;->isAutoUpload:Z

    return-void
.end method

.method public setCheckConfig(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/config/DynConfigManager;->isCheckConfig:Z

    return-void
.end method

.method public setConfigDto(Ly3/a;)V
    .registers 7

    if-eqz p1, :cond_72

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/log/config/DynConfigManager;->setCheckConfig(Z)V

    iget-wide v1, p1, Ly3/a;->e:J

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    const-string v2, "effort"

    if-gtz v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save nxlog ConfigDto:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v1

    const-string v3, "nx-dyn-config"

    invoke-virtual {v1, v3, p1}, Lcom/oplus/log/util/SPUtil;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;I)V

    iput v0, p0, Lcom/oplus/log/config/DynConfigManager;->priority:I

    iput-object p1, p0, Lcom/oplus/log/config/DynConfigManager;->mNxConfigDto:Ly3/a;

    iget-object p1, p0, Lcom/oplus/log/config/DynConfigManager;->iDynConfig:Lcom/oplus/log/config/IDynConfig;

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getNxLogConfig()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/log/config/IDynConfig;->setNxLogConfig(Ljava/lang/String;)V

    goto :goto_72

    :cond_44
    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    const-string v1, "dyn-config"

    invoke-virtual {v0, v1, p1}, Lcom/oplus/log/util/SPUtil;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;I)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    iget v2, p1, Ly3/a;->k:I

    const-string v3, "maxTimePerDay"

    invoke-virtual {v0, v3, v2}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;I)V

    iput v1, p0, Lcom/oplus/log/config/DynConfigManager;->priority:I

    iput-object p1, p0, Lcom/oplus/log/config/DynConfigManager;->mConfigDto:Ly3/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oplus/log/config/DynConfigManager;->isAutoUpload:Z

    iget-object p1, p0, Lcom/oplus/log/config/DynConfigManager;->iDynConfig:Lcom/oplus/log/config/IDynConfig;

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getNxLogConfig()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/log/config/IDynConfig;->setNxLogConfig(Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public setiDynConfig(Lcom/oplus/log/config/IDynConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/config/DynConfigManager;->iDynConfig:Lcom/oplus/log/config/IDynConfig;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getNxLogConfig()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/oplus/log/config/IDynConfig;->setNxLogConfig(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
