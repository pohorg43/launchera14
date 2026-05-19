.class public Lcom/oplus/log/uploader/UploadManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;,
        Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;,
        Lcom/oplus/log/uploader/UploadManager$ReportBody;,
        Lcom/oplus/log/uploader/UploadManager$UploadBody;,
        Lcom/oplus/log/uploader/UploadManager$UploadHandler;,
        Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;,
        Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;,
        Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;,
        Lcom/oplus/log/uploader/UploadManager$UploaderListener;
    }
.end annotation


# static fields
.field private static final CDN_CHECK_CONFIG:Ljava/lang/String; = "/usertrace/log/cdn/config/"

.field private static final REPORT_TAG:Ljava/lang/String; = "HLog_report_log_info"

.field private static final TAG:Ljava/lang/String; = "NearX-HLog_UploadManager"

.field private static final UPLOAD_TAG:Ljava/lang/String; = "HLog_upload_log_info"


# instance fields
.field private mAppender:Lcom/oplus/log/appender/ILogAppender;

.field private mCount:I

.field private mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field private mHandler:Lcom/oplus/log/uploader/UploadManager$UploadHandler;

.field private mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

.field private mLog:Lcom/oplus/log/ISimpleLog;

.field private mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

.field private mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

.field private mSettings:Lcom/oplus/log/Settings;

.field private mSimpleLog:Lcom/oplus/log/log/SimpleLog;

.field public mUploadThread:Landroid/os/HandlerThread;

.field private mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

