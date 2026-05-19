.class public Lcom/oplus/log/Settings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/Settings$IFlushCallback;,
        Lcom/oplus/log/Settings$IImeiProvider;,
        Lcom/oplus/log/Settings$IOpenIdProvider;,
        Lcom/oplus/log/Settings$Builder;
    }
.end annotation


# instance fields
.field private business:Ljava/lang/String;

.field private cacheDir:Ljava/lang/String;

.field private consoleLogLevel:I

.field private enableNet:Z

.field private enableOBus:Z

.field private env:I

.field private exceptionInfo:Lcom/oplus/log/olc/ExceptionInfo;

.field private fileExpireDays:I

.field private fileLogLevel:I

.field private flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

.field private iNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

.field private iSensitiveFilter:Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;

.field private imeiProvider:Lcom/oplus/log/Settings$IImeiProvider;

.field private mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

.field private maxQueue:J

.field private mdpName:Ljava/lang/String;

.field private mdpSecret:Ljava/lang/String;

.field private namePrefix:Ljava/lang/String;

.field private nxLogKey:Ljava/lang/String;

.field private openIdProvider:Lcom/oplus/log/Settings$IOpenIdProvider;

.field private path:Ljava/lang/String;

.field private subType:Ljava/lang/String;

.field private timerCheckParam:Lcom/oplus/log/core/bean/TimerCheckParam;

.field private tracePkg:Ljava/lang/String;

.field private uploadPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/log/Settings;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/log/Settings;->cacheDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/log/Settings;->uploadPath:Ljava/lang/String;

    const-string v1, "HLog_File_"

    iput-object v1, p0, Lcom/oplus/log/Settings;->namePrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/log/Settings;->tracePkg:Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, p0, Lcom/oplus/log/Settings;->fileLogLevel:I

    iput v1, p0, Lcom/oplus/log/Settings;->consoleLogLevel:I

    const/4 v1, 0x7

    iput v1, p0, Lcom/oplus/log/Settings;->fileExpireDays:I

    iput-object v0, p0, Lcom/oplus/log/Settings;->business:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/log/Settings;->mdpName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/log/Settings;->mdpSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/log/Settings;->subType:Ljava/lang/String;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/oplus/log/Settings;->maxQueue:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/Settings;->env:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/Settings;->flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/log/Settings;->enableOBus:Z

    iput-boolean v0, p0, Lcom/oplus/log/Settings;->enableNet:Z

    return-void
.end method


# virtual methods
.method public getBusiness()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->business:Ljava/lang/String;

    return-object p0
.end method

.method public getCacheDir()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->cacheDir:Ljava/lang/String;

    return-object p0
.end method

.method public getConsoleLogLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/Settings;->consoleLogLevel:I

    return p0
.end method

.method public getEnv()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/Settings;->env:I

    return p0
.end method

.method public getExceptionInfo()Lcom/oplus/log/olc/ExceptionInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->exceptionInfo:Lcom/oplus/log/olc/ExceptionInfo;

    return-object p0
.end method

.method public getFileExpireDays()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/Settings;->fileExpireDays:I

    return p0
.end method

.method public getFileLogLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/Settings;->fileLogLevel:I

    return p0
.end method

.method public getFlushCallback()Lcom/oplus/log/Settings$IFlushCallback;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

    return-object p0
.end method

.method public getHttpDelegate()Lcom/oplus/log/uploader/IHttpDelegate;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    return-object p0
.end method

.method public getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->imeiProvider:Lcom/oplus/log/Settings$IImeiProvider;

    return-object p0
.end method

.method public getMaxQueue()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/log/Settings;->maxQueue:J

    return-wide v0
.end method

.method public getMdpName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->mdpName:Ljava/lang/String;

    return-object p0
.end method

.method public getMdpSecret()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->mdpSecret:Ljava/lang/String;

    return-object p0
.end method

.method public getNamePrefix()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->namePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getNxHttpClient()Lcom/oplus/log/nx/http/INxHttpClient;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->iNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    return-object p0
.end method

.method public getNxLogKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->nxLogKey:Ljava/lang/String;

    return-object p0
