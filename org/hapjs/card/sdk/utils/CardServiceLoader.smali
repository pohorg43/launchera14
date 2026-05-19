.class public Lorg/hapjs/card/sdk/utils/CardServiceLoader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CARD_SERVICE_IMPL_CLASS:Ljava/lang/String; = "org.hapjs.card.impl.CardServiceImpl"

.field private static final CARD_SERVICE_WORKER_CLASS:Ljava/lang/String; = "org.hapjs.card.impl.CardServiceWorker"

.field private static final INSTANT_CARD_APP:Ljava/lang/String; = "com.nearme.instant.card"

.field private static final INSTANT_PLATFORM:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final TAG:Ljava/lang/String; = "CardServiceLoader"

.field private static lastCheckTime:J = 0x0L

.field private static legacyMode:Z = true

.field private static volatile sService:Lorg/hapjs/card/api/CardService;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkEngineUpdateAsync(Landroid/content/Context;Z)V
    .registers 7

    const-class v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    if-nez v1, :cond_27

    if-nez p1, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sget-wide v3, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->lastCheckTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long p1, v1, v3

    if-lez p1, :cond_27

    :cond_17
    new-instance p1, Lorg/hapjs/card/sdk/utils/CardServiceLoader$1;

    const-string v1, "CheckCEUpdate"

    invoke-direct {p1, v1, p0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sput-wide p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->lastCheckTime:J
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_29

    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static clearCardServiceClass()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    return-void
.end method

.method private static getCEClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/res/AssetManager;Z)Ljava/lang/ClassLoader;
    .registers 6

    const-string v0, "com.nearme.instant.card"

    invoke-static {p0, v0}, Lcom/nearme/instant/xcard/UtilsKt;->checkCardAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz p3, :cond_d

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->checkCardApk(Landroid/content/Context;)Z

    :cond_d
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->checkUpdate(Landroid/content/Context;)V

    const/4 p3, 0x0

    goto :goto_13

    :cond_12
    const/4 p3, 0x1

    :goto_13
    invoke-static {p0, p2, p3}, Lcom/nearme/instant/xcard/UtilsKt;->checkEngineApk(Landroid/content/Context;Landroid/content/res/AssetManager;Z)Z

    move-result p2

    if-nez p2, :cond_1b

    const/4 p0, 0x0

    return-object p0

    :cond_1b
    invoke-static {p0}, Lcom/nearme/instant/xcard/utils/PublicPrefUtil;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->optimizedDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p3}, Ljava/io/File;->mkdir()Z

    :cond_2f
    new-instance v0, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->is64Abi(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/nearme/instant/xcard/UtilsKt;->nativeLibraries(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/nearme/instant/androidx/card/AndroidXHapDexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static getSourcePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    if-eqz v0, :cond_1f

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lorg/hapjs/card/common/utils/CardConfigHelper;->getPlatform(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    const-string v0, "CardServiceLoader"

    const-string v1, "getSourcePath fail."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0

    :cond_1f
    invoke-static {p0}, Lcom/nearme/instant/xcard/UtilsKt;->sourceFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;)Lorg/hapjs/card/api/CardService;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->load(Landroid/content/Context;Z)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;Z)Lorg/hapjs/card/api/CardService;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->load(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    return-object p0
.end method

.method public static load(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;
    .registers 5

    sget-object v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    if-nez v0, :cond_25

    const-class v0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    if-nez v1, :cond_20

    sget-object v1, Lorg/hapjs/card/sdk/BuildConfig;->LITE_MODE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {p2}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->loadLocal(Lcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    sput-object p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    goto :goto_20

    :cond_1a
    invoke-static {p0, p1, p2}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->loadRemote(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;

    move-result-object p0

    sput-object p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    :cond_20
    :goto_20
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    :goto_25
    sget-object p0, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->sService:Lorg/hapjs/card/api/CardService;

    return-object p0
.end method

.method private static loadLocal(Lcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;
    .registers 4

    :try_start_0
    const-string v0, "org.hapjs.card.impl.CardServiceWorker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/hapjs/card/api/CardService;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "CardServiceLoader"

    const-string v2, "Fail to create local CardService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_1b

    const/4 v1, 0x7

    invoke-interface {p0, v1, v0}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadRemote(Landroid/content/Context;ZLcom/nearme/instant/xcard/ICardEngineCallback;)Lorg/hapjs/card/api/CardService;
    .registers 11

    const-string v0, "CardServiceLoader"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.nearme.instant.platform"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_11} :catch_7c

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_13
    const-string v5, "card/card.pak"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_26

    if-eqz v5, :cond_1d

    move v6, v3

    goto :goto_1e

    :cond_1d
    move v6, v4

    :goto_1e
    if-eqz v5, :cond_3c

    :try_start_20
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_3c

    :catch_24
    move-exception v5

    goto :goto_28

    :catch_26
    move-exception v5

    move v6, v4

    :goto_28
    const-string v7, "not found card engine "

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    :goto_3c
    if-nez v6, :cond_4c

    invoke-static {p0}, Lcom/nearme/instant/xcard/CardUtils;->getClassLoader(Landroid/content/Context;)Ljava/lang/ClassLoader;

    move-result-object p0

    sput-boolean v3, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    const-string p1, "not support independent card engine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "org.hapjs.card.impl.CardServiceImpl"

    goto :goto_5a

    :cond_4c
    const-class v5, Lorg/hapjs/card/sdk/utils/CardServiceLoader;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {p0, v5, v2, p1}, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->getCEClassLoader(Landroid/content/Context;Ljava/lang/ClassLoader;Landroid/content/res/AssetManager;Z)Ljava/lang/ClassLoader;

    move-result-object p0

    sput-boolean v4, Lorg/hapjs/card/sdk/utils/CardServiceLoader;->legacyMode:Z

    const-string p1, "org.hapjs.card.impl.CardServiceWorker"

    :goto_5a
    if-nez p0, :cond_63

    if-eqz p2, :cond_62

    const/4 p0, 0x3

    invoke-interface {p2, p0, v1}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_62
    return-object v1

    :cond_63
    :try_start_63
    invoke-static {p1, v3, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/hapjs/card/api/CardService;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_6e

    return-object p0

    :catch_6e
    move-exception p0

    const-string p1, "Fail to create remote CardService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_7b

    const/16 p1, 0x8

    invoke-interface {p2, p1, p0}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_7b
    return-object v1

    :catch_7c
    move-exception p0

    if-eqz p2, :cond_83

    const/4 p1, 0x6

    invoke-interface {p2, p1, p0}, Lcom/nearme/instant/xcard/ICardEngineCallback;->onInitFailure(ILjava/lang/Throwable;)V

    :cond_83
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v1
.end method
