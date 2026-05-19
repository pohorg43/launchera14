.class public final Lpantanal/app/manager/ClientProxyManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/manager/ClientProxyManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClientProxyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClientProxyManager.kt\npantanal/app/manager/ClientProxyManager\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,288:1\n215#2,2:289\n*S KotlinDebug\n*F\n+ 1 ClientProxyManager.kt\npantanal/app/manager/ClientProxyManager\n*L\n276#1:289,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/manager/ClientProxyManager$Companion;

.field public static final TAG:Ljava/lang/String; = "ClientProxyManager"

.field private static applicationContext:Landroid/content/Context;

.field private static volatile instance:Lpantanal/app/manager/ClientProxyManager;


# instance fields
.field private final assistantScreenClientConfig:Lcom/oplus/channel/server/ClientConfig;

.field private volatile contextProxy:Lw8/a;

.field private final entrance:Lpantanal/app/bean/Entrance;

.field private entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/channel/server/ClientProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final initObject:Ljava/lang/Object;

.field private final isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

.field private final umsClientConfig:Lcom/oplus/channel/server/ClientConfig;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/manager/ClientProxyManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/manager/ClientProxyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/ClientProxyManager;->Companion:Lpantanal/app/manager/ClientProxyManager$Companion;

    return-void
.end method

.method private constructor <init>(Lpantanal/app/bean/Entrance;)V
    .registers 24

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iput-object v1, v0, Lpantanal/app/manager/ClientProxyManager;->entrance:Lpantanal/app/bean/Entrance;

    new-instance v11, Lcom/oplus/channel/server/ClientConfig;

    const-string v2, "com.coloros.assistantscreen"

    const-string v3, "com.coloros.assistantscreen.client.provider"

    const-string v4, "com.oplus.cardservice.interfaces.facade.CardComponentService"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x70

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v11, v0, Lpantanal/app/manager/ClientProxyManager;->assistantScreenClientConfig:Lcom/oplus/channel/server/ClientConfig;

    new-instance v1, Lcom/oplus/channel/server/ClientConfig;

    const-string v13, "com.oplus.pantanal.ums"

    const-string v14, "com.oplus.pantanal.ums.cardservice.provider.CardServiceClientProvider"

    const-string v15, "com.oplus.pantanal.ums.cardservice.service.CardComponentService"

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x70

    const/16 v21, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v21}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lpantanal/app/manager/ClientProxyManager;->umsClientConfig:Lcom/oplus/channel/server/ClientConfig;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lpantanal/app/manager/ClientProxyManager;->initObject:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Lpantanal/app/manager/ClientProxyManager;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lpantanal/app/bean/Entrance;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lpantanal/app/manager/ClientProxyManager;-><init>(Lpantanal/app/bean/Entrance;)V

    return-void
.end method

.method public static final synthetic access$getApplicationContext$cp()Landroid/content/Context;
    .registers 1

    sget-object v0, Lpantanal/app/manager/ClientProxyManager;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lpantanal/app/manager/ClientProxyManager;
    .registers 1

    sget-object v0, Lpantanal/app/manager/ClientProxyManager;->instance:Lpantanal/app/manager/ClientProxyManager;

    return-object v0
.end method

.method public static final synthetic access$setApplicationContext$cp(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lpantanal/app/manager/ClientProxyManager;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lpantanal/app/manager/ClientProxyManager;)V
    .registers 1

    sput-object p0, Lpantanal/app/manager/ClientProxyManager;->instance:Lpantanal/app/manager/ClientProxyManager;

    return-void
.end method

