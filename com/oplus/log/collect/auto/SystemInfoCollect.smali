.class public Lcom/oplus/log/collect/auto/SystemInfoCollect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/collect/auto/IDataCollect;
.implements Lcom/oplus/log/IBaseLog;


# static fields
.field public static final APP_VERSION:Ljava/lang/String; = "App_version"

.field public static final APP_VERSIONCODE:Ljava/lang/String; = "App_versioncode"

.field public static final BASEINFO_TAG:Ljava/lang/String; = "BASE_INFO"

.field public static final BRAND_OS_VERSION:Ljava/lang/String; = "BrandOS_version"

.field public static final IMEI:Ljava/lang/String; = "IMEI"

.field public static final INTERNAL_FREESPACE:Ljava/lang/String; = "InternalFreeSpace"

.field public static final MODEL:Ljava/lang/String; = "Model"

.field public static final RAM_SIZE:Ljava/lang/String; = "RAMSize"

.field public static final ROM_VERSION:Ljava/lang/String; = "ROM_version"

.field public static final SDK_VERSION:Ljava/lang/String; = "SDK_version"


# instance fields
.field private mAppender:Lcom/oplus/log/log/ICollectLog;

.field private mSimpleLog:Lcom/oplus/log/log/SimpleLog;


# direct methods
.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/collect/auto/SystemInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/collect/auto/SystemInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    iput-object p2, p0, Lcom/oplus/log/collect/auto/SystemInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    return-void
.end method

.method private appendBaseInfo(Landroid/content/Context;)V
    .registers 9

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "Model"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/log/util/DeviceUtil;->getMobileRomVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrandOS_version"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "SDK_version"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "ROM_version"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/log/util/DeviceMemoryUtil;->getSysMemoryInfo()Ljava/util/Map;

    move-result-object v0

    const-string v1, "MemTotal:"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RAMSize"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/oplus/log/util/BaseInfoUtil;->getInternalFreeSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InternalFreeSpace"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/oplus/log/util/AppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "App_version"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/oplus/log/util/AppUtil;->getAppVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "App_versioncode"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/oplus/log/collect/auto/SystemInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    if-eqz p1, :cond_82

    new-instance p1, Lcom/oplus/log/collect/LoggingEvent;

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v1, "BASE_INFO"

    const-string v2, "record_base_info"

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    iget-object v0, p0, Lcom/oplus/log/collect/auto/SystemInfoCollect;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/SystemInfoCollect;->getLogType()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_82

    :cond_79
    iget-object v0, p0, Lcom/oplus/log/collect/auto/SystemInfoCollect;->mAppender:Lcom/oplus/log/log/ICollectLog;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/SystemInfoCollect;->getLogType()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :cond_82
    :goto_82
    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public getLogType()I
    .registers 1

    const/16 p0, 0x68

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/log/collect/auto/SystemInfoCollect;->appendBaseInfo(Landroid/content/Context;)V

    return-void
.end method
