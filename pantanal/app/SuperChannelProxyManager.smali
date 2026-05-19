.class public final Lpantanal/app/SuperChannelProxyManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lpantanal/app/SuperChannelProxyManager;

.field private static final SUPER_CLIENT_NAME_SPLIT:Ljava/lang/String; = "_"

.field private static final TAG:Ljava/lang/String; = "SuperChannelProxyManager"

.field private static channelServerBusiness:Lcom/oplus/channel/server/IServerBusiness;

.field private static final clientProxyMap$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/SuperChannelProxyManager;

    invoke-direct {v0}, Lpantanal/app/SuperChannelProxyManager;-><init>()V

    sput-object v0, Lpantanal/app/SuperChannelProxyManager;->INSTANCE:Lpantanal/app/SuperChannelProxyManager;

    sget-object v0, Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;->INSTANCE:Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lpantanal/app/SuperChannelProxyManager;->clientProxyMap$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createClientProxy(Lpantanal/app/bean/CardViewInfo;I)Lcom/oplus/channel/server/ClientProxy;
    .registers 28

    sget-object v0, Ly8/c;->a:Ly8/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createClientProxy"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", cardConfigInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SuperChannelProxyManager"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v1, Lpantanal/app/SuperChannelProxyManager;->channelServerBusiness:Lcom/oplus/channel/server/IServerBusiness;

    const/4 v14, 0x0

    if-nez v1, :cond_40

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SuperChannelProxyManager"

    const-string v3, "serverBusiness is null when createClientProxy in super channel"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v14

    :cond_40
    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardViewInfo;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lpantanal/app/bean/CardViewInfo;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_55

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_53

    goto :goto_55

    :cond_53
    move v4, v2

    goto :goto_56

    :cond_55
    :goto_55
    move v4, v3

    :goto_56
    if-nez v4, :cond_e3

    if-eqz v16, :cond_60

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_61

    :cond_60
    move v2, v3

    :cond_61
    if-eqz v2, :cond_65

    goto/16 :goto_e3

    :cond_65
    invoke-direct/range {p0 .. p1}, Lpantanal/app/SuperChannelProxyManager;->resolveAuthority(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object v17

    new-instance v8, Lcom/oplus/channel/server/ClientConfig;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x60

    const/16 v24, 0x0

    move-object v15, v8

    move-object/from16 v18, v1

    invoke-direct/range {v15 .. v24}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v9, p0

    move/from16 v2, p2

    :try_start_81
    invoke-virtual {v9, v1, v2}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lpantanal/app/SuperChannelProxyManager;->channelServerBusiness:Lcom/oplus/channel/server/IServerBusiness;

    if-eqz v2, :cond_94

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/oplus/channel/server/IServerBusiness;->createClientProxy$default(Lcom/oplus/channel/server/IServerBusiness;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;ILjava/lang/Object;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v2

    move-object v13, v2

    goto :goto_95

    :cond_94
    move-object v13, v14

    :goto_95
    invoke-direct/range {p0 .. p0}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-interface {v2, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SuperChannelProxyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success, clientName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",clientConfig="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_c7} :catch_c8

    return-object v13

    :catch_c8
    move-exception v0

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, " error, exception:"

    invoke-static {v12, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SuperChannelProxyManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_e3
    :goto_e3
    return-object v14
.end method

.method private final destroyClientProxy(Ljava/lang/String;Z)V
    .registers 28

    move-object/from16 v1, p1

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v2, "destroyClientProxy,begin clientName = "

    invoke-static {v2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "SuperChannelProxyManager"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lpantanal/app/SuperChannelProxyManager;->channelServerBusiness:Lcom/oplus/channel/server/IServerBusiness;

    const-string v13, "destroyClientProxy"

    if-eqz v2, :cond_8e

    :try_start_1f
    invoke-virtual {v2, v1}, Lcom/oplus/channel/server/IServerBusiness;->destroyClientProxy(Ljava/lang/String;)Z

    const-string v3, "SuperChannelProxyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success, clientName:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    move-object v2, v0

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_47
    .catchall {:try_start_1f .. :try_end_47} :catchall_48

    goto :goto_4d

    :catchall_48
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_4d
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, " error, clientName:"

    const-string v3, ", errorMsg:"

    invoke-static {v13, v2, v1, v3, v0}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v14, Ly8/c;->a:Ly8/c;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "SuperChannelProxyManager"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_76
    if-eqz p2, :cond_8b

    sget-object v0, Lpantanal/app/SuperChannelProxyManager;->INSTANCE:Lpantanal/app/SuperChannelProxyManager;

    invoke-direct {v0}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-direct {v0}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_8f

    :cond_8e
    const/4 v0, 0x0

    :goto_8f
    if-nez v0, :cond_a7

    const-string v0, " fail, because serverBusiness is null, clientName:"

    invoke-static {v13, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SuperChannelProxyManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a7
    return-void
.end method

.method public static synthetic destroyClientProxy$default(Lpantanal/app/SuperChannelProxyManager;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-direct {p0, p1, p2}, Lpantanal/app/SuperChannelProxyManager;->destroyClientProxy(Ljava/lang/String;Z)V

    return-void
.end method

.method private final getClientProxyMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/channel/server/ClientProxy;",
            ">;"
        }
    .end annotation

    sget-object p0, Lpantanal/app/SuperChannelProxyManager;->clientProxyMap$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final resolveAuthority(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;
    .registers 15

    sget-object p0, Lpantanal/app/manager/ClientProxyManager;->Companion:Lpantanal/app/manager/ClientProxyManager$Companion;

    invoke-virtual {p0}, Lpantanal/app/manager/ClientProxyManager$Companion;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1d

    sget-object v2, Ly8/c;->a:Ly8/c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SuperChannelProxyManager"

    const-string v4, "super channel resolveAuthority: get applicationContext is null"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v1

    :cond_1d
    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getComponentName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lpantanal/app/bean/CardViewInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_30

    goto :goto_32

    :cond_30
    move v4, v3

    goto :goto_33

    :cond_32
    :goto_32
    move v4, v2

    :goto_33
    if-nez v4, :cond_a4

    if-eqz p1, :cond_3f

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    :cond_3f
    :goto_3f
    if-eqz v2, :cond_42

    goto :goto_a4

    :cond_42
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_4f
    invoke-virtual {p0}, Lpantanal/app/manager/ClientProxyManager$Companion;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_63

    const/16 v0, 0x280

    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    goto :goto_64

    :cond_63
    move-object p0, p1

    :goto_64
    if-eqz p0, :cond_84

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7c

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string p1, "resolveInfoList[0].providerInfo.authority"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    :cond_7c
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_7e
    .catchall {:try_start_4f .. :try_end_7e} :catchall_7f

    goto :goto_84

    :catchall_7f
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_84
    :goto_84
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a4

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "resolveAuthority: e = "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "SuperChannelProxyManager"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a4
    :goto_a4
    return-object v1
.end method


# virtual methods
.method public final destroyAllClientProxy()V
    .registers 4

    invoke-direct {p0}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "iterator.next()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "entry.key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lpantanal/app/SuperChannelProxyManager;->destroyClientProxy(Ljava/lang/String;Z)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_c

    :cond_30
    return-void
.end method

.method public final getClientProxy(Ljava/lang/String;ILpantanal/app/bean/CardViewInfo;)Lcom/oplus/channel/server/ClientProxy;
    .registers 16

    const-string v0, "clientName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/ClientProxy;

    if-nez v0, :cond_1a

    invoke-direct {p0, p3, p2}, Lpantanal/app/SuperChannelProxyManager;->createClientProxy(Lpantanal/app/bean/CardViewInfo;I)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v0

    :cond_1a
    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getClientProxy of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",  clientProxyMap.size="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SuperChannelProxyManager"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final getClientProxyName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "builder.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setServerBusiness(Lcom/oplus/channel/server/IServerBusiness;)V
    .registers 2

    sput-object p1, Lpantanal/app/SuperChannelProxyManager;->channelServerBusiness:Lcom/oplus/channel/server/IServerBusiness;

    return-void
.end method
