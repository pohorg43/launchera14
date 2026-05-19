.class public final Lpantanal/app/seedling/SeedlingCardClient;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

.field private static final TAG:Ljava/lang/String; = "SeedCardClient"

.field private static configuration:Lpantanal/app/bean/Configuration;

.field private static context:Landroid/content/Context;

.field private static final engineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lpantanal/app/seedling/SeedlingEngine$InitSuccessCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static entrance:Lpantanal/app/bean/Entrance;

.field private static final entranceActivityStarter$delegate:Lh4/f;

.field private static final initCallback:Lpantanal/app/seedling/SeedlingCardClient$initCallback$1;

.field private static volatile isSeedlingSdkInitSuccess:Z

.field private static final seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/seedling/sdk/manager/ISeedlingManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final seedlingStatusMonitor$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/seedling/SeedlingCardClient;

    invoke-direct {v0}, Lpantanal/app/seedling/SeedlingCardClient;-><init>()V

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

    sget-object v0, Lpantanal/app/bean/Entrance;->UNKNOWN:Lpantanal/app/bean/Entrance;

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->engineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    sget-object v1, Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient$seedlingStatusMonitor$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    sput-object v1, Lpantanal/app/seedling/SeedlingCardClient;->seedlingStatusMonitor$delegate:Lh4/f;

    sget-object v1, Lpantanal/app/seedling/SeedlingCardClient$entranceActivityStarter$2;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient$entranceActivityStarter$2;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->entranceActivityStarter$delegate:Lh4/f;

    new-instance v0, Lpantanal/app/seedling/SeedlingCardClient$initCallback$1;

    invoke-direct {v0}, Lpantanal/app/seedling/SeedlingCardClient$initCallback$1;-><init>()V

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->initCallback:Lpantanal/app/seedling/SeedlingCardClient$initCallback$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getConfiguration$p()Lpantanal/app/bean/Configuration;
    .registers 1

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->configuration:Lpantanal/app/bean/Configuration;

    return-object v0
.end method

.method public static final synthetic access$getEngineCallbacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->engineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic access$getEntrance$p()Lpantanal/app/bean/Entrance;
    .registers 1

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->entrance:Lpantanal/app/bean/Entrance;

    return-object v0
.end method

