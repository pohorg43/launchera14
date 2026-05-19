.class public final Lpantanal/app/seedling/SeedlingCardClient$initCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/seedling/SeedlingCardClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSeedlingCardClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeedlingCardClient.kt\npantanal/app/seedling/SeedlingCardClient$initCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,273:1\n1855#2,2:274\n*S KotlinDebug\n*F\n+ 1 SeedlingCardClient.kt\npantanal/app/seedling/SeedlingCardClient$initCallback$1\n*L\n103#1:274,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 14

    const-string p0, "errorMsg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCallback: onFailed,code = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",msg = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lpantanal/app/seedling/SeedlingCardClient;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setHasInit(Z)V

    invoke-virtual {p0}, Lpantanal/app/seedling/SeedlingCardClient;->getSeedlingStatusMonitor()Lpantanal/app/seedling/SeedlingStatusMonitor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lpantanal/app/seedling/SeedlingStatusMonitor;->setSetup(Z)V

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardClient;->access$handleSDKInitFailed(Lpantanal/app/seedling/SeedlingCardClient;)V

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEngineCallbacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-static {p2}, Lpantanal/app/seedling/SeedlingCardClient;->access$setSeedlingSdkInitSuccess$p(Z)V

    return-void
.end method

.method public onPluginCheckUpdateResult(IIIJ)V
    .registers 17

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "initCallback: onPluginCheckUpdateResult,status = "

    const-string v2, ",newVersion="

    const-string v3, ",oldVersion="

    move v4, p1

    move v5, p2

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v2, p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",downloadSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .registers 16

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    sget-object v0, Ly8/c;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Ly8/c;->d:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, p0, v2

    invoke-static {p0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCallback: onSuccess,seedling plugin info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEntrance$p()Lpantanal/app/bean/Entrance;

    move-result-object v3

    invoke-virtual {v3}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/oplus/seedling/sdk/SeedlingSdk;->gainSeedlingManager(I)Lcom/oplus/seedling/sdk/manager/ISeedlingManager;

    move-result-object p0

    if-nez p0, :cond_6d

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEntrance$p()Lpantanal/app/bean/Entrance;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCallback: onSuccess,seedlingManager is null,entrance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_6d
    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getConfiguration$p()Lpantanal/app/bean/Configuration;

    move-result-object v3

    if-eqz v3, :cond_84

    invoke-virtual {v3}, Lpantanal/app/bean/Configuration;->getLaunchInterceptorMap()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_84

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEntrance$p()Lpantanal/app/bean/Entrance;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpantanal/app/ILaunchInterceptorV2;

    goto :goto_85

    :cond_84
    const/4 v3, 0x0

    :goto_85
    move-object v14, v3

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getConfiguration$p()Lpantanal/app/bean/Configuration;

    move-result-object v3

    if-eqz v3, :cond_90

    invoke-virtual {v3}, Lpantanal/app/bean/Configuration;->getEnableV2Callback()Z

    move-result v1

    :cond_90
    if-eqz v14, :cond_ac

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedCardClient"

    const-string v5, "set interceptStartActivity from map."

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v3, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;

    invoke-direct {v3, v14, v1}, Lpantanal/app/seedling/SeedlingLaunchInterceptorWrapper;-><init>(Lpantanal/app/ILaunchInterceptorV2;Z)V

    invoke-interface {p0, v3}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->interceptStartActivity(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V

    goto :goto_c6

    :cond_ac
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "SeedCardClient"

    const-string v5, "set interceptStartActivity  go default."

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lpantanal/app/seedling/SeedlingCardClient;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

    invoke-virtual {v1}, Lpantanal/app/seedling/SeedlingCardClient;->getEntranceActivityStarter()Lpantanal/app/seedling/EntranceActivityStarter;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/oplus/seedling/sdk/manager/ISeedlingManager;->interceptStartActivity(Lcom/oplus/seedling/sdk/callback/StartActivityCallback;)V

    :goto_c6
    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getSeedlingManagerMap$p()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEntrance$p()Lpantanal/app/bean/Entrance;

    move-result-object v3

    invoke-virtual {v3}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getSeedlingManagerMap$p()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEngineCallbacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initCallback: onSuccess,save SeedlingManager = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to cache,cache = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",engineCallback size = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lpantanal/app/seedling/SeedlingCardClient;->INSTANCE:Lpantanal/app/seedling/SeedlingCardClient;

    invoke-static {v2}, Lpantanal/app/seedling/SeedlingCardClient;->access$setSeedlingSdkInitSuccess$p(Z)V

    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEngineCallbacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_122
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpantanal/app/seedling/SeedlingEngine$InitSuccessCallback;

    invoke-interface {v1, p0}, Lpantanal/app/seedling/SeedlingEngine$InitSuccessCallback;->onSuccess(Lcom/oplus/seedling/sdk/manager/ISeedlingManager;)V

    goto :goto_122

    :cond_132
    invoke-static {}, Lpantanal/app/seedling/SeedlingCardClient;->access$getEngineCallbacks$p()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