.field private zipLogPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/log/Settings;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    new-instance v0, Lcom/oplus/log/config/DynConfigManager;

    invoke-direct {v0}, Lcom/oplus/log/config/DynConfigManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploadThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_26

    new-instance p1, Lcom/oplus/log/Settings;

    invoke-direct {p1}, Lcom/oplus/log/Settings;-><init>()V

    :cond_26
    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getUploadPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, ".zip"

    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getHttpDelegate()Lcom/oplus/log/uploader/IHttpDelegate;

    move-result-object p1

    if-eqz p1, :cond_50

    iget-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getHttpDelegate()Lcom/oplus/log/uploader/IHttpDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    :cond_50
    invoke-direct {p0}, Lcom/oplus/log/uploader/UploadManager;->initThread()V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/Settings;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/log/SimpleLog;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    new-instance v0, Lcom/oplus/log/config/DynConfigManager;

    invoke-direct {v0}, Lcom/oplus/log/config/DynConfigManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploadThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_29

    const-string p0, "NearX-HLog_UploadManager"

    const-string p1, "init UploadManager fail, logConfig is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getUploadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, ".zip"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getNxHttpClient()Lcom/oplus/log/nx/http/INxHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    iput-object p2, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iput-object p3, p0, Lcom/oplus/log/uploader/UploadManager;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getHttpDelegate()Lcom/oplus/log/uploader/IHttpDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    iput-object p3, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    invoke-direct {p0}, Lcom/oplus/log/uploader/UploadManager;->initThread()V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/Settings;Lcom/oplus/log/log/SimpleLog;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    new-instance v0, Lcom/oplus/log/config/DynConfigManager;

    invoke-direct {v0}, Lcom/oplus/log/config/DynConfigManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploadThread:Landroid/os/HandlerThread;

    if-nez p1, :cond_29

    const-string p0, "NearX-HLog_UploadManager"

    const-string p1, "init UploadManager fail, logConfig is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getUploadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, ".zip"

    invoke-static {v0, v1, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getNxHttpClient()Lcom/oplus/log/nx/http/INxHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    iput-object p2, p0, Lcom/oplus/log/uploader/UploadManager;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {p0}, Lcom/oplus/log/uploader/UploadManager;->initThread()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/io/File;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->doUpload(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/io/File;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->doUploadCheckerForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/log/uploader/UploadManager;)Lcom/oplus/log/Settings;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/log/uploader/UploadManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/log/uploader/UploadManager;)Lcom/oplus/log/config/DynConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/io/File;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->doReportUpload(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/io/File;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/uploader/UploadManager;->uploadFile(Lcom/oplus/log/uploader/UploadManager$UploadBody;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFile(Lcom/oplus/log/uploader/UploadManager$ReportBody;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->doUploadChecker(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V

    return-void
.end method

.method private checkCdnConfigDto(Ljava/util/List;)Ly3/a;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly3/a;",
            ">;)",
            "Ly3/a;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_16c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_16c

    :cond_b
    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_20
    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v1

    :goto_26
    const-wide/16 v2, -0x1

    :try_start_28
    sget-object v4, Lcom/oplus/log/UrlProvider;->AES_KEY_ARRAYS:[I

    iget-object v5, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v5}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/oplus/log/Settings$IImeiProvider;->getImei()Ljava/lang/String;

    move-result-object v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_155

    const-string v6, ""

    if-nez v5, :cond_3a

    move-object v5, v6

    goto :goto_44

    :cond_3a
    :try_start_3a
    iget-object v5, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v5}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/oplus/log/Settings$IImeiProvider;->getImei()Ljava/lang/String;

    move-result-object v5

    :goto_44
    invoke-static {v4, v5}, Lcom/oplus/log/util/AESUtils;->encryptByKey([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/oplus/log/UrlProvider;->AES_KEY_ARRAYS:[I

    iget-object v7, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v7}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/oplus/log/Settings$IOpenIdProvider;->getDuid()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_58

    move-object v7, v6

    goto :goto_62

    :cond_58
    iget-object v7, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v7}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/oplus/log/Settings$IOpenIdProvider;->getDuid()Ljava/lang/String;

    move-result-object v7

    :goto_62
    invoke-static {v5, v7}, Lcom/oplus/log/util/AESUtils;->encryptByKey([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/oplus/log/UrlProvider;->AES_KEY_ARRAYS:[I

    iget-object v8, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v8}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/oplus/log/Settings$IOpenIdProvider;->getGuid()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_76

    move-object v8, v6

    goto :goto_80

    :cond_76
    iget-object v8, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v8}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/oplus/log/Settings$IOpenIdProvider;->getGuid()Ljava/lang/String;

    move-result-object v8

    :goto_80
    invoke-static {v7, v8}, Lcom/oplus/log/util/AESUtils;->encryptByKey([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/oplus/log/UrlProvider;->AES_KEY_ARRAYS:[I

    iget-object v9, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v9}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v9

    invoke-interface {v9}, Lcom/oplus/log/Settings$IOpenIdProvider;->getOuid()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_93

    goto :goto_9d

    :cond_93
    iget-object v6, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v6}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v6

    invoke-interface {v6}, Lcom/oplus/log/Settings$IOpenIdProvider;->getOuid()Ljava/lang/String;

    move-result-object v6

    :goto_9d
    invoke-static {v8, v6}, Lcom/oplus/log/util/AESUtils;->encryptByKey([ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v8, v0

    :cond_a6
    :goto_a6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_aa} :catch_155

    const-string v10, "NearX-HLog_UploadManager"

    if-eqz v9, :cond_140

    :try_start_ae
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ly3/a;

    iget-object v11, v9, Ly3/a;->b:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_eb

    iget-object v11, v9, Ly3/a;->b:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_eb

    iget-object v11, v9, Ly3/a;->b:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_eb

    iget-object v11, v9, Ly3/a;->b:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_eb

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "obj.getEncryClientId() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Ly3/a;->b:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    :cond_eb
    iget v11, v9, Ly3/a;->g:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_101

    iget-object v11, v9, Ly3/a;->d:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_101

    iget-object v11, v9, Ly3/a;->d:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_101

    goto :goto_a6

    :cond_101
    iget v11, v9, Ly3/a;->g:I

    if-eq v11, v12, :cond_116

    iget-object v11, v9, Ly3/a;->d:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_116

    iget-object v11, v9, Ly3/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_116

    goto :goto_a6

    :cond_116
    iget-wide v11, v9, Ly3/a;->a:J

    invoke-direct {p0, v11, v12}, Lcom/oplus/log/uploader/UploadManager;->checkHistoryTraceId(J)Z

    move-result v11

    if-eqz v11, :cond_136

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v12, v9, Ly3/a;->a:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " has been uploaded"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a6

    :cond_136
    iget-wide v10, v9, Ly3/a;->a:J

    cmp-long v12, v10, v2

    if-lez v12, :cond_a6

    move-object v8, v9

    move-wide v2, v10

    goto/16 :goto_a6

    :cond_140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "lastest ID:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_154} :catch_155

    return-object v8

    :catch_155
    move-exception p0

    const-string p1, "getLastestConfig error:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HLog"

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16c
    :goto_16c
    return-object v0
.end method

.method private checkHistoryTraceId(J)Z
    .registers 7

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v0, "traceIds"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/oplus/log/util/SPUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The uploaded traceIds : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NearX-HLog_UploadManager"

    invoke-static {v2, v0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    array-length v0, p0

    if-nez v0, :cond_36

    goto :goto_4b

    :cond_36
    move v0, v1

    :goto_37
    array-length v2, p0

    if-ge v0, v2, :cond_4b

    aget-object v2, p0, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 p0, 0x1

    return p0

    :cond_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :cond_4b
    :goto_4b
    return v1
.end method

.method private clearOldSPTraceIds()V
    .registers 7

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v0, "clearTraceDate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/log/util/SPUtil;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "yyyyMM"

    if-nez p0, :cond_23

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1}, Lcom/oplus/log/util/DateUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;I)V

    :cond_23
    if-eqz p0, :cond_58

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1}, Lcom/oplus/log/util/DateUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-int/lit8 p0, p0, 0x2

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-lez p0, :cond_58

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1}, Lcom/oplus/log/util/DateUtil;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;J)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v0, "traceIds"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method private doReportUpload(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/io/File;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    if-eqz v3, :cond_e

    invoke-direct/range {p0 .. p3}, Lcom/oplus/log/uploader/UploadManager;->doReportUploadOld(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/io/File;)V

    return-void

    :cond_e
    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    if-nez v3, :cond_15

    const-string v3, "report upload fail : HttpDelegate is null"

    goto :goto_17

    :cond_15
    const-string v3, ""

    :goto_17
    if-nez v2, :cond_1b

    const-string v3, "report upload fail : reportBody is null"

    :cond_1b
    if-nez v0, :cond_1f

    const-string v3, "report upload fail : file is null"

    :cond_1f
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "HLog_report_log_info"

    if-nez v4, :cond_34

    iget-object v0, v1, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    if-eqz v0, :cond_33

    invoke-static {v5, v3}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    invoke-interface {v0, v3, v2}, Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;->onReporterFailed(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V

    :cond_33
    return-void

    :cond_34
    :try_start_34
    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4f

    :cond_49
    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v3

    :goto_4f
    move-object v14, v3

    iget-object v6, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->business:Ljava/lang/String;

    iget-object v7, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->specificId:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    iget-object v11, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->subType:Ljava/lang/String;

    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v12

    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v13

    iget-object v15, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPName:Ljava/lang/String;

    iget-object v3, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->reportReason:Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_6c} :catch_10f

    move-object/from16 v22, v5

    :try_start_6e
    iget-wide v4, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->endTime:J

    iget-object v9, v1, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    iget-object v0, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPValue:Ljava/lang/String;
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_74} :catch_10d

    :try_start_74
    iget-object v2, v1, Lcom/oplus/log/uploader/UploadManager;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    move-object/from16 v19, v9

    move/from16 v9, p2

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-static/range {v6 .. v21}, Lcom/oplus/log/UrlProvider;->makeReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/oplus/log/ISimpleLog;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doReportUpload Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/oplus/log/nx/http/NxRequest;

    invoke-direct {v2}, Lcom/oplus/log/nx/http/NxRequest;-><init>()V

    invoke-virtual {v2, v0}, Lcom/oplus/log/nx/http/NxRequest;->setUrl(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/oplus/log/nx/http/NxRequest;->setFile(Ljava/io/File;)V

    iget-object v0, v1, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    invoke-interface {v0, v2}, Lcom/oplus/log/nx/http/INxHttpClient;->sendRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object v0

    if-eqz v0, :cond_d6

    invoke-virtual {v0}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_d6

    new-instance v2, Lcom/oplus/log/uploader/ResponseWrapper;

    invoke-virtual {v0}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result v3

    invoke-virtual {v0}, Lcom/oplus/log/nx/http/NxResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/oplus/log/uploader/ResponseWrapper;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/oplus/log/uploader/UploadManager;->reportUploadSuccess(Lcom/oplus/log/uploader/ResponseWrapper;)V

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;

    move-result-object v0
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_cb} :catch_109

    move-object/from16 v2, p1

    :try_start_cd
    iget-object v3, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->business:Ljava/lang/String;

    iget-object v4, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->specificId:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/oplus/log/nx/obus/StatisticsHelper;->pushLogFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_126

    :cond_d6
    move-object/from16 v2, p1

    const-string v3, "report upload error:"

    if-nez v0, :cond_df

    const-string v0, "report upload error:response is null"

    goto :goto_103

    :cond_df
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "response code is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", msg is "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/log/nx/http/NxResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_103
    const/16 v3, -0x6e

    invoke-direct {v1, v2, v3, v0}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_108} :catch_10d

    goto :goto_126

    :catch_109
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_112

    :catch_10d
    move-exception v0

    goto :goto_112

    :catch_10f
    move-exception v0

    move-object/from16 v22, v5

    :goto_112
    const/16 v3, -0x6f

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    const-string v1, "report upload network exception:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_126
    return-void
.end method

.method private doReportUploadOld(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/io/File;)V
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    if-nez v3, :cond_d

    const-string v3, "report upload fail : HttpDelegate is null"

    goto :goto_f

    :cond_d
    const-string v3, ""

    :goto_f
    if-nez v2, :cond_13

    const-string v3, "report upload fail : reportBody is null"

    :cond_13
    if-nez v0, :cond_17

    const-string v3, "report upload fail : file is null"

    :cond_17
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "HLog_report_log_info"

    if-nez v4, :cond_2c

    iget-object v0, v1, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    invoke-interface {v0, v5, v3}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    if-eqz v0, :cond_2b

    invoke-interface {v0, v3, v2}, Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;->onReporterFailed(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V

    :cond_2b
    return-void

    :cond_2c
    :try_start_2c
    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_47

    :cond_41
    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v3

    :goto_47
    move-object v14, v3

    iget-object v6, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->business:Ljava/lang/String;

    iget-object v7, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->specificId:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, ""

    iget-object v11, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->subType:Ljava/lang/String;

    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v12

    iget-object v3, v1, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v13

    iget-object v15, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPName:Ljava/lang/String;

    iget-object v3, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->reportReason:Ljava/lang/String;
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_64} :catch_11b
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_64} :catch_f5

    move-object/from16 v22, v5

    :try_start_66
    iget-wide v4, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->endTime:J

    iget-object v9, v1, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    iget-object v0, v2, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPValue:Ljava/lang/String;
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6c} :catch_f2
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6c} :catch_ec

    :try_start_6c
    iget-object v2, v1, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    move-object/from16 v19, v9

    move/from16 v9, p2

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    invoke-static/range {v6 .. v21}, Lcom/oplus/log/UrlProvider;->makeReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/oplus/log/ISimpleLog;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string v3, "NearX-HLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doReportUpload Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/oplus/log/ISimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    move-object/from16 v3, p3

    invoke-interface {v2, v0, v3}, Lcom/oplus/log/uploader/IHttpDelegate;->uploadFile(Ljava/lang/String;Ljava/io/File;)Lcom/oplus/log/uploader/ResponseWrapper;

    move-result-object v0

    if-eqz v0, :cond_ad

    invoke-virtual {v0}, Lcom/oplus/log/uploader/ResponseWrapper;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_ad

    invoke-direct {v1, v0}, Lcom/oplus/log/uploader/UploadManager;->reportUploadSuccess(Lcom/oplus/log/uploader/ResponseWrapper;)V

    goto/16 :goto_13d

    :cond_ad
    const-string v2, "report upload error:"

    if-nez v0, :cond_b4

    const-string v0, "report upload error:response is null"

    goto :goto_d8

    :cond_b4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "response code is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/log/uploader/ResponseWrapper;->getStatusCode()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/log/uploader/ResponseWrapper;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_d8} :catch_e8
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_d8} :catch_e4

    :goto_d8
    const/16 v2, -0x6e

    move-object/from16 v3, p1

    :try_start_dc
    invoke-direct {v1, v3, v2, v0}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e2
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_df} :catch_e0

    goto :goto_13d

    :catch_e0
    move-exception v0

    goto :goto_f9

    :catch_e2
    move-exception v0

    goto :goto_ef

    :catch_e4
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_f9

    :catch_e8
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_ef

    :catch_ec
    move-exception v0

    move-object v3, v2

    goto :goto_f9

    :goto_ef
    move-object/from16 v2, v22

    goto :goto_11e

    :catch_f2
    move-exception v0

    move-object v3, v2

    goto :goto_ef

    :catch_f5
    move-exception v0

    move-object v3, v2

    move-object/from16 v22, v5

    :goto_f9
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, -0x6f

    invoke-direct {v1, v3, v4, v2}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    iget-object v1, v1, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string v2, "report upload network exception:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v22

    invoke-interface {v1, v2, v0}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13d

    :catch_11b
    move-exception v0

    move-object v3, v2

    move-object v2, v5

    :goto_11e
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, -0x6f

    invoke-direct {v1, v3, v5, v4}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    iget-object v1, v1, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string v3, "report upload network io exception:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13d
    return-void
