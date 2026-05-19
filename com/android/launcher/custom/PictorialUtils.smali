.class public Lcom/android/launcher/custom/PictorialUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final GLANCE_INVALID_REGION_MARK:[Ljava/lang/String;

.field private static final GL_PIC_PACKAGE_NAME:Ljava/lang/String; = "com.glance.internet"

.field private static final TAG:Ljava/lang/String; = "RmPictorialUtils"

.field private static volatile sInstance:Lcom/android/launcher/custom/PictorialUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "LATAM"

    const-string v1, "BR"

    const-string v2, "MX"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/custom/PictorialUtils;->GLANCE_INVALID_REGION_MARK:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/custom/PictorialUtils;->lambda$uninstallPictorialApp$1(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/custom/PictorialUtils;->lambda$uninstallPictorialApp$0(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher/custom/PictorialUtils;
    .registers 2

    sget-object v0, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/custom/PictorialUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/custom/PictorialUtils;

    invoke-direct {v1}, Lcom/android/launcher/custom/PictorialUtils;-><init>()V

    sput-object v1, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher/custom/PictorialUtils;->sInstance:Lcom/android/launcher/custom/PictorialUtils;

    return-object v0
.end method

.method private isPictorialAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return p0

    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_14} :catch_15

    const/4 p0, 0x1

    :catch_15
    return p0
.end method

.method private static synthetic lambda$uninstallPictorialApp$0(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uninstallPictorialApp msg :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",i is"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RmPictorialUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$uninstallPictorialApp$1(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    const-string v0, "com.glance.internet"

    sget-object v1, Lcom/android/launcher/custom/a;->a:Lcom/android/launcher/custom/a;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/compat/content/pm/PackageManagerNative;->deletePackage(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;I)V
    :try_end_8
    .catch Lcom/oplus/compat/utils/util/UnSupportedApiVersionException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_21

    :catch_9
    move-exception p0

    const-string/jumbo v0, "uninstallPictorialApp error,msg is:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RmPictorialUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method private uninstallPictorialApp(Landroid/content/Context;)V
    .registers 3

    const-string v0, "com.glance.internet"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/custom/PictorialUtils;->isPictorialAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "RmPictorialUtils"

    const-string/jumbo v0, "uninstallPictorialApp start uninstall rm gl pictorial"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lv/a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lv/a;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherModel;->runOnWorkerThread(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public unInstallRmGlPictorial(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/launcher/custom/PictorialUtils;->GLANCE_INVALID_REGION_MARK:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getOtherPictorialName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.glance.internet"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-direct {p0, p1}, Lcom/android/launcher/custom/PictorialUtils;->uninstallPictorialApp(Landroid/content/Context;)V

    :cond_2b
    return-void
.end method
