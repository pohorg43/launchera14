.class public final Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/nx/obus/StatisticsConfigInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private appContext:Landroid/content/Context;

.field private buildNum:Ljava/lang/String;

.field private channelId:Ljava/lang/String;

.field private enInitCC:Z

.field private isTest:Z

.field private logLevel:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

.field private mAreaCode:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

.field private mDeviceId:Ljava/lang/String;

.field private mEnableTrack:Z

.field private mMoudleId:Ljava/lang/String;

.field private mOpenId:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mRegion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mRegion:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mProductId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->logLevel:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->enInitCC:Z

    return p0
.end method

.method public static synthetic access$1200(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mOpenId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mMoudleId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mAreaCode:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->isTest:Z

    return p0
.end method

.method public static synthetic access$500(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mEnableTrack:Z

    return p0
.end method

.method public static synthetic access$600(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->buildNum:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public ApplicationContext(Landroid/content/Context;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->appContext:Landroid/content/Context;

    goto :goto_13

    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->appContext:Landroid/content/Context;

    :goto_13
    return-object p0
.end method

.method public OpenId(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mOpenId:Ljava/lang/String;

    return-object p0
.end method

.method public areaCode(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mAreaCode:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$AreaCodeInfo;

    return-object p0
.end method

.method public build()Lcom/oplus/log/nx/obus/StatisticsConfigInfo;
    .registers 2

    new-instance v0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;

    invoke-direct {v0, p0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;-><init>(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;)V

    invoke-virtual {v0}, Lcom/oplus/log/nx/obus/StatisticsConfigInfo;->getAppContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object v0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "hlog: AppContext is not initialization"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public buildeNum(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->buildNum:Ljava/lang/String;

    return-object p0
.end method

.method public channelId(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->channelId:Ljava/lang/String;

    return-object p0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public enableInitCC(Z)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->enInitCC:Z

    return-object p0
.end method

.method public enableTrack(Z)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mEnableTrack:Z

    return-object p0
.end method

.method public isTest(Z)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->isTest:Z

    return-object p0
.end method

.method public logLevel(Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->logLevel:Lcom/oplus/log/nx/obus/StatisticsConfigInfo$LogLevel;

    return-object p0
.end method

.method public moudleId(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mMoudleId:Ljava/lang/String;

    return-object p0
.end method

.method public productId(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mProductId:Ljava/lang/String;

    return-object p0
.end method

.method public region(Ljava/lang/String;)Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/obus/StatisticsConfigInfo$Builder;->mRegion:Ljava/lang/String;

    return-object p0
.end method