.end method

.method private doUpload(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/io/File;)V
    .registers 16

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->doUploadOld(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/io/File;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    if-nez v0, :cond_f

    const-string v0, "upload fail : HttpDelegate is null"

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    if-nez p1, :cond_15

    const-string v0, "upload fail : uploadBody is null"

    :cond_15
    if-nez p3, :cond_19

    const-string v0, "upload fail : file is null"

    :cond_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "HLog_upload_log_info"

    if-nez v1, :cond_2c

    invoke-static {v2, v0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

    if-eqz p0, :cond_2b

    invoke-interface {p0, v0}, Lcom/oplus/log/uploader/UploadManager$UploaderListener;->onUploaderFailed(Ljava/lang/String;)V

    :cond_2b
    return-void

    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_41
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    :goto_47
    move-object v11, v0

    iget-object v3, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->business:Ljava/lang/String;

    iget-object v4, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    iget-object v8, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->subType:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v9

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v10

    move v6, p2

    invoke-static/range {v3 .. v11}, Lcom/oplus/log/UrlProvider;->makeUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUpload Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;)V

    const-string v0, "HLog"

    const-string v1, "start uploading"

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/log/nx/http/NxRequest;

    invoke-direct {v0}, Lcom/oplus/log/nx/http/NxRequest;-><init>()V

    invoke-virtual {v0, p2}, Lcom/oplus/log/nx/http/NxRequest;->setUrl(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;

    invoke-virtual {v0, p3}, Lcom/oplus/log/nx/http/NxRequest;->setFile(Ljava/io/File;)V

    iget-object p2, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    invoke-interface {p2, v0}, Lcom/oplus/log/nx/http/INxHttpClient;->sendRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object p2
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_91} :catch_14b

    const-string p3, "Upload failed:"

    if-eqz p2, :cond_108

    :try_start_95
    invoke-virtual {p2}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_108

    invoke-virtual {p2}, Lcom/oplus/log/nx/http/NxResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/oplus/log/core/bean/NxResponseBean;

    invoke-static {p2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/log/core/bean/NxResponseBean;

    invoke-virtual {p2}, Lcom/oplus/log/core/bean/NxResponseBean;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_160

    goto/16 :goto_15e

    :pswitch_b2  #0x7d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/log/core/bean/NxResponseBean;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_15e

    :pswitch_ca  #0x7d1, 0x7d2, 0x7d4, 0x7d5
    invoke-virtual {p2}, Lcom/oplus/log/core/bean/NxResponseBean;->getStatus()I

    move-result v0

    invoke-virtual {p2}, Lcom/oplus/log/core/bean/NxResponseBean;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/log/core/bean/NxResponseBean;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15e

    :pswitch_ec  #0x7d0
    iget-object p3, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/oplus/log/uploader/UploadManager;->savaTraceIds(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/log/uploader/UploadManager;->uploadSuccess()V

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;

    move-result-object p3

    iget-object v0, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->business:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p3, v0, v1, v3}, Lcom/oplus/log/nx/obus/StatisticsHelper;->autoPushLogFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/oplus/log/core/bean/NxResponseBean;->getMsg()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15e

    :cond_108
    const-string v0, "upload error:"

    if-nez p2, :cond_10f

    const-string p2, "upload error:response is null"

    goto :goto_133

    :cond_10f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "response code is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/log/nx/http/NxResponse;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_133
    const/16 v0, -0x6e

    invoke-direct {p0, p1, v0, p2}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_14a} :catch_14b

    goto :goto_15e

    :catch_14b
    move-exception p2

    const/16 p3, -0x6f

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    const-string p0, "upload network exception:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p2, p0, v2}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_15e
    return-void

    nop

    :pswitch_data_160
    .packed-switch 0x7d0
        :pswitch_ec  #000007d0
        :pswitch_ca  #000007d1
        :pswitch_ca  #000007d2
        :pswitch_b2  #000007d3
        :pswitch_ca  #000007d4
        :pswitch_ca  #000007d5
    .end packed-switch
.end method

.method private doUploadChecker(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    const-string v1, "HLog_upload_log_info"

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string p1, "check upload failed : HttpDelegate is null"

    invoke-interface {p0, v1, p1}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_23
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    :goto_29
    iget-object v2, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v2}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v3}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v3

    invoke-static {p1, p2, v2, v3, v0}, Lcom/oplus/log/UrlProvider;->makeCheckUploadUrl(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NearX-HLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUploadChecker: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    invoke-interface {p0, p1}, Lcom/oplus/log/uploader/IHttpDelegate;->checkUpload(Ljava/lang/String;)Ly3/a;

    move-result-object p0

    if-eqz p0, :cond_72

    iget-object p1, p0, Ly3/a;->n:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_67

    iget-object p1, p0, Ly3/a;->o:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_72

    :cond_67
    if-eqz p3, :cond_84

    const-string p1, "need upload log"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, p0}, Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;->onNeedUpload(Ly3/a;)V

    goto :goto_84

    :cond_72
    if-eqz p3, :cond_84

    const-string p0, "userTraceConfigDto or device id is empty"

    invoke-interface {p3, p0}, Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;->onDontNeedUpload(Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_79} :catch_7a

    goto :goto_84

    :catch_7a
    move-exception p0

    if-eqz p3, :cond_84

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;->onDontNeedUpload(Ljava/lang/String;)V

    :cond_84
    :goto_84
    return-void
