.class public Lcom/oplus/log/nx/obus/StatisticsHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final HLOG_APP_ID:J = 0x1efb4L

.field private static final TAG:Ljava/lang/String; = "StatisticsHelper"

.field private static instances:Lcom/oplus/log/nx/obus/StatisticsHelper;


# instance fields
.field private context:Landroid/content/Context;

.field private openId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1234567890123"

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsHelper;->openId:Ljava/lang/String;

    return-void
.end method

.method public static getInstances()Lcom/oplus/log/nx/obus/StatisticsHelper;
    .registers 2

    const-class v0, Lcom/oplus/log/nx/obus/StatisticsHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/oplus/log/nx/obus/StatisticsHelper;->instances:Lcom/oplus/log/nx/obus/StatisticsHelper;

    if-nez v1, :cond_e

    new-instance v1, Lcom/oplus/log/nx/obus/StatisticsHelper;

    invoke-direct {v1}, Lcom/oplus/log/nx/obus/StatisticsHelper;-><init>()V

    sput-object v1, Lcom/oplus/log/nx/obus/StatisticsHelper;->instances:Lcom/oplus/log/nx/obus/StatisticsHelper;

    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    sget-object v0, Lcom/oplus/log/nx/obus/StatisticsHelper;->instances:Lcom/oplus/log/nx/obus/StatisticsHelper;

    return-object v0

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getReportMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    move-object p2, v1

    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/log/nx/obus/StatisticsHelper;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/oplus/log/util/AppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/log/nx/obus/StatisticsHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "traceId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appVersionCode"

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appName"

    invoke-virtual {v0, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "content"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "business"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsHelper;->openId:Ljava/lang/String;

    const-string p1, "openid"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    if-ne p4, p0, :cond_5e

    const-string p0, "ok"

    goto :goto_60

    :cond_5e
    const-string p0, "failure"

    :goto_60
    const-string p1, "status"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public autoPushLogFiles(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-string v0, "auto push log files to MDP platform !"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getReportMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsManager;->getInstances()Lcom/oplus/log/nx/obus/StatisticsManager;

    move-result-object v1

    const-wide/32 v2, 0x1efb4

    const-string v4, "event_log"

    const-string v5, "126901"

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/log/nx/obus/StatisticsManager;->reportStatistic(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public init(Lcom/oplus/log/nx/obus/StatisticsConfigInfo;)V
    .registers 3

    invoke-virtual {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getOpenId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsHelper;->openId:Ljava/lang/String;

    :cond_16
    return-void
.end method

.method public pullHLogConfig(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-string v0, "pull hlog config from MDP platform !"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getReportMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsManager;->getInstances()Lcom/oplus/log/nx/obus/StatisticsManager;

    move-result-object v1

    const-wide/32 v2, 0x1efb4

    const-string v4, "event_log"

    const-string v5, "126900"

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/log/nx/obus/StatisticsManager;->reportStatistic(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public pushLogFiles(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-string v0, "business push log files to MDP platform !"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getReportMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsManager;->getInstances()Lcom/oplus/log/nx/obus/StatisticsManager;

    move-result-object v1

    const-wide/32 v2, 0x1efb4

    const-string v4, "event_log"

    const-string v5, "126902"

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/log/nx/obus/StatisticsManager;->reportStatistic(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportCCEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    const-string v0, "report other event !"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getReportMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsManager;->getInstances()Lcom/oplus/log/nx/obus/StatisticsManager;

    move-result-object v1

    const-wide/32 v2, 0x1efb4

    const-string v4, "event_log"

    const-string v5, "126903"

    invoke-virtual/range {v1 .. v6}, Lcom/oplus/log/nx/obus/StatisticsManager;->reportStatistic(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportOtherEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p3, "report other event !"

    :cond_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/log/nx/obus/StatisticsHelper;->getReportMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lcom/oplus/log/nx/obus/StatisticsManager;->getInstances()Lcom/oplus/log/nx/obus/StatisticsManager;

    move-result-object v0

    const-wide/32 v1, 0x1efb4

    const-string v3, "event_log"

    const-string v4, "126904"

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/log/nx/obus/StatisticsManager;->reportStatistic(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