.method public static final synthetic access$getSeedlingManagerMap$p()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static final synthetic access$handleSDKInitFailed(Lpantanal/app/seedling/SeedlingCardClient;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/seedling/SeedlingCardClient;->handleSDKInitFailed()V

    return-void
.end method

.method public static final synthetic access$setSeedlingSdkInitSuccess$p(Z)V
    .registers 1

    sput-boolean p0, Lpantanal/app/seedling/SeedlingCardClient;->isSeedlingSdkInitSuccess:Z

    return-void
.end method

.method private final handleSDKInitFailed()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedCardClient"

    const-string v2, "handleSDKInitFailed,to do"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method private final initSeedlingSdkAsync(Lcom/oplus/seedling/sdk/entity/EngineType;Lpantanal/app/bean/Configuration;)V
    .registers 15

    sget-object v11, Ly8/c;->a:Ly8/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin initSeedlingSdkAsync,engine Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedCardClient"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setHasUsOrContainerCard(Z)V

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lpantanal/app/seedling/SeedlingStatusMonitor;->getHasInit()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initSeedlingSdkAsync,engine Type = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",already inited."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedCardClient"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_5a
    sget-object p1, Lpantanal/app/seedling/SeedlingCardClient;->context:Landroid/content/Context;

    if-nez p1, :cond_70

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedCardClient"

    const-string v2, "initSeedlingSdkAsync failed,because context is null."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_70
    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setHasInit(Z)V

    invoke-static {p2}, Lpantanal/app/seedling/SeedlingCardClientKt;->buildSeedlingInitConfig(Lpantanal/app/bean/Configuration;)Lcom/oplus/seedling/sdk/SeedlingInitConfig;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "begin initSeedlingSdkAsync,mark seedlingStatusMonitor.hasInit = true,seedlingConfig = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SeedCardClient"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    sget-object p2, Lpantanal/app/seedling/SeedlingCardClient;->context:Landroid/content/Context;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->initCallback:Lpantanal/app/seedling/SeedlingCardClient$initCallback$1;

    invoke-virtual {p1, p2, p0, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->init(Landroid/content/Context;Lcom/oplus/seedling/sdk/SeedlingInitConfig;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    return-void
.end method


# virtual methods
.method public final addEngineCallback(Lpantanal/app/seedling/SeedlingEngine$InitSuccessCallback;)V
    .registers 2

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/seedling/SeedlingCardClient;->engineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getEntranceActivityStarter()Lpantanal/app/seedling/EntranceActivityStarter;
    .registers 1

    sget-object p0, Lpantanal/app/seedling/SeedlingCardClient;->entranceActivityStarter$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/seedling/EntranceActivityStarter;

    return-object p0
.end method

.method public final getSeedingManagerByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;
    .registers 21

    move-object/from16 v0, p1

    const-string v1, "entrance"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, Lpantanal/app/seedling/SeedlingCardClient;->isSeedlingSdkInitSuccess:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2e

    sget-object v3, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSeedingManagerByEntrance return null,step1, not init or initing,entrance="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedCardClient"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2

    :cond_2e
    sget-object v1, Lpantanal/app/seedling/SeedlingCardClient;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSeedingManagerByEntrance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in cache,just return,seedlingManager = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SeedCardClient"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_76
    sget-object v3, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/seedling/sdk/SeedlingSdk;->gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object v3

    if-nez v3, :cond_a4

    sget-object v4, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSeedingManagerByEntrance,SeedlingSdk.gainSeedlingManager return null,step2, not init or initializing,entrance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedCardClient"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v2

    :cond_a4
    sget-object v4, Lpantanal/app/seedling/SeedlingCardClient;->configuration:Lpantanal/app/bean/Configuration;

    if-eqz v4, :cond_b5

    invoke-virtual {v4}, Lpantanal/app/bean/Configuration;->getLaunchInterceptorMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_b5

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpantanal/app/ILaunchInterceptorV2;

    goto :goto_b6

    :cond_b5
    move-object v4, v2

    :goto_b6
    sget-object v5, Lpantanal/app/seedling/SeedlingCardClient;->configuration:Lpantanal/app/bean/Configuration;

    if-eqz v5, :cond_bf

    invoke-virtual {v5}, Lpantanal/app/bean/Configuration;->getEnableV2Callback()Z

    move-result v5

    goto :goto_c0

    :cond_bf
    const/4 v5, 0x0

    :goto_c0
    if-nez v4, :cond_f5

    sget-object v6, Lpantanal/app/seedling/SeedlingCardClient;->configuration:Lpantanal/app/bean/Configuration;

    if-eqz v6, :cond_ca

    invoke-virtual {v6}, Lpantanal/app/bean/Configuration;->getLaunchInterceptorMap()Ljava/util/Map;

    move-result-object v2

    :cond_ca
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSeedingManagerByEntrance,launch interceptor of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is null,not set interceptor,interceptorMap ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v8, Ly8/c;->a:Ly8/c;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xfc

    const/16 v18, 0x0

    const-string v9, "SeedCardClient"

    invoke-static/range {v8 .. v18}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_f5
    new-instance v2, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;

    invoke-direct {v2, v4, v5}, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;-><init>(Lpantanal/app/ILaunchInterceptorV2;Z)V

    invoke-interface {v3, v2}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->interceptStartActivity(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ly8/c;->a:Ly8/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSeedingManagerByEntrance，save seedlingManager:["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to cache,seedlingManagerMap = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedCardClient"

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v3
.end method

.method public final getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;
    .registers 1

    sget-object p0, Lpantanal/app/seedling/SeedlingCardClient;->seedlingStatusMonitor$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/app/seedling/SeedlingStatusMonitor;

    return-object p0
.end method

.method public final init(Landroid/content/Context;Lpantanal/app/bean/Entrance;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/seedling/SeedingEngineType;Lpantanal/app/bean/Configuration;)V
    .registers 22

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    const-string v3, "app"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "entrance"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "configuration"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin init,entrance = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",engineType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "SeedCardClient"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xf8

    const/4 v15, 0x0

    move-object v5, v3

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lpantanal/app/seedling/SeedlingStatusMonitor;->getSetup()Z

    move-result v5

    if-eqz v5, :cond_5d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "SeedCardClient"

    const-string v6, "init,seedlingStatusMonitor.setup == true,return ."

    move-object v4, v3

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_5d
    invoke-virtual/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setSetup(Z)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "SeedCardClient"

    const-string v7, "begin init ,mark seedlingStatusMonitor.setup = true,next step is initSeedlingSdkAsync"

    move-object v5, v3

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7f

    move-object v0, v4

    :cond_7f
    sput-object v0, Lpantanal/app/seedling/SeedlingCardClient;->context:Landroid/content/Context;

    sput-object v2, Lpantanal/app/seedling/SeedlingCardClient;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardClient;->getEntranceActivityStarter()Lpantanal/app/seedling/EntranceActivityStarter;

    move-result-object v0

    move-object/from16 v3, p3

    invoke-virtual {v0, v3}, Lpantanal/app/seedling/EntranceActivityStarter;->setLaunchInterceptor(Lpantanal/app/ILaunchInterceptor;)V

    invoke-virtual/range {p0 .. p0}, Lpantanal/app/seedling/SeedlingCardClient;->getEntranceActivityStarter()Lpantanal/app/seedling/EntranceActivityStarter;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lpantanal/app/bean/Configuration;->getEnableV2Callback()Z

    move-result v3

    invoke-virtual {v0, v3}, Lpantanal/app/seedling/EntranceActivityStarter;->setEnableV2Callback(Z)V

    if-eqz v1, :cond_9e

    invoke-static/range {p4 .. p4}, Lpantanal/app/seedling/SeedlingExKt;->convert(Lpantanal/app/seedling/SeedingEngineType;)Lcom/oplus/seedling/sdk/entity/EngineType;

    move-result-object v0

    goto :goto_9f

    :cond_9e
    const/4 v0, 0x0

    :goto_9f
    move-object/from16 v1, p0

    invoke-direct {v1, v0, v2}, Lpantanal/app/seedling/SeedlingCardClient;->initSeedlingSdkAsync(Lcom/oplus/seedling/sdk/entity/EngineType;Lpantanal/app/bean/Configuration;)V

    return-void
.end method

.method public final quit()V
    .registers 1

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->quit()V

    return-void
.end method

.method public final release()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "SeedCardClient"

    const-string v2, "begin seedling engine release."

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->engineCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->seedlingManagerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v0}, Lcom/oplus/seedling/sdk/SeedlingSdk;->release()V

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setSetup(Z)V

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setHasUsOrContainerCard(Z)V

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setHasInit(Z)V

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setHasRegisterListener(Z)V

    return-void
.end method
