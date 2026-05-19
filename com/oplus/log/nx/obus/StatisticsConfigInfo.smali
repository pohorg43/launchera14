.class public Lcom/oplus/log/nx/obus/StatisticsConfigInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;,
        Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;,
        Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;
    }
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final areaCode:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

.field private final buildNum:Ljava/lang/String;

.field private final channelId:Ljava/lang/String;

.field private final deviceId:Ljava/lang/String;

.field private final enInitCC:Z

.field private final enableTrack:Z

.field private final isTest:Z

.field private final logLevel:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

.field private final moudleId:Ljava/lang/String;

.field private final openid:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final region:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$000(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->region:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$100(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->productId:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$200(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->moudleId:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$300(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->areaCode:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$400(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->isTest:Z

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$500(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->enableTrack:Z

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$600(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->appContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$700(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->channelId:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$800(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->buildNum:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$900(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->deviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$1000(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->logLevel:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$1100(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->enInitCC:Z

    invoke-static {p1}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->access$1200(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->openid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public getAreaCode()Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->areaCode:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    return-object p0
.end method

.method public getBuildNum()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->buildNum:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLogLevel()Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->logLevel:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    return-object p0
.end method

.method public getMoudleId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->moudleId:Ljava/lang/String;

    return-object p0
.end method

.method public getOpenId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->openid:Ljava/lang/String;

    return-object p0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->productId:Ljava/lang/String;

    return-object p0
.end method

.method public getRegion()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->region:Ljava/lang/String;

    return-object p0
.end method

.method public isEnInitCC()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->enInitCC:Z

    return p0
.end method

.method public isEnableTrack()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->enableTrack:Z

    return p0
.end method

.method public isTest()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->isTest:Z

    return p0
.end method
