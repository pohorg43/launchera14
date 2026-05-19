.class public Lcom/oplus/log/collect/ActivityLifeMonitor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private foregroundCount:I

.field private mCallBacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private mDataCollects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/log/collect/auto/IAutoCollect;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleLog:Lcom/oplus/log/log/SimpleLog;


# direct methods
.method public constructor <init>(Lcom/oplus/log/log/SimpleLog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->foregroundCount:I

    new-instance v0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;

    invoke-direct {v0, p0}, Lcom/oplus/log/collect/ActivityLifeMonitor$1;-><init>(Lcom/oplus/log/collect/ActivityLifeMonitor;)V

    iput-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mCallBacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object p1, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    return-void
.end method

.method public static synthetic access$008(Lcom/oplus/log/collect/ActivityLifeMonitor;)I
    .registers 3

    iget v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->foregroundCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->foregroundCount:I

    return v0
.end method

.method public static synthetic access$010(Lcom/oplus/log/collect/ActivityLifeMonitor;)I
    .registers 3

    iget v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->foregroundCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->foregroundCount:I

    return v0
.end method

.method public static synthetic access$100(Lcom/oplus/log/collect/ActivityLifeMonitor;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mDataCollects:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public destroy(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mCallBacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_1f

    :cond_12
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mCallBacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/oplus/log/log/ICollectLog;)V
    .registers 4

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iget-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mCallBacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mDataCollects:Ljava/util/List;

    new-instance v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;

    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, p2, p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    :cond_23
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iget-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mCallBacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mDataCollects:Ljava/util/List;

    new-instance v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect;

    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->mSimpleLog:Lcom/oplus/log/log/SimpleLog;

    invoke-direct {v0, p2, p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;-><init>(Lcom/oplus/log/log/ICollectLog;Lcom/oplus/log/log/SimpleLog;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    :goto_41
    return-void
.end method

.method public isForeground()Z
    .registers 1

    iget p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor;->foregroundCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
