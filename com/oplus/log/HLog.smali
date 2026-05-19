.class public Lcom/oplus/log/HLog;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "NearX-HLog"

.field private static final encryptIV:[I

.field private static env:I

.field private static flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

.field private static hasInit:Z

.field private static loganConfig:Lcom/oplus/log/core/LoganConfig;

.field private static mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

.field private static mCollectLog:Lcom/oplus/log/log/ICollectLog;

.field public static mContext:Landroid/content/Context;

.field private static mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

.field private static mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field private static mLogAppender:Lcom/oplus/log/appender/LogAppender;

.field private static mLogPrint:Z

.field private static mLogProcessor:Lcom/oplus/log/log/LogProcessor;

.field private static mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

.field private static mSettings:Lcom/oplus/log/Settings;

.field private static mSimpleLog:Lcom/oplus/log/log/SimpleLog;

.field private static mTraceLog:Lcom/oplus/log/log/TraceLog;

.field private static mUploadManager:Lcom/oplus/log/uploader/UploadManager;

.field public static quit:Z

.field private static sIsDebug:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/oplus/log/HLog;->encryptIV:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/log/HLog;->hasInit:Z

    sput-boolean v0, Lcom/oplus/log/HLog;->quit:Z

    return-void

    nop

    :array_10
    .array-data 4
        0x21
        0x20
        0x23
        0x22
        0x25
        0x24
        0x27
        0x26
        0x29
        0x28
        0x21
        0x20
        0x23
        0x22
        0x25
        0x24
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkUpload(Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V
    .registers 4

    if-nez p0, :cond_9

    const-string v0, "NearX-HLog"

    const-string v1, "UploadCheckerListener为空"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v0, :cond_18

    sget-object v1, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getBusiness()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p0}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUploadChecker(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V

    :cond_18
    return-void
.end method

.method private static checkUpload(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V
    .registers 5

    if-nez p2, :cond_9

    const-string v0, "NearX-HLog"

    const-string v1, "UploadCheckerListener为空"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUploadChecker(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V

    :cond_10
    return-void
.end method

.method public static checkUploadForCdn(Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getBusiness()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUploadCheckerForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V

    :cond_d
    return-void
.end method

.method public static checkUploadForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V
    .registers 4

    if-nez p1, :cond_9

    const-string v0, "NearX-HLog"

    const-string v1, "UploadCheckerForCdnListener为空"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0, p1}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUploadCheckerForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V

    :cond_10
    return-void
.end method

.method private static closeCollects()V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    sget-object v2, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->destroy(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/log/HLog;->mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    :cond_c
    sget-object v0, Lcom/oplus/log/HLog;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    if-eqz v0, :cond_17

    sget-object v2, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oplus/log/collect/ActivityLifeMonitor;->destroy(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/log/HLog;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    :cond_17
    sput-object v1, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    const-string v1, "NearX-HLog"

    if-nez v0, :cond_c

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-virtual {v0, v1, p0}, Lcom/oplus/log/log/BaseSimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1}, Lcom/oplus/log/log/BaseSimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string p2, "HLog未初始化-->"

    invoke-static {p2, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/log/log/BaseSimpleLog;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void
.end method

.method public static deleteLogFile()V
    .registers 4

    invoke-static {}, Lcom/oplus/log/HLog;->getAllFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_14

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    const-string v1, "NearX-HLog"

    if-nez v0, :cond_c

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-virtual {v0, v1, p0}, Lcom/oplus/log/log/BaseSimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1}, Lcom/oplus/log/log/BaseSimpleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string p2, "HLog未初始化-->"

    invoke-static {p2, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/log/log/BaseSimpleLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void
.end method

.method public static exit()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    sput-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    sput-object v0, Lcom/oplus/log/HLog;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    invoke-static {}, Lcom/oplus/log/HLog;->closeCollects()V

    sget-object v1, Lcom/oplus/log/HLog;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/oplus/log/appender/LogAppender;->close()V

    :cond_11
    sput-object v0, Lcom/oplus/log/HLog;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    return-void
.end method

.method public static flush(Z)V
    .registers 2

    sget-boolean v0, Lcom/oplus/log/HLog;->hasInit:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget-object v0, Lcom/oplus/log/HLog;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    if-eqz v0, :cond_12

    if-eqz p0, :cond_f

    invoke-virtual {v0}, Lcom/oplus/log/appender/LogAppender;->flushSync()V

    goto :goto_12

    :cond_f
    invoke-virtual {v0}, Lcom/oplus/log/appender/LogAppender;->flush()V

    :cond_12
    :goto_12
    return-void
.end method

.method public static getAllFiles()[Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/oplus/log/HLog;->loganConfig:Lcom/oplus/log/core/LoganConfig;

    iget-object v1, v1, Lcom/oplus/log/core/LoganConfig;->mPathPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1b

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getEnv()I
    .registers 1

    sget v0, Lcom/oplus/log/HLog;->env:I

    return v0
.end method

.method public static getFlushCallback()Lcom/oplus/log/Settings$IFlushCallback;
    .registers 1

    sget-object v0, Lcom/oplus/log/HLog;->flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

    return-object v0
.end method

.method public static getLogConfig()Lcom/oplus/log/Settings;
    .registers 1

    sget-object v0, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    return-object v0
.end method

.method public static getNxLogDto()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/oplus/log/config/DynConfigManager;->getNxLogConfig()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTraceLog()Lcom/oplus/log/ISimpleLog;
    .registers 1

    sget-object v0, Lcom/oplus/log/HLog;->mTraceLog:Lcom/oplus/log/log/TraceLog;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    const-string v1, "NearX-HLog"

    if-nez v0, :cond_c

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-virtual {v0, v1, p0}, Lcom/oplus/log/log/BaseSimpleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1}, Lcom/oplus/log/log/BaseSimpleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string p2, "HLog未初始化-->"

    invoke-static {p2, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/log/log/BaseSimpleLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void
.end method

.method private static initCollects()V
    .registers 4

    new-instance v0, Lcom/oplus/log/collect/ActivityLifeMonitor;

    sget-object v1, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1}, Lcom/oplus/log/collect/ActivityLifeMonitor;-><init>(Lcom/oplus/log/log/SimpleLog;)V

    sput-object v0, Lcom/oplus/log/HLog;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    sget-object v1, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oplus/log/HLog;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/log/collect/ActivityLifeMonitor;->init(Landroid/content/Context;Lcom/oplus/log/log/ICollectLog;)V

    sget-object v0, Lcom/oplus/log/HLog;->mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

    if-nez v0, :cond_24

    new-instance v0, Lcom/oplus/log/collect/auto/CrashCollect;

    sget-object v1, Lcom/oplus/log/HLog;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    sget-object v2, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1, v2}, Lcom/oplus/log/collect/auto/CrashCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V

    sput-object v0, Lcom/oplus/log/HLog;->mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

    sget-object v1, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/log/collect/auto/CrashCollect;->init(Landroid/content/Context;)V

    :cond_24
    sget-object v0, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->isEnableNet()Z

    move-result v0

    if-eqz v0, :cond_3e

    new-instance v0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    sget-object v1, Lcom/oplus/log/HLog;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    sget-object v2, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    sget-object v3, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/log/SimpleLog;)V

    sput-object v0, Lcom/oplus/log/HLog;->mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    sget-object v1, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->init(Landroid/content/Context;)V

    :cond_3e
    new-instance v0, Lcom/oplus/log/collect/auto/SystemInfoCollect;

    sget-object v1, Lcom/oplus/log/HLog;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    sget-object v2, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1, v2}, Lcom/oplus/log/collect/auto/SystemInfoCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V

    return-void
.end method

.method public static initHLog(Landroid/content/Context;Lcom/oplus/log/Settings;)V
    .registers 12

    const-string v0, "NearX-HLog"

    if-nez p0, :cond_a

    const-string p0, "init fail,context is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-nez p1, :cond_12

    const-string p0, "init fail,LogConfig is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    sput-object p0, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/log/util/AppUtil;->setAppContext(Landroid/content/Context;)V

    sput-object p1, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    new-instance v1, Lcom/oplus/log/config/DynConfigManager;

    invoke-direct {v1}, Lcom/oplus/log/config/DynConfigManager;-><init>()V

    sput-object v1, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v1}, Lcom/oplus/log/config/DynConfigManager;->getConfigDto()Ly3/a;

    move-result-object v1

    if-nez v1, :cond_33

    sget-object v1, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getConsoleLogLevel()I

    move-result v2

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getFileLogLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oplus/log/config/DynConfigManager;->createDefaultConfig(II)V

    :cond_33
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

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/log/core/LoganConfig$Builder;->setFileNamePrefix(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [[I

    sget-object v4, Lcom/oplus/log/HLog;->encryptIV:[I

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/oplus/log/util/String2IntUtil;->tostring([[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/log/core/LoganConfig$Builder;->setEncryptKey16([B)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    new-array v3, v2, [[I

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/oplus/log/util/String2IntUtil;->tostring([[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/log/core/LoganConfig$Builder;->setEncryptIV16([B)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    sget-object v3, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {v1, v3}, Lcom/oplus/log/core/LoganConfig$Builder;->setDynConfigManager(Lcom/oplus/log/config/DynConfigManager;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getMaxQueue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/oplus/log/core/LoganConfig$Builder;->setMaxQueue(J)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/log/core/LoganConfig$Builder;->build()Lcom/oplus/log/core/LoganConfig;

    move-result-object v1

    sput-object v1, Lcom/oplus/log/HLog;->loganConfig:Lcom/oplus/log/core/LoganConfig;

    new-instance v3, Lcom/oplus/log/appender/LogAppender;

    invoke-direct {v3, v1}, Lcom/oplus/log/appender/LogAppender;-><init>(Lcom/oplus/log/core/LoganConfig;)V

    sput-object v3, Lcom/oplus/log/HLog;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    new-instance v1, Lcom/oplus/log/log/CollectLog;

    invoke-direct {v1, v3}, Lcom/oplus/log/log/CollectLog;-><init>(Lcom/oplus/log/appender/ILogAppender;)V

    sput-object v1, Lcom/oplus/log/HLog;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    new-instance v3, Lcom/oplus/log/log/SimpleLog;

    sget-object v5, Lcom/oplus/log/HLog;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    sget-object v6, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    sget-object v7, Lcom/oplus/log/HLog;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    sget-object v8, Lcom/oplus/log/HLog;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    move-object v9, v1

    check-cast v9, Lcom/oplus/log/log/CollectLog;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/oplus/log/log/SimpleLog;-><init>(Lcom/oplus/log/appender/ILogAppender;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/collect/ActivityLifeMonitor;Lcom/oplus/log/log/LogProcessor;Lcom/oplus/log/log/CollectLog;)V

    sput-object v3, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    new-instance v1, Lcom/oplus/log/log/TraceLog;

    sget-object v3, Lcom/oplus/log/HLog;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    sget-object v4, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    sget-object v5, Lcom/oplus/log/HLog;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-direct {v1, v3, v4, v5}, Lcom/oplus/log/log/TraceLog;-><init>(Lcom/oplus/log/appender/ILogAppender;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/collect/ActivityLifeMonitor;)V

    sput-object v1, Lcom/oplus/log/HLog;->mTraceLog:Lcom/oplus/log/log/TraceLog;

    new-instance v1, Lcom/oplus/log/uploader/UploadManager;

    sget-object v3, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    sget-object v4, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v1, p1, v3, v4}, Lcom/oplus/log/uploader/UploadManager;-><init>(Lcom/oplus/log/Settings;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/log/SimpleLog;)V

    sput-object v1, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    sget-object v3, Lcom/oplus/log/HLog;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    invoke-virtual {v1, v3}, Lcom/oplus/log/uploader/UploadManager;->setIAppender(Lcom/oplus/log/appender/ILogAppender;)V

    sget-object v1, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    const-string v3, "sdk version : 4.1.0.2-4"

    invoke-virtual {v1, v0, v3}, Lcom/oplus/log/log/BaseSimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getEnv()I

    move-result v0

    sput v0, Lcom/oplus/log/HLog;->env:I

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getFlushCallback()Lcom/oplus/log/Settings$IFlushCallback;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/HLog;->flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

    invoke-static {}, Lcom/oplus/log/HLog;->initCollects()V

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->isEnableNet()Z

    move-result p1

    if-eqz p1, :cond_f2

    invoke-static {}, Lcom/oplus/log/HLog;->innerCheckUpload()V

    const/4 p1, 0x0

    invoke-static {p1, v2}, Lcom/oplus/log/HLog;->innerUpload(Ly3/a;Z)V

    :cond_f2
    sget-object p1, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->isEnableOBus()Z

    move-result p1

    if-eqz p1, :cond_fd

    invoke-static {p0}, Lcom/oplus/log/HLog;->initObus(Landroid/content/Context;)V

    :cond_fd
    sput-boolean v2, Lcom/oplus/log/HLog;->hasInit:Z

    return-void
.end method

.method public static initObus(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;

    invoke-direct {v0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->ApplicationContext(Landroid/content/Context;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->enableTrack(Z)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;

    move-result-object p0

    sget-object v1, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;->LEVEL_VERBOSE:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    invoke-virtual {p0, v1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->logLevel(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->isTest(Z)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->enableInitCC(Z)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;

    move-result-object p0

    const-string v0, "126900"

    invoke-virtual {p0, v0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->moudleId(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->build()Lcom/oplus/log/nx/obus/StatisticsConfigInfo;

    move-result-object p0

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsManager;->getInstances()Lcom/oplus/log/nx/obus/StatisticsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/log/nx/obus/StatisticsManager;->init(Lcom/oplus/log/nx/obus/StatisticsConfigInfo;)V

    return-void
.end method

.method private static innerCheckUpload()V
    .registers 7

    sget-object v0, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    const-string v1, "NearX-HLog"

    if-nez v0, :cond_c

    const-string v0, "innerCheckUpload mDynConfigManager = null can not check config ."

    invoke-static {v1, v0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/oplus/log/config/DynConfigManager;->remainCheckTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_17

    return-void

    :cond_17
    const-string v0, "innerCheckUpload ready to check config ."

    invoke-static {v1, v0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/log/HLog$1;

    invoke-direct {v0}, Lcom/oplus/log/HLog$1;-><init>()V

    invoke-static {v0}, Lcom/oplus/log/HLog;->checkUploadForCdn(Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v1

    const-string v2, "hasCheckTimes"

    invoke-virtual {v1, v2}, Lcom/oplus/log/util/SPUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;J)V

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "lastCheckTime"

    invoke-virtual {v0, v3, v1, v2}, Lcom/oplus/log/util/SPUtil;->put(Ljava/lang/String;J)V

    return-void
.end method

.method public static innerUpload(Ly3/a;Z)V
    .registers 11

    if-nez p0, :cond_b

    sget-object p0, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/oplus/log/config/DynConfigManager;->getConfigDto()Ly3/a;

    move-result-object p0

    :cond_b
    const-string v0, "NearX-HLog"

    if-nez p0, :cond_17

    if-eqz p1, :cond_16

    const-string p0, "Don\'t need to upload log,no available userTraceConfigDto"

    invoke-static {v0, p0}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void

    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Ly3/a;->f:J

    const-wide/32 v5, 0xea60

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_2d

    if-eqz p1, :cond_2c

    const-string p0, "Don\'t need to upload log,not yet to upload"

    invoke-static {v0, p0}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v1

    iget-wide v2, p0, Ly3/a;->a:J

    invoke-virtual {v1, v2, v3}, Lcom/oplus/log/util/SPUtil;->hasBeenUpload(J)Z

    move-result v1

    if-eqz v1, :cond_41

    if-eqz p1, :cond_40

    const-string p0, "Don\'t need to upload log,current userTraceConfigDto has been uploaded"

    invoke-static {v0, p0}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    return-void

    :cond_41
    if-eqz p1, :cond_69

    const-string p1, "start to upload log,"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Ly3/a;->a:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uploading , configDto:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;)V

    :cond_69
    sget-object p1, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p1}, Lcom/oplus/log/Settings;->getBusiness()Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Ly3/a;->a:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ly3/a;->e:J

    iget-wide v4, p0, Ly3/a;->f:J

    iget p0, p0, Ly3/a;->c:I

    if-nez p0, :cond_8c

    const/4 p0, 0x1

    goto :goto_8d

    :cond_8c
    const/4 p0, 0x0

    :goto_8d
    move v6, p0

    sget-object p0, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {p0}, Lcom/oplus/log/Settings;->getSubType()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/oplus/log/HLog$2;

    invoke-direct {v8}, Lcom/oplus/log/HLog$2;-><init>()V

    invoke-static/range {v0 .. v8}, Lcom/oplus/log/HLog;->upload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V

    return-void
.end method

.method public static isDebug()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/log/HLog;->sIsDebug:Z

    return v0
.end method

.method public static isPrint()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/log/HLog;->mLogPrint:Z

    return v0
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

.method public static quit()V
    .registers 2

    const-string v0, "HLog"

    const-string v1, "HLog quit function.................."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz v1, :cond_21

    const-string v1, "HLog quit.................."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-virtual {v0}, Lcom/oplus/log/log/SimpleLog;->quitThread()V

    sget-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    invoke-virtual {v0}, Lcom/oplus/log/uploader/UploadManager;->quitThread()V

    sget-object v0, Lcom/oplus/log/HLog;->mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

    sget-object v1, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/log/collect/auto/CrashCollect;->destroy(Landroid/content/Context;)V

    :cond_21
    return-void
.end method

.method public static reportUpload(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;)V
    .registers 15

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v0, 0x36ee80

    sget-object v2, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v2, :cond_3c

    invoke-virtual {v2, p1}, Lcom/oplus/log/uploader/UploadManager;->setReporterListener(Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;)V

    new-instance p1, Lcom/oplus/log/uploader/UploadManager$ReportBody;

    sget-object v2, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v2}, Lcom/oplus/log/Settings;->getBusiness()Ljava/lang/String;

    move-result-object v2

    sub-long v6, v4, v0

    const/4 v8, 0x1

    sget-object v0, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getMdpName()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0}, Lcom/oplus/log/Settings;->getMdpSecret()Ljava/lang/String;

    move-result-object v11

    const-string v10, ""

    const-string v12, ""

    move-object v0, p1

    move-object v1, v2

    move-wide v2, v6

    move v6, v8

    move-object v7, v10

    move-object v8, v12

    move-object v10, p0

    invoke-direct/range {v0 .. v11}, Lcom/oplus/log/uploader/UploadManager$ReportBody;-><init>(Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForReport(Lcom/oplus/log/uploader/UploadManager$ReportBody;I)V

    :cond_3c
    return-void
.end method

.method public static reportUpload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;)V
    .registers 24

    move-object/from16 v0, p9

    if-nez v0, :cond_c

    const-string v0, "NearX-HLog"

    const-string v1, "ReportUploaderListener 为空"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    sget-object v1, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v1, :cond_37

    invoke-virtual {v1, v0}, Lcom/oplus/log/uploader/UploadManager;->setReporterListener(Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;)V

    new-instance v0, Lcom/oplus/log/uploader/UploadManager$ReportBody;

    sget-object v1, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getMdpName()Ljava/lang/String;

    move-result-object v11

    sget-object v1, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v1}, Lcom/oplus/log/Settings;->getMdpSecret()Ljava/lang/String;

    move-result-object v13

    move-object v2, v0

    move-object v3, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move-object v9, p1

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    invoke-direct/range {v2 .. v13}, Lcom/oplus/log/uploader/UploadManager$ReportBody;-><init>(Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForReport(Lcom/oplus/log/uploader/UploadManager$ReportBody;I)V

    :cond_37
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/log/HLog;->sIsDebug:Z

    return-void
.end method

.method public static setFlushCallback(Lcom/oplus/log/Settings$IFlushCallback;)V
    .registers 1

    sput-object p0, Lcom/oplus/log/HLog;->flushCallback:Lcom/oplus/log/Settings$IFlushCallback;

    return-void
.end method

.method public static setLogPrint(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/log/HLog;->mLogPrint:Z

    return-void
.end method

.method public static setNxLogConfig(Ljava/lang/String;Lcom/oplus/log/config/IDynConfig;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    if-eqz v0, :cond_f

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/oplus/log/HLog;->mSettings:Lcom/oplus/log/Settings;

    invoke-virtual {v0, p0}, Lcom/oplus/log/Settings;->setNxLogKey(Ljava/lang/String;)V

    :cond_f
    sget-object p0, Lcom/oplus/log/HLog;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz p0, :cond_16

    invoke-virtual {p0, p1}, Lcom/oplus/log/config/DynConfigManager;->setiDynConfig(Lcom/oplus/log/config/IDynConfig;)V

    :cond_16
    return-void
.end method

.method public static updateLogConfig(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v0, :cond_13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/oplus/log/HLog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    invoke-virtual {v0, p0}, Lcom/oplus/log/uploader/UploadManager;->effortConfig(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V
    .registers 20

    move-object/from16 v0, p8

    if-nez v0, :cond_b

    const-string v1, "NearX-HLog"

    const-string v2, "UploaderListener为空"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sget-object v1, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v1, :cond_27

    invoke-virtual {v1, v0}, Lcom/oplus/log/uploader/UploadManager;->setUploaderListener(Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V

    new-instance v0, Lcom/oplus/log/uploader/UploadManager$UploadBody;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object v9, p1

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/oplus/log/uploader/UploadManager$UploadBody;-><init>(Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oplus/log/HLog;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUpload(Lcom/oplus/log/uploader/UploadManager$UploadBody;J)V

    :cond_27
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    const-string v1, "NearX-HLog"

    if-nez v0, :cond_c

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-virtual {v0, v1, p0}, Lcom/oplus/log/log/BaseSimpleLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1}, Lcom/oplus/log/log/BaseSimpleLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string p2, "HLog未初始化-->"

    invoke-static {p2, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/log/log/BaseSimpleLog;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    const-string v1, "NearX-HLog"

    if-nez v0, :cond_c

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_c
    invoke-virtual {v0, v1, p0}, Lcom/oplus/log/log/BaseSimpleLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string v0, "HLog未初始化-->"

    invoke-static {v0, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1}, Lcom/oplus/log/log/BaseSimpleLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sget-object v0, Lcom/oplus/log/HLog;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-nez v0, :cond_a

    const-string p2, "HLog未初始化-->"

    invoke-static {p2, p1, p0}, Landroidx/constraintlayout/motion/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_a
    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/log/log/BaseSimpleLog;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_d
    return-void
.end method