.end method

.method private doUploadCheckerForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;Landroid/content/Context;)V
    .registers 10

    const-string v0, "NearX-HLog_UploadManager"

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    const-string v2, "HLog_upload_log_info"

    if-nez v1, :cond_e

    const-string p0, "check upload failed : HttpDelegate is null"

    invoke-static {v2, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/oplus/log/uploader/UploadManager;->clearOldSPTraceIds()V

    new-instance v1, Lcom/oplus/log/nx/http/NxRequest;

    invoke-direct {v1}, Lcom/oplus/log/nx/http/NxRequest;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/log/UrlProvider;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/usertrace/log/cdn/config/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/log/nx/http/NxRequest;->setUrl(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/databases"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/oplus/log/nx/http/NxFile;

    invoke-direct {v5}, Lcom/oplus/log/nx/http/NxFile;-><init>()V

    invoke-virtual {v5, v4}, Lcom/oplus/log/nx/http/NxFile;->setPath(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxFile;

    move-result-object v4

    const-string v5, "cdn.gz"

    invoke-virtual {v4, v5}, Lcom/oplus/log/nx/http/NxFile;->setFileName(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxFile;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oplus/log/nx/http/NxRequest;->setNxFile(Lcom/oplus/log/nx/http/NxFile;)Lcom/oplus/log/nx/http/NxRequest;

    iget-object v4, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    invoke-interface {v4, v1}, Lcom/oplus/log/nx/http/INxHttpClient;->downloadRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/oplus/log/uploader/UploadManager;->parserCDNConfig(Landroid/content/Context;Lcom/oplus/log/nx/http/NxResponse;)Ljava/util/List;

    move-result-object p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doUploadCheckerForCdn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " code : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doUploadCheckerForCdn cdnConfigDto : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/oplus/log/uploader/UploadManager;->checkCdnConfigDto(Ljava/util/List;)Ly3/a;

    move-result-object p3

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    const/4 v3, 0x1

    if-eqz v0, :cond_c1

    invoke-virtual {v1}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_c1

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v0, v3}, Lcom/oplus/log/config/DynConfigManager;->setCheckConfig(Z)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_c1} :catch_ff

    :cond_c1
    const-string v0, ""

    if-eqz p3, :cond_ef

    :try_start_c5
    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz p0, :cond_cc

    invoke-virtual {p0, p3}, Lcom/oplus/log/config/DynConfigManager;->setConfigDto(Ly3/a;)V

    :cond_cc
    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p3, Ly3/a;->a:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v3}, Lcom/oplus/log/nx/obus/StatisticsHelper;->pullHLogConfig(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_109

    const-string p0, "need upload log"

    invoke-static {v2, p0}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;->onNeedUpload(Ly3/a;)V

    goto :goto_109

    :cond_ef
    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/oplus/log/nx/obus/StatisticsHelper;->pullHLogConfig(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p2, :cond_109

    const-string p0, "userTraceConfigDto or device id is empty"

    invoke-interface {p2, p0}, Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;->onDontNeedUpload(Ljava/lang/String;)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_fe} :catch_ff

    goto :goto_109

    :catch_ff
    move-exception p0

    if-eqz p2, :cond_109

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;->onDontNeedUpload(Ljava/lang/String;)V

    :cond_109
    :goto_109
    return-void
.end method

.method private doUploadOld(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/io/File;)V
    .registers 16

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    if-nez v0, :cond_7

    const-string v0, "upload fail : HttpDelegate is null"

    goto :goto_9

    :cond_7
    const-string v0, ""

    :goto_9
    if-nez p1, :cond_d

    const-string v0, "upload fail : uploadBody is null"

    :cond_d
    if-nez p3, :cond_11

    const-string v0, "upload fail : file is null"

    :cond_11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "HLog_upload_log_info"

    if-nez v1, :cond_26

    iget-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    invoke-interface {p1, v2, v0}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

    if-eqz p0, :cond_25

    invoke-interface {p0, v0}, Lcom/oplus/log/uploader/UploadManager$UploaderListener;->onUploaderFailed(Ljava/lang/String;)V

    :cond_25
    return-void

    :cond_26
    const/16 v0, -0x6f

    :try_start_28
    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_43

    :cond_3d
    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v1

    :goto_43
    move-object v11, v1

    iget-object v3, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->business:Ljava/lang/String;

    iget-object v4, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    iget-object v8, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->subType:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v9

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v10

    move v6, p2

    invoke-static/range {v3 .. v11}, Lcom/oplus/log/UrlProvider;->makeUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string v3, "NearX-HLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doUpload Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/oplus/log/ISimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    invoke-interface {v1, p2, p3}, Lcom/oplus/log/uploader/IHttpDelegate;->uploadFile(Ljava/lang/String;Ljava/io/File;)Lcom/oplus/log/uploader/ResponseWrapper;

    move-result-object p2

    if-eqz p2, :cond_8d

    invoke-virtual {p2}, Lcom/oplus/log/uploader/ResponseWrapper;->getStatusCode()I

    move-result p3

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_8d

    invoke-direct {p0}, Lcom/oplus/log/uploader/UploadManager;->uploadSuccess()V

    goto :goto_fb

    :cond_8d
    const-string p3, "upload error:"

    if-nez p2, :cond_94

    const-string p2, "upload error:response is null"

    goto :goto_b8

    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "response code is "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/log/uploader/ResponseWrapper;->getStatusCode()I

    move-result p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", msg is "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oplus/log/uploader/ResponseWrapper;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_b8
    const/16 p3, -0x6e

    invoke-direct {p0, p1, p3, p2}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_bd} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_bd} :catch_be

    goto :goto_fb

    :catch_be
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string p1, "upload network exception:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fb

    :catch_dd
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string p1, "upload network io exception:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v2, p1}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_fb
    return-void
