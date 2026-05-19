.class public final Lcom/oplus/log/Logger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/Logger$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NearX-HLog_Logger"

.field private static final encryptIV:[I

.field private static mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field private static mLogPrint:Z

.field private static mLogProcessor:Lcom/oplus/log/log/LogProcessor;

.field private static sIsDebug:Z


# instance fields
.field private mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

.field private mCollectLog:Lcom/oplus/log/log/ICollectLog;

.field private mConfig:Lcom/oplus/log/core/LoganConfig;

.field private mContext:Landroid/content/Context;

.field private mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

.field private mLogAppender:Lcom/oplus/log/appender/LogAppender;

.field private mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

.field private mSimpleLog:Lcom/oplus/log/log/SimpleLog;

.field private mUploadManager:Lcom/oplus/log/uploader/UploadManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/oplus/log/Logger;->encryptIV:[I

    return-void

    :array_a
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

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/log/Logger$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/log/Logger;-><init>()V

    return-void
.end method

.method private closeCollects()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/Logger;->mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->destroy(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/log/Logger;->mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    :cond_c
    iget-object v0, p0, Lcom/oplus/log/Logger;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/oplus/log/collect/ActivityLifeMonitor;->destroy(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/log/Logger;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    :cond_17
    iput-object v1, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initCollects()V
    .registers 5

    new-instance v0, Lcom/oplus/log/collect/ActivityLifeMonitor;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1}, Lcom/oplus/log/collect/ActivityLifeMonitor;-><init>(Lcom/oplus/log/log/SimpleLog;)V

    iput-object v0, p0, Lcom/oplus/log/Logger;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/log/Logger;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/log/collect/ActivityLifeMonitor;->init(Landroid/content/Context;Lcom/oplus/log/log/ICollectLog;)V

    iget-object v0, p0, Lcom/oplus/log/Logger;->mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

    if-nez v0, :cond_24

    new-instance v0, Lcom/oplus/log/collect/auto/CrashCollect;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    iget-object v2, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1, v2}, Lcom/oplus/log/collect/auto/CrashCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V

    iput-object v0, p0, Lcom/oplus/log/Logger;->mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/log/collect/auto/CrashCollect;->init(Landroid/content/Context;)V

    :cond_24
    new-instance v0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    sget-object v2, Lcom/oplus/log/Logger;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iget-object v3, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/log/SimpleLog;)V

    iput-object v0, p0, Lcom/oplus/log/Logger;->mNetworkChangeMonitor:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/oplus/log/collect/auto/SystemInfoCollect;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    iget-object v2, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, v1, v2}, Lcom/oplus/log/collect/auto/SystemInfoCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V

    iget-object p0, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oplus/log/collect/auto/SystemInfoCollect;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static isDebug()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/log/Logger;->sIsDebug:Z

    return v0
.end method

.method public static isPrint()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/log/Logger;->mLogPrint:Z

    return v0
.end method

.method public static newBuilder()Lcom/oplus/log/Logger$Builder;
    .registers 1

    new-instance v0, Lcom/oplus/log/Logger$Builder;

    invoke-direct {v0}, Lcom/oplus/log/Logger$Builder;-><init>()V

    return-object v0
.end method

.method public static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/log/Logger;->sIsDebug:Z

    return-void
.end method

