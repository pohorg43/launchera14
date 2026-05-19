.class public Lcom/oplus/log/Logger$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mSettings:Lcom/oplus/log/Settings;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/log/Settings;

    invoke-direct {v0}, Lcom/oplus/log/Settings;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    return-void
.end method

.method private createPathWithProcessName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object p0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-static {p1}, Lcom/oplus/log/util/ProcessUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_d
    sget-object p0, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    :goto_f
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    return-object p2

    :cond_16
    const-string p1, "/"

    invoke-static {p2, p1, p0, p1}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public consoleLogLevel(I)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setConsoleLogLevel(I)V

    return-object p0
.end method

.method public create(Landroid/content/Context;)Lcom/oplus/log/Logger;
    .registers 5

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    if-eqz p1, :cond_4b

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_4b

    :cond_16
    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getCacheDir()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_2f

    :cond_25
    iget-object v2, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-direct {p0, p1, v0}, Lcom/oplus/log/Logger$Builder;->createPathWithProcessName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oplus/log/Settings;->setCacheDir(Ljava/lang/String;)V

    goto :goto_40

    :cond_2f
    :goto_2f
    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/oplus/log/Logger$Builder;->createPathWithProcessName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/log/Settings;->setCacheDir(Ljava/lang/String;)V

    :goto_40
    new-instance v0, Lcom/oplus/log/Logger;

    invoke-direct {v0, v1}, Lcom/oplus/log/Logger;-><init>(Lcom/oplus/log/Logger$1;)V

    iget-object p0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1, p0}, Lcom/oplus/log/Logger;->init(Landroid/content/Context;Lcom/oplus/log/Settings;)V

    return-object v0

    :cond_4b
    :goto_4b
    return-object v1
.end method

.method public fileExpireDays(I)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setFileExpireDays(I)V

    return-object p0
.end method

.method public fileLogLevel(I)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setFileLogLevel(I)V

    return-object p0
.end method

.method public logFilePath(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setUploadPath(Ljava/lang/String;)V

    return-object p0
.end method

.method public logNamePrefix(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setNamePrefix(Ljava/lang/String;)V

    return-object p0
.end method

.method public mmapCacheDir(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setCacheDir(Ljava/lang/String;)V

    return-object p0
.end method

.method public setImeiProvider(Lcom/oplus/log/Settings$IImeiProvider;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setImeiProvider(Lcom/oplus/log/Settings$IImeiProvider;)V

    return-object p0
.end method

.method public setNxClient(Lcom/oplus/log/nx/http/INxHttpClient;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setNxHttpClient(Lcom/oplus/log/nx/http/INxHttpClient;)V

    return-object p0
.end method

.method public setOpenIdProvider(Lcom/oplus/log/Settings$IOpenIdProvider;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setOpenIdProvider(Lcom/oplus/log/Settings$IOpenIdProvider;)V

    return-object p0
.end method

.method public setProcessName(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "."

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_15
    sput-object p1, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public setTimerCheckParam(Lcom/oplus/log/core/bean/TimerCheckParam;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setTimerCheckParam(Lcom/oplus/log/core/bean/TimerCheckParam;)V

    return-object p0
.end method

.method public setTracePkg(Ljava/lang/String;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setTracePkg(Ljava/lang/String;)V

    return-object p0
.end method

.method public withHttpDelegate(Lcom/oplus/log/uploader/IHttpDelegate;)Lcom/oplus/log/Logger$Builder;
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/Logger$Builder;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p1}, Lcom/oplus/log/Settings;->setHttpDelegate(Lcom/oplus/log/uploader/IHttpDelegate;)V

    return-object p0
.end method