.end method

.method private initThread()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/log/uploader/UploadManager$UploadHandler;-><init>(Lcom/oplus/log/uploader/UploadManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mHandler:Lcom/oplus/log/uploader/UploadManager$UploadHandler;

    return-void
.end method

.method private parserCDNConfig(Landroid/content/Context;Lcom/oplus/log/nx/http/NxResponse;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/log/nx/http/NxResponse;",
            ")",
            "Ljava/util/List<",
            "Ly3/a;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/oplus/log/nx/http/NxResponse;->getCode()I

    move-result p0

    const/4 v0, 0x0

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_a

    return-object v0

    :cond_a
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/log/nx/http/NxResponse;->getFile()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_149

    invoke-static {p2}, Lcom/oplus/log/util/GzipUtils;->File2byte(Ljava/io/File;)[B

    move-result-object p2

    :try_start_19
    invoke-static {p2}, Lcom/oplus/log/util/GzipUtils;->ungzip([B)[B

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "usetrace.db"

    invoke-static {p2, v1, v2}, Lcom/oplus/log/util/GzipUtils;->getFileByBytes([BLjava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/oplus/log/util/DBUtil;->getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "select * from usertrace_config"

    invoke-virtual {p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_124

    :cond_5c
    new-instance p1, Ly3/a;

    invoke-direct {p1}, Ly3/a;-><init>()V

    const-string p2, "data1"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_70

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Ly3/a;->a:J

    :cond_70
    const-string p2, "data2"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_7e

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ly3/a;->b:Ljava/lang/String;

    :cond_7e
    const-string p2, "data3"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_8c

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->c:I

    :cond_8c
    const-string p2, "data4"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_9a

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ly3/a;->d:Ljava/lang/String;

    :cond_9a
    const-string p2, "data5"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_a8

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Ly3/a;->e:J

    :cond_a8
    const-string p2, "data6"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_b6

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Ly3/a;->f:J

    :cond_b6
    const-string p2, "data7"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_c4

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->g:I

    :cond_c4
    const-string p2, "data8"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_d2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->h:I

    :cond_d2
    const-string p2, "data9"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_e0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->i:I

    :cond_e0
    const-string p2, "data10"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_ee

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->j:I

    :cond_ee
    const-string p2, "data11"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_fc

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->k:I

    :cond_fc
    const-string p2, "data12"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_10a

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->l:I

    :cond_10a
    const-string p2, "data13"

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_118

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Ly3/a;->m:I

    :cond_118
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_5c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_124} :catch_133
    .catchall {:try_start_19 .. :try_end_124} :catchall_131

    :cond_124
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_12d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_12d
    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    goto :goto_149

    :catchall_131
    move-exception p0

    goto :goto_13a

    :catch_133
    move-exception p0

    :try_start_134
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_13a
    .catchall {:try_start_134 .. :try_end_13a} :catchall_131

    :goto_13a
    if-eqz v0, :cond_145

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_145

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_145
    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    throw p0

    :cond_149
    :goto_149
    return-object p0
.end method

.method private reportErrorCode(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    const-string v3, "HLog_report_log_info"

    if-nez v2, :cond_10

    const-string v0, "upload code error : HttpDelegate is null"

    invoke-static {v3, v0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    if-nez v1, :cond_18

    const-string v0, "upload code error : UploadBody is null"

    invoke-static {v3, v0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    :try_start_18
    iget-object v2, v0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v2}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    :cond_2d
    iget-object v2, v0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v2}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v2

    :goto_33
    move-object v12, v2

    iget-object v4, v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->business:Ljava/lang/String;

    iget-object v5, v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->specificId:Ljava/lang/String;

    const-string v6, ""

    iget-object v9, v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->subType:Ljava/lang/String;

    iget-object v2, v0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v2}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v10

    iget-object v2, v0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v2}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v11

    iget-object v13, v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPName:Ljava/lang/String;

    iget-object v14, v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->reportReason:Ljava/lang/String;

    iget-wide v7, v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->endTime:J

    iget-object v2, v0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    iget-object v1, v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPValue:Ljava/lang/String;

    iget-object v15, v0, Lcom/oplus/log/uploader/UploadManager;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    move-wide/from16 v16, v7

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v19, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    invoke-static/range {v4 .. v19}, Lcom/oplus/log/UrlProvider;->makeReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/oplus/log/ISimpleLog;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NearX-HLog_UploadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportUpload Error Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/oplus/log/nx/http/NxRequest;

    invoke-direct {v2}, Lcom/oplus/log/nx/http/NxRequest;-><init>()V

    invoke-virtual {v2, v1}, Lcom/oplus/log/nx/http/NxRequest;->setUrl(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;

    iget-object v0, v0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    invoke-interface {v0, v2}, Lcom/oplus/log/nx/http/INxHttpClient;->sendRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_89} :catch_8a

    goto :goto_9f

    :catch_8a
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload code error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9f
    return-void
.end method

.method private reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/log/uploader/FileZipper;->deleteZipFile(Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3b

    const-string v0, "HLog_report_log_info"

    const-string v1, "report upload failed"

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    iget-object v1, p0, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    if-eqz v1, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run out of retry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;->onReporterFailed(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V

    :cond_2c
    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;

    move-result-object v1

    iget-object v2, p1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->business:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->specificId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/log/nx/obus/StatisticsHelper;->pushLogFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->reportErrorCode(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    return-void

    :cond_3b
    iget-object p2, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getTimerCheckParam()Lcom/oplus/log/core/bean/TimerCheckParam;

    move-result-object p2

    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Lcom/oplus/log/core/bean/TimerCheckParam;->isEnableDelayRetry()Z

    move-result p3

    if-nez p3, :cond_4a

    goto :goto_5d

    :cond_4a
    invoke-virtual {p2}, Lcom/oplus/log/core/bean/TimerCheckParam;->getDelayRetrySecond()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    iget v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    long-to-int p2, p2

    mul-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForReport(Lcom/oplus/log/uploader/UploadManager$ReportBody;I)V

    goto :goto_68

    :cond_5d
    :goto_5d
    iget p2, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    mul-int/lit16 p2, p2, 0x7d0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForReport(Lcom/oplus/log/uploader/UploadManager$ReportBody;I)V

    :goto_68
    return-void
.end method

.method private reportUploadFile(Lcom/oplus/log/uploader/UploadManager$ReportBody;)V
    .registers 4

    iget-boolean v0, p1, Lcom/oplus/log/uploader/UploadManager$ReportBody;->useWifi:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/oplus/log/util/BaseInfoUtil;->isWifiStatusConnect()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    :cond_b
    const-string v0, "upload task need wifi connect"

    const-string v1, "HLog_report_log_info"

    invoke-static {v1, v0}, Lcom/oplus/log/HLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x79

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/log/uploader/UploadManager;->reportErrorCode(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    if-eqz p0, :cond_35

    invoke-interface {p0, v0, p1}, Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;->onReporterFailed(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V

    goto :goto_35

    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    if-eqz v0, :cond_35

    new-instance v1, Lcom/oplus/log/uploader/UploadManager$2;

    invoke-direct {v1, p0, p1}, Lcom/oplus/log/uploader/UploadManager$2;-><init>(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V

    invoke-interface {v0, v1}, Lcom/oplus/log/appender/ILogAppender;->flush(Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_2c

    goto :goto_35

    :catch_2c
    move-exception v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/log/uploader/UploadManager;->reportUploadFailed(Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method private reportUploadSuccess(Lcom/oplus/log/uploader/ResponseWrapper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/log/uploader/FileZipper;->deleteZipFile(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    if-eqz p0, :cond_f

    invoke-interface {p0, p1}, Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;->onReporterSuccess(Lcom/oplus/log/uploader/ResponseWrapper;)V

    :cond_f
    return-void
.end method

.method private savaTraceIds(Ljava/lang/String;)V
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HLogsavaTraceIds:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object p0

    const-string v0, "traceIds"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/oplus/log/util/SPUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private uploadErrorCode(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->uploadErrorCodeOld(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    const-string v1, "HLog_upload_log_info"

    if-nez v0, :cond_14

    const-string p0, "upload code error : HttpDelegate is null"

    invoke-static {v1, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    if-nez p1, :cond_1c

    const-string p0, "upload code error : UploadBody is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_31
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    :goto_37
    move-object v10, v0

    iget-object v2, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->business:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    const-string v4, ""

    iget-object v7, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->subType:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v8

    iget-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v9

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v10}, Lcom/oplus/log/UrlProvider;->makeUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NearX-Log"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "upload Error Code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/oplus/log/nx/http/NxRequest;

    invoke-direct {p2}, Lcom/oplus/log/nx/http/NxRequest;-><init>()V

    invoke-virtual {p2, p1}, Lcom/oplus/log/nx/http/NxRequest;->setUrl(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mNxHttpClient:Lcom/oplus/log/nx/http/INxHttpClient;

    invoke-interface {p0, p2}, Lcom/oplus/log/nx/http/INxHttpClient;->sendRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_75} :catch_76

    goto :goto_80

    :catch_76
    move-exception p0

    const-string p1, "upload code error:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/oplus/log/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_80
    return-void
.end method

.method private uploadErrorCodeOld(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    const-string v1, "HLog_upload_log_info"

    if-nez v0, :cond_e

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string p1, "upload code error : HttpDelegate is null"

    invoke-interface {p0, v1, p1}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string p1, "upload code error : UploadBody is null"

    invoke-interface {p0, v1, p1}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/log/util/AppUtil;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_2d
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getTracePkg()Ljava/lang/String;

    move-result-object v0

    :goto_33
    move-object v10, v0

    iget-object v2, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->business:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    const-string v4, ""

    iget-object v7, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->subType:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getImeiProvider()Lcom/oplus/log/Settings$IImeiProvider;

    move-result-object v8

    iget-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getOpenIdProvider()Lcom/oplus/log/Settings$IOpenIdProvider;

    move-result-object v9

    move v5, p2

    move-object v6, p3

    invoke-static/range {v2 .. v10}, Lcom/oplus/log/UrlProvider;->makeUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/oplus/log/Settings$IImeiProvider;Lcom/oplus/log/Settings$IOpenIdProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string p3, "NearX-HLog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload Error Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lcom/oplus/log/ISimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    invoke-interface {p2, p1}, Lcom/oplus/log/uploader/IHttpDelegate;->uploadCode(Ljava/lang/String;)Lcom/oplus/log/uploader/ResponseWrapper;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_6b} :catch_6c

    goto :goto_83

    :catch_6c
    move-exception p1

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mLog:Lcom/oplus/log/ISimpleLog;

    const-string p2, "upload code error:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/oplus/log/ISimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_83
    return-void
.end method

.method private uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/log/uploader/FileZipper;->deleteZipFile(Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_30

    const-string v0, "HLog_upload_log_info"

    const-string v1, "upload failed"

    invoke-static {v0, v1}, Lcom/oplus/log/HLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

    if-eqz v0, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run out of retry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/log/uploader/UploadManager$UploaderListener;->onUploaderFailed(Ljava/lang/String;)V

    :cond_2c
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->uploadErrorCode(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    return-void

    :cond_30
    iget-object p2, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getTimerCheckParam()Lcom/oplus/log/core/bean/TimerCheckParam;

    move-result-object p2

    if-eqz p2, :cond_52

    invoke-virtual {p2}, Lcom/oplus/log/core/bean/TimerCheckParam;->isEnableDelayRetry()Z

    move-result p3

    if-nez p3, :cond_3f

    goto :goto_52

    :cond_3f
    invoke-virtual {p2}, Lcom/oplus/log/core/bean/TimerCheckParam;->getDelayRetrySecond()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p2, v0

    iget v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    int-to-long v0, v0

    mul-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUpload(Lcom/oplus/log/uploader/UploadManager$UploadBody;J)V

    goto :goto_5f

    :cond_52
    :goto_52
    iget p2, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    const-wide/16 v0, 0x7d0

    int-to-long p2, p2

    mul-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUpload(Lcom/oplus/log/uploader/UploadManager$UploadBody;J)V

    :goto_5f
    return-void
.end method

.method private uploadFile(Lcom/oplus/log/uploader/UploadManager$UploadBody;)V
    .registers 14

    iget-boolean v0, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->useWifi:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/oplus/log/util/BaseInfoUtil;->isWifiStatusConnect()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1f

    :cond_b
    const-string v0, "upload task need wifi connect"

    const-string v1, "HLog_upload_log_info"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x79

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/log/uploader/UploadManager;->uploadErrorCode(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

    if-eqz p0, :cond_56

    invoke-interface {p0, v0}, Lcom/oplus/log/uploader/UploadManager$UploaderListener;->onUploaderFailed(Ljava/lang/String;)V

    goto :goto_56

    :cond_1f
    :goto_1f
    :try_start_1f
    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/oplus/log/appender/ILogAppender;->flushSync()V

    :cond_26
    invoke-static {}, Lcom/oplus/log/HLog;->getFlushCallback()Lcom/oplus/log/Settings$IFlushCallback;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-interface {v0}, Lcom/oplus/log/Settings$IFlushCallback;->flushAllProcess()V

    :cond_2f
    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-wide v2, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->startTime:J

    iget-wide v4, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->endTime:J

    iget-object v6, p0, Lcom/oplus/log/uploader/UploadManager;->mSettings:Lcom/oplus/log/Settings;

    iget-object v7, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    iget-object v8, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v0}, Lcom/oplus/log/config/DynConfigManager;->getZipMaxFile()J

    move-result-wide v9

    new-instance v11, Lcom/oplus/log/uploader/UploadManager$1;

    invoke-direct {v11, p0, p1}, Lcom/oplus/log/uploader/UploadManager$1;-><init>(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;)V

    invoke-static/range {v2 .. v11}, Lcom/oplus/log/uploader/FileZipper;->makeUploadFiles(JJLcom/oplus/log/Settings;Ljava/lang/String;Ljava/lang/String;JLcom/oplus/log/uploader/FileZipper$OnZipFileListener;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_4c} :catch_4d

    goto :goto_56

    :catch_4d
    move-exception v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/log/uploader/UploadManager;->uploadFailed(Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    :cond_56
    :goto_56
    return-void
.end method

.method private uploadSuccess()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/uploader/UploadManager;->mCount:I

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager;->zipLogPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/log/uploader/FileZipper;->deleteZipFile(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/oplus/log/uploader/UploadManager$UploaderListener;->onUploaderSuccess()V

    :cond_f
    return-void
.end method


# virtual methods
.method public effortConfig(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_180

    const-string v0, ".gz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_180

    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1c

    return-void

    :cond_1c
    invoke-static {v0}, Lcom/oplus/log/util/GzipUtils;->File2byte(Ljava/io/File;)[B

    move-result-object p1

    :try_start_20
    invoke-static {p1}, Lcom/oplus/log/util/GzipUtils;->ungzip([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ccusetrace.db"

    invoke-static {p1, v0, v1}, Lcom/oplus/log/util/GzipUtils;->getFileByBytes([BLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/log/util/DBUtil;->getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "select * from usertrace_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance v0, Ly3/a;

    invoke-direct {v0}, Ly3/a;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_131

    :cond_71
    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_80

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Ly3/a;->a:J

    :cond_80
    const-string v1, "data2"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_8e

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ly3/a;->b:Ljava/lang/String;

    :cond_8e
    const-string v1, "data3"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_9c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->c:I

    :cond_9c
    const-string v1, "data4"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_aa

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ly3/a;->d:Ljava/lang/String;

    :cond_aa
    const-string v1, "data5"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_b8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Ly3/a;->e:J

    :cond_b8
    const-string v1, "data6"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_c6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v0, Ly3/a;->f:J

    :cond_c6
    const-string v1, "data7"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_d4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->g:I

    :cond_d4
    const-string v1, "data8"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_e2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->h:I

    :cond_e2
    const-string v1, "data9"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_f0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->i:I

    :cond_f0
    const-string v1, "data10"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_fe

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->j:I

    :cond_fe
    const-string v1, "data11"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_10c

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->k:I

    :cond_10c
    const-string v1, "data12"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_11a

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->l:I

    :cond_11a
    const-string v1, "data13"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_128

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Ly3/a;->m:I

    :cond_128
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_71

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_131
    const-string p1, "NearX-HLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config from cloud config configDto info : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ly3/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz p0, :cond_152

    invoke-virtual {p0, v0}, Lcom/oplus/log/config/DynConfigManager;->setConfigDto(Ly3/a;)V

    :cond_152
    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, v0, Ly3/a;->a:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Ly3/a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/log/nx/obus/StatisticsHelper;->reportCCEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_16f} :catch_175
    .catchall {:try_start_20 .. :try_end_16f} :catchall_173

    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    return-void

    :catchall_173
    move-exception p0

    goto :goto_17c

    :catch_175
    move-exception p0

    :try_start_176
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_17c
    .catchall {:try_start_176 .. :try_end_17c} :catchall_173

    :goto_17c
    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    throw p0

    :cond_180
    :goto_180
    return-void
.end method

.method public getReporterListener()Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    return-object p0
.end method

.method public getUploaderListener()Lcom/oplus/log/uploader/UploadManager$UploaderListener;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

    return-object p0
.end method

.method public loadLocalConfig()V
    .registers 9

    const-string v0, "NearX-HLog"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/databases"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "usetrace.db"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3c} :catch_162
    .catchall {:try_start_3 .. :try_end_3c} :catchall_160

    if-nez v2, :cond_42

    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    return-void

    :cond_42
    :try_start_42
    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/log/util/DBUtil;->getInstance(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "select * from usertrace_config"

    invoke-virtual {v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_54} :catch_162
    .catchall {:try_start_42 .. :try_end_54} :catchall_160

    if-gtz v2, :cond_63

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_5f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5f
    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    return-void

    :cond_63
    :try_start_63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_136

    :cond_6e
    new-instance v3, Ly3/a;

    invoke-direct {v3}, Ly3/a;-><init>()V

    const-string v4, "data1"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_82

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Ly3/a;->a:J

    :cond_82
    const-string v4, "data2"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_90

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ly3/a;->b:Ljava/lang/String;

    :cond_90
    const-string v4, "data3"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_9e

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->c:I

    :cond_9e
    const-string v4, "data4"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_ac

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Ly3/a;->d:Ljava/lang/String;

    :cond_ac
    const-string v4, "data5"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_ba

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Ly3/a;->e:J

    :cond_ba
    const-string v4, "data6"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_c8

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v3, Ly3/a;->f:J

    :cond_c8
    const-string v4, "data7"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_d6

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->g:I

    :cond_d6
    const-string v4, "data8"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_e4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->h:I

    :cond_e4
    const-string v4, "data9"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_f2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->i:I

    :cond_f2
    const-string v4, "data10"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_100

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->j:I

    :cond_100
    const-string v4, "data11"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_10e

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->k:I

    :cond_10e
    const-string v4, "data12"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_11c

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->l:I

    :cond_11c
    const-string v4, "data13"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v5, :cond_12a

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ly3/a;->m:I

    :cond_12a
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_6e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_136
    invoke-direct {p0, v2}, Lcom/oplus/log/uploader/UploadManager;->checkCdnConfigDto(Ljava/util/List;)Ly3/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config from cloud config configDto info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ly3/a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz p0, :cond_159

    invoke-virtual {p0, v2}, Lcom/oplus/log/config/DynConfigManager;->setConfigDto(Ly3/a;)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_159} :catch_162
    .catchall {:try_start_63 .. :try_end_159} :catchall_160

    :cond_159
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_172

    goto :goto_16f

    :catchall_160
    move-exception p0

    goto :goto_176

    :catch_162
    :try_start_162
    const-string p0, "no config"

    invoke-static {v0, p0}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_167
    .catchall {:try_start_162 .. :try_end_167} :catchall_160

    if-eqz v1, :cond_172

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p0

    if-nez p0, :cond_172

    :goto_16f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_172
    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    return-void

    :goto_176
    if-eqz v1, :cond_181

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_181

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_181
    invoke-static {}, Lcom/oplus/log/util/DBUtil;->closeDatabase()V

    throw p0
.end method

.method public quitThread()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mUploadThread:Landroid/os/HandlerThread;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_7
    return-void
.end method

.method public sendMessageForReport(Lcom/oplus/log/uploader/UploadManager$ReportBody;I)V
    .registers 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mHandler:Lcom/oplus/log/uploader/UploadManager$UploadHandler;

    int-to-long p1, p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageForUpload(Lcom/oplus/log/uploader/UploadManager$UploadBody;J)V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mHandler:Lcom/oplus/log/uploader/UploadManager$UploadHandler;

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendMessageForUploadChecker(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V
    .registers 5

    new-instance v0, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;

    invoke-direct {v0, p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;-><init>(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->setUploadCheckerListener(Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mHandler:Lcom/oplus/log/uploader/UploadManager$UploadHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageForUploadCheckerForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V
    .registers 5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;

    invoke-direct {v1, p0, p1}, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;-><init>(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;->setUploadCheckerForCdnListener(Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager;->mHandler:Lcom/oplus/log/uploader/UploadManager$UploadHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public setHttpDelegate(Lcom/oplus/log/uploader/IHttpDelegate;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mIHttpDelegate:Lcom/oplus/log/uploader/IHttpDelegate;

    :cond_4
    return-void
.end method

.method public setIAppender(Lcom/oplus/log/appender/ILogAppender;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mAppender:Lcom/oplus/log/appender/ILogAppender;

    :cond_4
    return-void
.end method

.method public setReporterListener(Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mReportUploaderListener:Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;

    return-void
.end method

.method public setUploaderListener(Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager;->mUploaderListener:Lcom/oplus/log/uploader/UploadManager$UploaderListener;

    return-void
.end method
