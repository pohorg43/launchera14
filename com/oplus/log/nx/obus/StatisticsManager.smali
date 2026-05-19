.class public Lcom/oplus/log/nx/obus/StatisticsManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/nx/obus/StatisticsManager$CrashListener;
    }
.end annotation


# static fields
.field private static final STATISTICS_MODULE_ID:J = 0x1efb4L

.field private static final TAG:Ljava/lang/String; = "StatisticsManager"

.field private static final appID:I = 0x1efb4

.field private static final appKey:[I

.field private static final appSecret:[I

.field private static instances:Lcom/oplus/log/nx/obus/StatisticsManager;


# instance fields
.field private final crashListener:Lcom/oplus/nearx/track/IExceptionProcess;

.field private isImplements:Z

.field private mContext:Landroid/content/Context;

.field private mExceptionCollector:Lcom/oplus/nearx/track/TrackExceptionCollector;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/oplus/log/nx/obus/StatisticsManager;->appKey:[I

    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/oplus/log/nx/obus/StatisticsManager;->appSecret:[I

    return-void

    :array_12
    .array-data 4
        0x23
        0x20
        0x22
        0x23
    .end array-data

    :array_1e
    .array-data 4
        0x49
        0x5a
        0x54
        0x27
        0x43
        0x44
        0x27
        0x5b
        0x59
        0x67
        0x63
        0x59
        0x44
        0x50
        0x7b
        0x49
        0x58
        0x29
        0x57
        0x5d
        0x20
        0x57
        0x65
        0x66
        0x27
        0x5d
        0x22
        0x7b
        0x26
        0x5d
        0x75
        0x23
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/log/nx/obus/StatisticsManager$CrashListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/log/nx/obus/StatisticsManager$CrashListener;-><init>(Lcom/oplus/log/nx/obus/StatisticsManager$1;)V

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->crashListener:Lcom/oplus/nearx/track/IExceptionProcess;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->isImplements:Z

    return-void
.end method

.method public static getInstances()Lcom/oplus/log/nx/obus/StatisticsManager;
    .registers 2

    const-class v0, Lcom/oplus/log/nx/obus/StatisticsManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/log/nx/obus/StatisticsManager;->instances:Lcom/oplus/log/nx/obus/StatisticsManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/oplus/log/nx/obus/StatisticsManager;

    invoke-direct {v1}, Lcom/oplus/log/nx/obus/StatisticsManager;-><init>()V

    sput-object v1, Lcom/oplus/log/nx/obus/StatisticsManager;->instances:Lcom/oplus/log/nx/obus/StatisticsManager;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/oplus/log/nx/obus/StatisticsManager;->instances:Lcom/oplus/log/nx/obus/StatisticsManager;

    return-object v0

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static getMessageFromThrowable(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public init(Lcom/oplus/log/nx/obus/StatisticsConfigInfo;)V
    .registers 10

    const-string v0, "a.尝试使用统计上报库v3[com.oplus.nearx:track]失败:数据未成功上报，库未接入"

    invoke-virtual {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StatisticsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oplus/log/nx/obus/StatisticsHelper;->init(Lcom/oplus/log/nx/obus/StatisticsConfigInfo;)V

    const/4 v1, 0x0

    :try_start_2a
    invoke-virtual {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getRegion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->isOversea()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->isIndia()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v3, "IN"

    goto :goto_48

    :cond_43
    const-string v3, "SG"

    goto :goto_48

    :cond_46
    const-string v3, "CN"

    :cond_48
    :goto_48
    new-instance v4, Lcom/oplus/nearx/track/TrackApi$StaticConfig$Builder;

    invoke-direct {v4, v3}, Lcom/oplus/nearx/track/TrackApi$StaticConfig$Builder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/oplus/nearx/track/TrackApi$StaticConfig$Builder;->defaultToDeviceProtectedStorage(Z)Lcom/oplus/nearx/track/TrackApi$StaticConfig$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/nearx/track/TrackApi$StaticConfig$Builder;->build()Lcom/oplus/nearx/track/TrackApi$StaticConfig;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getAppContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Application;

    invoke-static {v5, v4}, Lcom/oplus/nearx/track/TrackApi;->staticInitIfUninitialized(Landroid/app/Application;Lcom/oplus/nearx/track/TrackApi$StaticConfig;)V

    new-instance v4, Lcom/oplus/nearx/track/TrackApi$Config$Builder;

    new-array v5, v3, [[I

    sget-object v6, Lcom/oplus/log/nx/obus/StatisticsManager;->appKey:[I

    aput-object v6, v5, v1

    invoke-static {v5}, Lcom/oplus/log/nx/encry/DecryptUtils;->tostring([[I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [[I

    sget-object v7, Lcom/oplus/log/nx/obus/StatisticsManager;->appSecret:[I

    aput-object v7, v6, v1

    invoke-static {v6}, Lcom/oplus/log/nx/encry/DecryptUtils;->tostring([[I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/oplus/nearx/track/TrackApi$Config$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/oplus/nearx/track/TrackApi$Config$Builder;->build()Lcom/oplus/nearx/track/TrackApi$Config;

    move-result-object v4

    const-wide/32 v5, 0x1efb4

    invoke-static {v5, v6}, Lcom/oplus/nearx/track/TrackApi;->getInstance(J)Lcom/oplus/nearx/track/TrackApi;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/oplus/nearx/track/TrackApi;->init(Lcom/oplus/nearx/track/TrackApi$Config;)Z

    invoke-virtual {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getAppContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5, v6}, Lcom/oplus/nearx/track/TrackExceptionCollector;->get(Landroid/content/Context;J)Lcom/oplus/nearx/track/TrackExceptionCollector;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->mExceptionCollector:Lcom/oplus/nearx/track/TrackExceptionCollector;

    iget-object v4, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->crashListener:Lcom/oplus/nearx/track/IExceptionProcess;

    invoke-virtual {p1, v4}, Lcom/oplus/nearx/track/TrackExceptionCollector;->setExceptionProcess(Lcom/oplus/nearx/track/IExceptionProcess;)V

    iput-boolean v3, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->isImplements:Z
    :try_end_97
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2a .. :try_end_97} :catch_9f
    .catchall {:try_start_2a .. :try_end_97} :catchall_98

    goto :goto_a1

    :catchall_98
    move-exception p0

    :try_start_99
    const-string p1, "[nearx:track]数据初始化失败"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a1

    :catch_9f
    iput-boolean v1, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->isImplements:Z
    :try_end_a1
    .catchall {:try_start_99 .. :try_end_a1} :catchall_a5

    :goto_a1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_a5
    move-exception p0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method public reportStatistic(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "a.尝试使用统计上报库v3[com.oplus.nearx:track]失败:数据未成功上报，库未接入"

    const-string v1, "StatisticsManager"

    :try_start_4
    iget-boolean p0, p0, Lcom/oplus/log/nx/obus/StatisticsManager;->isImplements:Z

    if-nez p0, :cond_c

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    invoke-static {p1, p2}, Lcom/oplus/nearx/track/TrackApi;->getInstance(J)Lcom/oplus/nearx/track/TrackApi;

    move-result-object p0

    invoke-virtual {p0, p3, p4, p5}, Lcom/oplus/nearx/track/TrackApi;->track(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_13
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_4 .. :try_end_13} :catch_1b
    .catchall {:try_start_4 .. :try_end_13} :catchall_14

    goto :goto_1f

    :catchall_14
    move-exception p0

    const-string p1, "[nearx:track]数据上报失败"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_1b
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void
.end method
