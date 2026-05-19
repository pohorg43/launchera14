.class public Lcom/oplus/log/collect/auto/NetworkChangeCollect;
.super Landroid/content/BroadcastReceiver;
.source ""

# interfaces
.implements Lcom/oplus/log/collect/auto/IDataCollect;
.implements Lcom/oplus/log/IBaseLog;


# static fields
.field public static final NETWORK_TAG:Ljava/lang/String; = "Network_Info"


# instance fields
.field public dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

.field private filterFirst:Z

.field private mAppender:Lcom/oplus/log/log/ICollectLog;

.field private mSimpleLog:Lcom/oplus/log/log/SimpleLog;


# direct methods
.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;)V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->filterFirst:Z

    iput-object p1, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/config/DynConfigManager;)V
    .registers 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->filterFirst:Z

    iput-object p1, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    iput-object p2, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/config/DynConfigManager;Lcom/oplus/log/log/SimpleLog;)V
    .registers 5

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->filterFirst:Z

    iput-object p1, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    iput-object p2, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    iput-object p3, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/log/collect/auto/NetworkChangeCollect;)Lcom/oplus/log/log/ICollectLog;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    return-object p0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public getLogType()I
    .registers 1

    const/16 p0, 0x67

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    iget-object p2, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz p2, :cond_1e

    new-instance p2, Lcom/oplus/log/collect/LoggingEvent;

    invoke-static {}, Lcom/oplus/log/util/BaseInfoUtil;->getNetWorkInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "Network_Info"

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    iget-object v0, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->getLogType()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_2b

    :cond_1e
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/oplus/log/collect/auto/NetworkChangeCollect$1;

    invoke-direct {v0, p0}, Lcom/oplus/log/collect/auto/NetworkChangeCollect$1;-><init>(Lcom/oplus/log/collect/auto/NetworkChangeCollect;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :goto_2b
    invoke-static {p1}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->dynConfigManager:Lcom/oplus/log/config/DynConfigManager;

    if-eqz p1, :cond_3c

    iget-boolean p2, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->filterFirst:Z

    if-eqz p2, :cond_3c

    invoke-virtual {p1}, Lcom/oplus/log/config/DynConfigManager;->isCheckConfig()V

    :cond_3c
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->filterFirst:Z

    return-void
.end method