.end method

.method public getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->openIdProvider:Lcom/oplus/log/Settings$IOpenIdProvider;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->subType:Ljava/lang/String;

    return-object p0
.end method

.method public getTimerCheckParam()Lcom/oplus/log/core/bean/TimerCheckParam;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->timerCheckParam:Lcom/oplus/log/core/bean/TimerCheckParam;

    return-object p0
.end method

.method public getTracePkg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->tracePkg:Ljava/lang/String;

    return-object p0
.end method

.method public getUploadPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->uploadPath:Ljava/lang/String;

    return-object p0
.end method

.method public getiNxHttpClient()Lcom/oplus/log/nx/http/INxHttpClient;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->iNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    return-object p0
.end method

.method public getiSensitiveFilter()Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/Settings;->iSensitiveFilter:Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;

    return-object p0
.end method

.method public isEnableNet()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/Settings;->enableNet:Z

    return p0
.end method

.method public isEnableOBus()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/Settings;->enableOBus:Z

    return p0
.end method

.method public setBusiness(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->business:Ljava/lang/String;

    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->cacheDir:Ljava/lang/String;

    return-void
.end method

.method public setConsoleLogLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/Settings;->consoleLogLevel:I

    return-void
.end method

.method public setEnableNet(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/Settings;->enableNet:Z

    return-void
.end method

.method public setEnableOBus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/Settings;->enableOBus:Z

    return-void
.end method

.method public setEnv(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/Settings;->env:I

    return-void
.end method

.method public setExceptionInfo(Lcom/oplus/log/olc/ExceptionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->exceptionInfo:Lcom/oplus/log/olc/ExceptionInfo;

    return-void
.end method

.method public setFileExpireDays(I)V
    .registers 2

    if-gez p1, :cond_3

    return-void

    :cond_3
    iput p1, p0, Lcom/oplus/log/Settings;->fileExpireDays:I

    return-void
.end method

.method public setFileLogLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/Settings;->fileLogLevel:I

    return-void
.end method

.method public setFlushCallback(Lcom/oplus/log/Settings$IFlushCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

    return-void
.end method

.method public setHttpDelegate(Lcom/oplus/log/uploader/IHttpDelegate;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    return-void
.end method

.method public setImeiProvider(Lcom/oplus/log/Settings$IImeiProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->imeiProvider:Lcom/oplus/log/Settings$IImeiProvider;

    return-void
.end method

.method public setMaxQueue(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    return-void

    :cond_7
    iput-wide p1, p0, Lcom/oplus/log/Settings;->maxQueue:J

    return-void
.end method

.method public setMdpName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->mdpName:Ljava/lang/String;

    return-void
.end method

.method public setMdpSecret(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->mdpSecret:Ljava/lang/String;

    return-void
.end method

.method public setNamePrefix(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->namePrefix:Ljava/lang/String;

    return-void
.end method

.method public setNxHttpClient(Lcom/oplus/log/nx/http/INxHttpClient;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->iNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    return-void
.end method

.method public setNxLogKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->nxLogKey:Ljava/lang/String;

    return-void
.end method

.method public setOpenIdProvider(Lcom/oplus/log/Settings$IOpenIdProvider;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->openIdProvider:Lcom/oplus/log/Settings$IOpenIdProvider;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->path:Ljava/lang/String;

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->subType:Ljava/lang/String;

    return-void
.end method

.method public setTimerCheckParam(Lcom/oplus/log/core/bean/TimerCheckParam;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->timerCheckParam:Lcom/oplus/log/core/bean/TimerCheckParam;

    return-void
.end method

.method public setTracePkg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->tracePkg:Ljava/lang/String;

    return-void
.end method

.method public setUploadPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->uploadPath:Ljava/lang/String;

    return-void
.end method

.method public setiNxHttpClient(Lcom/oplus/log/nx/http/INxHttpClient;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->iNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    return-void
.end method

.method public setiSensitiveFilter(Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/Settings;->iSensitiveFilter:Lcom/oplus/log/nx/sens/pattern/ISensitiveFilter;

    return-void
.end method
