.class public Lcom/oplus/log/Settings$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mSettings:Lcom/oplus/log/Settings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/log/Settings;

    invoke-direct {v0}, Lcom/oplus/log/Settings;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setBusiness(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1, p2}, Lcom/oplus/log/Settings;->setMdpName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1, p3}, Lcom/oplus/log/Settings;->setMdpSecret(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1, p4}, Lcom/oplus/log/Settings;->setImeiProvider(Lcom/oplus/log/Settings$IImeiProvider;)V

    iget-object p0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p0, p5}, Lcom/oplus/log/Settings;->setOpenIdProvider(Lcom/oplus/log/Settings$IOpenIdProvider;)V

    return-void
.end method

.method private checkParam(Lcom/oplus/log/Settings;Landroid/content/Context;)Lcom/oplus/log/Settings;
    .registers 7

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/log/Settings;->setTracePkg(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getCacheDir()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "HLog_cache"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/log/Settings;->setCacheDir(Ljava/lang/String;)V

    :cond_3d
    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getNxHttpClient()Lcom/oplus/log/nx/http/INxHttpClient;

    move-result-object p0

    if-nez p0, :cond_4b

    new-instance p0, Lcom/oplus/log/nx/http/HttpsClient;

    invoke-direct {p0}, Lcom/oplus/log/nx/http/HttpsClient;-><init>()V

    invoke-virtual {p1, p0}, Lcom/oplus/log/Settings;->setNxHttpClient(Lcom/oplus/log/nx/http/INxHttpClient;)V

    :cond_4b
    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_79

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "HLog_file"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oplus/log/Settings;->setPath(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/oplus/log/Settings;->setUploadPath(Ljava/lang/String;)V

    :cond_79
    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getTimerCheckParam()Lcom/oplus/log/core/bean/TimerCheckParam;

    move-result-object p0

    if-nez p0, :cond_87

    new-instance p0, Lcom/oplus/log/core/bean/TimerCheckParam;

    invoke-direct {p0}, Lcom/oplus/log/core/bean/TimerCheckParam;-><init>()V

    invoke-virtual {p1, p0}, Lcom/oplus/log/Settings;->setTimerCheckParam(Lcom/oplus/log/core/bean/TimerCheckParam;)V

    :cond_87
    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getMaxQueue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_96

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Lcom/oplus/log/Settings;->setMaxQueue(J)V

    :cond_96
    return-object p1
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/oplus/log/Settings;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-direct {p0, v0, p1}, Lcom/oplus/log/Settings$Builder;->checkParam(Lcom/oplus/log/Settings;Landroid/content/Context;)Lcom/oplus/log/Settings;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    return-object p1
.end method

.method public consoleLogLevel(I)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setConsoleLogLevel(I)V

    return-object p0
.end method

.method public enableNet(Z)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setEnableNet(Z)V

    return-object p0
.end method

.method public enableOBus(Z)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setEnableOBus(Z)V

    return-object p0
.end method

.method public fileExpireDays(I)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setFileExpireDays(I)V

    return-object p0
.end method

.method public fileLogLevel(I)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setFileLogLevel(I)V

    return-object p0
.end method

.method public logFilePath(Ljava/lang/String;)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setUploadPath(Ljava/lang/String;)V

    return-object p0
.end method

.method public logNamePrefix(Ljava/lang/String;)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setNamePrefix(Ljava/lang/String;)V

    return-object p0
.end method

.method public mmapCacheDir(Ljava/lang/String;)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setCacheDir(Ljava/lang/String;)V

    return-object p0
.end method

.method public setEnv(I)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setEnv(I)V

    return-object p0
.end method

.method public setFlushCallback(Lcom/oplus/log/Settings$IFlushCallback;)Lcom/oplus/log/Settings$Builder;
    .registers 4

    const-string v0, "HLog"

    const-string v1, "set flushCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setFlushCallback(Lcom/oplus/log/Settings$IFlushCallback;)V

    return-object p0
.end method

.method public setHttpDelegate(Lcom/oplus/log/uploader/IHttpDelegate;)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setHttpDelegate(Lcom/oplus/log/uploader/IHttpDelegate;)V

    return-object p0
.end method

.method public setMaxQueue(J)Lcom/oplus/log/Settings$Builder;
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/log/Settings;->setMaxQueue(J)V

    return-object p0
.end method

.method public setNxClient(Lcom/oplus/log/nx/http/INxHttpClient;)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setNxHttpClient(Lcom/oplus/log/nx/http/INxHttpClient;)V

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/oplus/log/Settings$Builder;
    .registers 4

    const-string v0, ":"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public setTimerCheckParam(Lcom/oplus/log/core/bean/TimerCheckParam;)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setTimerCheckParam(Lcom/oplus/log/core/bean/TimerCheckParam;)V

    return-object p0
.end method

.method public setTracePkg(Ljava/lang/String;)Lcom/oplus/log/Settings$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Settings$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setTracePkg(Ljava/lang/String;)V

    return-object p0
.end method