.method private final createClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;
    .registers 15

    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->contextProxy:Lw8/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lw8/a;->b:Landroid/content/Context;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    if-nez v0, :cond_1e

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "ClientProxyManager"

    const-string v4, "createClientProxyByEntrance return null,because context is null."

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_1e
    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-nez v0, :cond_35

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "ClientProxyManager"

    const-string v4, "createClientProxyByEntrance return null,because serverBusiness is null."

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_35
    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->contextProxy:Lw8/a;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lw8/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lw8/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->umsClientConfig:Lcom/oplus/channel/server/ClientConfig;

    goto :goto_47

    :cond_45
    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->assistantScreenClientConfig:Lcom/oplus/channel/server/ClientConfig;

    :goto_47
    iget-object v2, p0, Lpantanal/app/manager/ClientProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-eqz v2, :cond_57

    invoke-virtual {p1}, Lpantanal/app/bean/Entrance;->getClientName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v4, v0

    invoke-static/range {v2 .. v7}, Lcom/oplus/channel/server/IServerBusiness;->createClientProxy$default(Lcom/oplus/channel/server/IServerBusiness;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;ILjava/lang/Object;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v1

    :cond_57
    sget-object v2, Ly8/c;->a:Ly8/c;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createClientProxyByEntrance done,entrance = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",config = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",clientProxy = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "ClientProxyManager"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1
.end method

.method private final destroyAllClientProxy()V
    .registers 15

    sget-object v11, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyAllClientProxy begin,init state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "ClientProxyManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-nez v0, :cond_3a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ClientProxyManager"

    const-string v2, "destroyAllClientProxy error,serverBusiness is null."

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_3a
    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lpantanal/app/bean/Entrance;->Companion:Lpantanal/app/bean/Entrance$Companion;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lpantanal/app/bean/Entrance$Companion;->findByType(I)Lpantanal/app/bean/Entrance;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/manager/ClientProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-eqz v2, :cond_71

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/channel/server/IServerBusiness;->destroyClientProxy(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_72

    :cond_71
    const/4 v2, 0x0

    :goto_72
    sget-object v3, Ly8/c;->a:Ly8/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroyAllClientProxy done,result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",entrance = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v4, "ClientProxyManager"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_44

    :cond_9c
    iget-object p0, p0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method private final doInitServerChannel()V
    .registers 15

    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->contextProxy:Lw8/a;

    if-nez v0, :cond_17

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "ClientProxyManager"

    const-string v3, "doInitServerChannel failed,contextProxy is null,should init first."

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_17
    :try_start_17
    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->contextProxy:Lw8/a;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    iget-object v0, v0, Lw8/a;->a:Lcom/oplus/channel/server/IUserContext;

    if-eqz v0, :cond_4c

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-static {p0, v0, v2, v1, v2}, Lcom/oplus/channel/server/ServerChannel;->initChannel$default(Lcom/oplus/channel/server/ServerChannel;Lcom/oplus/channel/server/IUserContext;Lcom/oplus/channel/server/factory/SystemApiClient;ILjava/lang/Object;)V

    invoke-interface {v0}, Lcom/oplus/channel/server/IUserContext;->getUserId()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInitServerChannel, initChannel success with userContext, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "ClientProxyManager"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_72

    :cond_4c
    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    iget-object p0, p0, Lpantanal/app/manager/ClientProxyManager;->contextProxy:Lw8/a;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lw8/a;->b:Landroid/content/Context;

    invoke-static {v0, p0, v2, v1, v2}, Lcom/oplus/channel/server/ServerChannel;->initChannel$default(Lcom/oplus/channel/server/ServerChannel;Landroid/content/Context;Lcom/oplus/channel/server/factory/SystemApiClient;ILjava/lang/Object;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "ClientProxyManager"

    const-string v5, "doInitServerChannel, initChannel success with normal context."

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_6c
    .catchall {:try_start_17 .. :try_end_6c} :catchall_6d

    goto :goto_72

    :catchall_6d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_72
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_8a

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ClientProxyManager"

    const-string v2, "doInitServerChannel failed,contextProxy is null,should init first."

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_8a
    return-void
.end method


# virtual methods
.method public final destroyServerChannel()V
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    const-string v1, "ClientProxyManager"

    iget-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v0}, Lpantanal/app/bean/Entrance;->getClientName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/manager/ClientProxyManager;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v2}, Lpantanal/app/bean/Entrance;->getProviderAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "destroyServiceChannel begin,clientName = "

    const-string v4, ",authority = "

    invoke-static {v3, v0, v4, v2}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v12, p0, Lpantanal/app/manager/ClientProxyManager;->initObject:Ljava/lang/Object;

    monitor-enter v12

    :try_start_28
    invoke-direct {p0}, Lpantanal/app/manager/ClientProxyManager;->destroyAllClientProxy()V

    sget-object v0, Lpantanal/app/SuperChannelProxyManager;->INSTANCE:Lpantanal/app/SuperChannelProxyManager;

    invoke-virtual {v0}, Lpantanal/app/SuperChannelProxyManager;->destroyAllClientProxy()V

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    iget-object v1, p0, Lpantanal/app/manager/ClientProxyManager;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getProviderAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/channel/server/ServerChannel;->destroyBusinessServer(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/oplus/channel/server/ServerChannel;->destroyServer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    iget-object v2, p0, Lpantanal/app/manager/ClientProxyManager;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v0, p0, Lpantanal/app/manager/ClientProxyManager;->contextProxy:Lw8/a;

    sput-object v0, Lpantanal/app/manager/ClientProxyManager;->instance:Lpantanal/app/manager/ClientProxyManager;

    const-string p0, "ClientProxyManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyServiceChannel ,destroyBizServerResult = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    move-object v1, p0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_6f
    .catchall {:try_start_28 .. :try_end_6f} :catchall_70

    goto :goto_75

    :catchall_70
    move-exception p0

    :try_start_71
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_75
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a0

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "ClientProxyManager"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyServiceChannel fail,msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_a0
    .catchall {:try_start_71 .. :try_end_a0} :catchall_a2

    :cond_a0
    monitor-exit v12

    return-void

    :catchall_a2
    move-exception p0

    monitor-exit v12

    throw p0
.end method

.method public final getChannelServerBusiness()Lcom/oplus/channel/server/IServerBusiness;
    .registers 12

    iget-object p0, p0, Lpantanal/app/manager/ClientProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-nez p0, :cond_17

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "ClientProxyManager"

    const-string v2, "server business is not init,get null"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    :cond_17
    return-object p0
.end method

.method public final getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "entrance"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v0, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/ClientProxy;

    return-object v0

    :cond_2a
    iget-object v2, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    :try_start_2d
    iget-object v3, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    invoke-direct/range {p0 .. p1}, Lpantanal/app/manager/ClientProxyManager;->createClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v3

    if-eqz v3, :cond_85

    iget-object v4, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getClientProxyByEntrance,no cache,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " create a new clientProxy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "and save to cache = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v6, Ly8/c;->a:Ly8/c;

    const-string v7, "ClientProxyManager"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_c2

    :cond_85
    sget-object v17, Ly8/c;->a:Ly8/c;

    const-string v18, "ClientProxyManager"

    const-string v19, "getClientProxyByEntrance,createClientProxyByEntrance return null."

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_c2

    :cond_9f
    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "ClientProxyManager"

    iget-object v5, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getClientProxyByEntrance already created by other thread,map = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_c2
    .catchall {:try_start_2d .. :try_end_c2} :catchall_d4

    :goto_c2
    monitor-exit v2

    iget-object v0, v0, Lpantanal/app/manager/ClientProxyManager;->entranceTypeToClientProxyMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/ClientProxy;

    return-object v0

    :catchall_d4
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final initServerChannel(Lw8/a;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "contextProxy"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v4, "ClientProxyManager"

    const-string v5, "initServerChannel begin"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v14, v1, Lpantanal/app/manager/ClientProxyManager;->initObject:Ljava/lang/Object;

    monitor-enter v14

    :try_start_1f
    iget-object v3, v1, Lpantanal/app/manager/ClientProxyManager;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_b5

    const-string v4, "ClientProxyManager"

    iget-object v3, v2, Lw8/a;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initServerChannel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iput-object v2, v1, Lpantanal/app/manager/ClientProxyManager;->contextProxy:Lw8/a;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/manager/ClientProxyManager;->doInitServerChannel()V
    :try_end_54
    .catchall {:try_start_1f .. :try_end_54} :catchall_c8

    :try_start_54
    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    iget-object v3, v1, Lpantanal/app/manager/ClientProxyManager;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v3}, Lpantanal/app/bean/Entrance;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oplus/channel/server/ServerChannel;->createBusinessServer(Ljava/lang/String;)Lcom/oplus/channel/server/IServerBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/channel/server/IServerBusiness;->startServer()V
    :try_end_63
    .catch Ljava/lang/IllegalStateException; {:try_start_54 .. :try_end_63} :catch_64
    .catchall {:try_start_54 .. :try_end_63} :catchall_c8

    goto :goto_a0

    :catch_64
    move-exception v0

    :try_start_65
    iget-object v3, v1, Lpantanal/app/manager/ClientProxyManager;->entrance:Lpantanal/app/bean/Entrance;

    invoke-virtual {v3}, Lpantanal/app/bean/Entrance;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initServerChannel Server for authority:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been created, errorMsg:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v15, Ly8/c;->a:Ly8/c;

    const-string v16, "ClientProxyManager"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xfc

    const/16 v25, 0x0

    invoke-static/range {v15 .. v25}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_a0
    iput-object v0, v1, Lpantanal/app/manager/ClientProxyManager;->serverBusiness:Lcom/oplus/channel/server/IServerBusiness;

    iget-object v0, v2, Lw8/a;->b:Landroid/content/Context;

    sget-object v1, Lpantanal/app/manager/ClientProxyManager;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_c6

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_b2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :cond_b2
    sput-object v0, Lpantanal/app/manager/ClientProxyManager;->applicationContext:Landroid/content/Context;

    goto :goto_c6

    :cond_b5
    const-string v2, "ClientProxyManager"

    const-string v3, "initServerChannel,already initialized! no need to init again!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_c6
    .catchall {:try_start_65 .. :try_end_c6} :catchall_c8

    :cond_c6
    :goto_c6
    monitor-exit v14

    return-void

    :catchall_c8
    move-exception v0

    monitor-exit v14

    throw v0
.end method