.method public static setLogPrint(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/log/Logger;->mLogPrint:Z

    return-void
.end method


# virtual methods
.method public checkUpload(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUploadChecker(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V

    :cond_7
    return-void
.end method

.method public checkUploadForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUploadCheckerForCdn(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V

    :cond_7
    return-void
.end method

.method public deleteLogFile()V
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/log/Logger;->getAllFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_14

    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_14
    return-void
.end method

.method public exit()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    iput-object v0, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    iput-object v0, p0, Lcom/oplus/log/Logger;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    invoke-direct {p0}, Lcom/oplus/log/Logger;->closeCollects()V

    iget-object v1, p0, Lcom/oplus/log/Logger;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/oplus/log/appender/LogAppender;->close()V

    :cond_11
    iput-object v0, p0, Lcom/oplus/log/Logger;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    return-void
.end method

.method public flush(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/Logger;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    if-eqz p0, :cond_d

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/oplus/log/appender/LogAppender;->flushSync()V

    goto :goto_d

    :cond_a
    invoke-virtual {p0}, Lcom/oplus/log/appender/LogAppender;->flush()V

    :cond_d
    :goto_d
    return-void
.end method

.method public getAllFiles()[Ljava/io/File;
    .registers 2

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/oplus/log/Logger;->mConfig:Lcom/oplus/log/core/LoganConfig;

    iget-object p0, p0, Lcom/oplus/log/core/LoganConfig;->mPathPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_1b

    :cond_16
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSimpleLog()Lcom/oplus/log/ISimpleLog;
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz p0, :cond_5

    goto :goto_b

    :cond_5
    new-instance p0, Lcom/oplus/log/log/SimpleLog;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/log/log/SimpleLog;-><init>(Lcom/oplus/log/appender/ILogAppender;)V

    :goto_b
    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/oplus/log/Settings;)V
    .registers 11

    const-string v0, "NearX-HLog_Logger"

    if-nez p2, :cond_a

    const-string p0, "init fail,LogConfig is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/log/util/AppUtil;->setAppContext(Landroid/content/Context;)V

    :cond_15
    new-instance p1, Lcom/oplus/log/core/LoganConfig$Builder;

    invoke-direct {p1}, Lcom/oplus/log/core/LoganConfig$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/log/core/LoganConfig$Builder;->setCachePath(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/log/core/LoganConfig$Builder;->setPath(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getFileExpireDays()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/oplus/log/core/LoganConfig$Builder;->setDay(J)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getNamePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/log/core/LoganConfig$Builder;->setFileNamePrefix(Ljava/lang/String;)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [[I

    sget-object v3, Lcom/oplus/log/Logger;->encryptIV:[I

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/oplus/log/util/String2IntUtil;->tostring([[I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/log/core/LoganConfig$Builder;->setEncryptKey16([B)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    new-array v1, v1, [[I

    aput-object v3, v1, v4

    invoke-static {v1}, Lcom/oplus/log/util/String2IntUtil;->tostring([[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oplus/log/core/LoganConfig$Builder;->setEncryptIV16([B)Lcom/oplus/log/core/LoganConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/log/core/LoganConfig$Builder;->build()Lcom/oplus/log/core/LoganConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/Logger;->mConfig:Lcom/oplus/log/core/LoganConfig;

    new-instance v1, Lcom/oplus/log/appender/LogAppender;

    invoke-direct {v1, p1}, Lcom/oplus/log/appender/LogAppender;-><init>(Lcom/oplus/log/core/LoganConfig;)V

    iput-object v1, p0, Lcom/oplus/log/Logger;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    new-instance p1, Lcom/oplus/log/config/DynConfigManager;

    invoke-direct {p1}, Lcom/oplus/log/config/DynConfigManager;-><init>()V

    sput-object p1, Lcom/oplus/log/Logger;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getConsoleLogLevel()I

    move-result v1

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getFileLogLevel()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/oplus/log/config/DynConfigManager;->createDefaultConfig(II)V

    new-instance p1, Lcom/oplus/log/log/CollectLog;

    iget-object v1, p0, Lcom/oplus/log/Logger;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    invoke-direct {p1, v1}, Lcom/oplus/log/log/CollectLog;-><init>(Lcom/oplus/log/appender/ILogAppender;)V

    iput-object p1, p0, Lcom/oplus/log/Logger;->mCollectLog:Lcom/oplus/log/log/ICollectLog;

    new-instance v1, Lcom/oplus/log/log/SimpleLog;

    iget-object v3, p0, Lcom/oplus/log/Logger;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    sget-object v4, Lcom/oplus/log/Logger;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iget-object v5, p0, Lcom/oplus/log/Logger;->mActivityMonitor:Lcom/oplus/log/collect/ActivityLifeMonitor;

    sget-object v6, Lcom/oplus/log/Logger;->mLogProcessor:Lcom/oplus/log/log/LogProcessor;

    move-object v7, p1

    check-cast v7, Lcom/oplus/log/log/CollectLog;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/oplus/log/log/SimpleLog;-><init>(Lcom/oplus/log/appender/ILogAppender;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/collect/ActivityLifeMonitor;Lcom/oplus/log/log/LogProcessor;Lcom/oplus/log/log/CollectLog;)V

    iput-object v1, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getFileLogLevel()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/oplus/log/log/BaseSimpleLog;->setFileLogLevel(I)V

    iget-object p1, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-virtual {p2}, Lcom/oplus/log/Settings;->getConsoleLogLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oplus/log/log/BaseSimpleLog;->setConsoleLogLevel(I)V

    new-instance p1, Lcom/oplus/log/uploader/UploadManager;

    sget-object v1, Lcom/oplus/log/Logger;->mDynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iget-object v2, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {p1, p2, v1, v2}, Lcom/oplus/log/uploader/UploadManager;-><init>(Lcom/oplus/log/Settings;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/log/SimpleLog;)V

    iput-object p1, p0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    iget-object p2, p0, Lcom/oplus/log/Logger;->mLogAppender:Lcom/oplus/log/appender/LogAppender;

    invoke-virtual {p1, p2}, Lcom/oplus/log/uploader/UploadManager;->setIAppender(Lcom/oplus/log/appender/ILogAppender;)V

    iget-object p1, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    const-string p2, "sdk version : 4.1.0.2-4"

    invoke-virtual {p1, v0, p2}, Lcom/oplus/log/log/BaseSimpleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/log/Logger;->initCollects()V

    return-void
.end method

.method public quit()V
    .registers 3

    const-string v0, "HLog"

    const-string v1, "HLog quit function.................."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz v1, :cond_21

    const-string v1, "HLog quit.................."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oplus/log/Logger;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-virtual {v0}, Lcom/oplus/log/log/SimpleLog;->quitThread()V

    iget-object v0, p0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    invoke-virtual {v0}, Lcom/oplus/log/uploader/UploadManager;->quitThread()V

    iget-object v0, p0, Lcom/oplus/log/Logger;->mCrashHandler:Lcom/oplus/log/collect/auto/CrashCollect;

    iget-object p0, p0, Lcom/oplus/log/Logger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/oplus/log/collect/auto/CrashCollect;->destroy(Landroid/content/Context;)V

    :cond_21
    return-void
.end method

.method public reportUpload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26

    move-object v0, p0

    iget-object v1, v0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v1, :cond_22

    new-instance v1, Lcom/oplus/log/uploader/UploadManager$ReportBody;

    move-object v2, v1

    move-object v3, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v2 .. v13}, Lcom/oplus/log/uploader/UploadManager$ReportBody;-><init>(Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForReport(Lcom/oplus/log/uploader/UploadManager$ReportBody;I)V

    :cond_22
    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .registers 2

    sput-object p1, Lcom/oplus/log/util/AppUtil;->sProcessName:Ljava/lang/String;

    return-void
.end method

.method public setReporterListener(Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/log/uploader/UploadManager;->setReporterListener(Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;)V

    :cond_7
    return-void
.end method

.method public setUploaderListener(Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/log/uploader/UploadManager;->setUploaderListener(Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V

    :cond_7
    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;)V
    .registers 20

    move-object v0, p0

    iget-object v1, v0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    if-eqz v1, :cond_1b

    new-instance v1, Lcom/oplus/log/uploader/UploadManager$UploadBody;

    move-object v2, v1

    move-object v3, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object v9, p2

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/oplus/log/uploader/UploadManager$UploadBody;-><init>(Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oplus/log/Logger;->mUploadManager:Lcom/oplus/log/uploader/UploadManager;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/log/uploader/UploadManager;->sendMessageForUpload(Lcom/oplus/log/uploader/UploadManager$UploadBody;J)V

    :cond_1b
    return-void
.end method
