.class public final Lcom/oplus/channel/server/factory/CallPuller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/channel/server/IClientPuller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/factory/CallPuller$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 ,2\u00020\u0001:\u0001,B\u001f\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\f\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b*\u0010+J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0017R\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u00020\f8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u000e\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u0018\u001a\u00020\f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u000eR\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001d\u0010$\u001a\u00020\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001d\u0010)\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010!\u001a\u0004\b\'\u0010(¨\u0006-"
    }
    d2 = {
        "Lcom/oplus/channel/server/factory/CallPuller;",
        "Lcom/oplus/channel/server/IClientPuller;",
        "Lh4/z;",
        "asyncCallPull",
        "",
        "callPull",
        "unfreezeClient",
        "aliveClient",
        "changeProviderClient",
        "destroy",
        "shouldForceFetch",
        "pullClient",
        "",
        "serverAuthority",
        "Ljava/lang/String;",
        "clientName",
        "getClientName",
        "()Ljava/lang/String;",
        "Lcom/oplus/channel/server/ClientConfig;",
        "clientConfig",
        "Lcom/oplus/channel/server/ClientConfig;",
        "Lcom/oplus/channel/server/IUserContext;",
        "userContext",
        "Lcom/oplus/channel/server/IUserContext;",
        "contentUrl",
        "Landroid/content/ContentProviderClient;",
        "providerClient",
        "Landroid/content/ContentProviderClient;",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "retryCount",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Landroid/content/Context;",
        "context$delegate",
        "Lh4/f;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "Lcom/oplus/channel/server/utils/AliveClientUtil;",
        "aliveClientUtil$delegate",
        "getAliveClientUtil",
        "()Lcom/oplus/channel/server/utils/AliveClientUtil;",
        "aliveClientUtil",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V",
        "Companion",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/channel/server/factory/CallPuller$Companion;

.field public static final MAX_RETRY_COUNT:I = 0x5

.field public static final NOTIFY_NO_DELAY:I = 0x8000

.field public static final TAG:Ljava/lang/String; = "CallPuller"


# instance fields
.field private final aliveClientUtil$delegate:Lh4/f;

.field private final clientConfig:Lcom/oplus/channel/server/ClientConfig;

.field private final clientName:Ljava/lang/String;

.field private final contentUrl:Ljava/lang/String;

.field private final context$delegate:Lh4/f;

.field private providerClient:Landroid/content/ContentProviderClient;

.field private retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final serverAuthority:Ljava/lang/String;

.field private final userContext:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/factory/CallPuller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/factory/CallPuller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/factory/CallPuller;->Companion:Lcom/oplus/channel/server/factory/CallPuller$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V
    .registers 8

    const-class v0, Lcom/oplus/channel/server/IUserContext;

    const-string v1, "serverAuthority"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clientName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clientConfig"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->serverAuthority:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    sget-object p1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "the class are not injected"

    if-eqz p2, :cond_ae

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.channel.server.utils.ServerDI.injectSingle>"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lh4/f;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/CallPuller;->context$delegate:Lh4/f;

    const/4 p2, 0x0

    :try_start_46
    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6f

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_69

    check-cast p1, Lh4/f;

    invoke-static {p1}, Lcom/oplus/channel/server/utils/ServerDI;->access$injectNullable$lambda-1$lambda-0(Lh4/f;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_8f

    :cond_69
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_75
    .catchall {:try_start_46 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8f

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "injectNullable：iUserContext exception "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ServerDI"

    invoke-static {p3, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    :goto_8f
    check-cast p2, Lcom/oplus/channel/server/IUserContext;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/CallPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->serverAuthority:Ljava/lang/String;

    const-string p2, "content://"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->contentUrl:Ljava/lang/String;

    sget-object p1, Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;->INSTANCE:Lcom/oplus/channel/server/factory/CallPuller$aliveClientUtil$2;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->aliveClientUtil$delegate:Lh4/f;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->retryCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :cond_ae
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$callPull(Lcom/oplus/channel/server/factory/CallPuller;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->callPull()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getClientConfig$p(Lcom/oplus/channel/server/factory/CallPuller;)Lcom/oplus/channel/server/ClientConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    return-object p0
.end method

.method public static final synthetic access$getContext(Lcom/oplus/channel/server/factory/CallPuller;)Landroid/content/Context;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private final aliveClient()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getAliveClientUtil()Lcom/oplus/channel/server/utils/AliveClientUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v1}, Lcom/oplus/channel/server/ClientConfig;->getClientPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/channel/server/utils/AliveClientUtil;->bindService(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->changeProviderClient()V

    :cond_1d
    return-void
.end method

.method private final asyncCallPull()V
    .registers 4

    sget-object v0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->Companion:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;->getINSTANCE()Lcom/oplus/channel/server/utils/AsyncCallExecutor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;

    invoke-direct {v2, p0}, Lcom/oplus/channel/server/factory/CallPuller$asyncCallPull$1;-><init>(Lcom/oplus/channel/server/factory/CallPuller;)V

    invoke-virtual {v0, v1, v2}, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final callPull()Z
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "CallPuller"

    const-string v1, "callPull:"

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_129

    const/4 v0, 0x0

    :try_start_11
    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->changeProviderClient()V

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->unfreezeClient()V

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->aliveClient()V

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_56

    const-string v1, "CallPuller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callPull:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3d} :catch_cc
    .catchall {:try_start_11 .. :try_end_3d} :catchall_ca

    :try_start_3d
    const-string v1, "CallPuller"

    const-string v2, "callPull finally:"

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_51

    goto :goto_54

    :cond_51
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_54
    .catchall {:try_start_3d .. :try_end_54} :catchall_129

    :goto_54
    monitor-exit p0

    return v0

    :cond_56
    :try_start_56
    sget-object v1, Lcom/oplus/channel/server/data/CommandDataManager;->INSTANCE:Lcom/oplus/channel/server/data/CommandDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/channel/server/data/CommandDataManager;->queryCachedCommandData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_64

    goto :goto_69

    :cond_64
    const-string v4, "RESULT_BATCH_CALLBACK_SUPPORT"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_69
    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v4, :cond_6f

    const/4 v2, 0x0

    goto :goto_79

    :cond_6f
    const-string v5, "pull"

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :goto_79
    if-nez v2, :cond_7d

    :cond_7b
    move v4, v0

    goto :goto_86

    :cond_7d
    const-string v4, "consumed"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_7b

    move v4, v3

    :goto_86
    if-eqz v4, :cond_8f

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oplus/channel/server/data/CommandDataManager;->removeCachedCommandData(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_8f
    const-string v1, "CallPuller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callPull:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_b1} :catch_cc
    .catchall {:try_start_56 .. :try_end_b1} :catchall_ca

    :try_start_b1
    const-string v0, "CallPuller"

    const-string v1, "callPull finally:"

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_c5

    goto :goto_c8

    :cond_c5
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_c8
    .catchall {:try_start_b1 .. :try_end_c8} :catchall_129

    :goto_c8
    monitor-exit p0

    return v3

    :catchall_ca
    move-exception v0

    goto :goto_111

    :catch_cc
    move-exception v1

    :try_start_cd
    const-string v2, "CallPuller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callPull:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error e = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_cd .. :try_end_f8} :catchall_ca

    :try_start_f8
    const-string v1, "CallPuller"

    const-string v2, "callPull finally:"

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_10c

    goto :goto_10f

    :cond_10c
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V
    :try_end_10f
    .catchall {:try_start_f8 .. :try_end_10f} :catchall_129

    :goto_10f
    monitor-exit p0

    return v0

    :goto_111
    :try_start_111
    const-string v1, "CallPuller"

    const-string v2, "callPull finally:"

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v1, :cond_125

    goto :goto_128

    :cond_125
    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :goto_128
    throw v0
    :try_end_129
    .catchall {:try_start_111 .. :try_end_129} :catchall_129

    :catchall_129
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final changeProviderClient()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v0}, Lcom/oplus/channel/server/ClientConfig;->getProviderAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-interface {v1, v0}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    :goto_10
    if-nez v1, :cond_1e

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v1

    :cond_1e
    iput-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    const-string v1, "changeProviderClient, providerAuthority: "

    const-string v2, ", providerClient: "

    invoke-static {v1, v0, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CallPuller"

    invoke-static {v0, p0}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final getAliveClientUtil()Lcom/oplus/channel/server/utils/AliveClientUtil;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->aliveClientUtil$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/utils/AliveClientUtil;

    return-object p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->context$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final unfreezeClient()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/channel/server/factory/CallPuller;->providerClient:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_25

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-virtual {v0}, Lcom/oplus/channel/server/ServerChannel;->getSystemApiClient()Lcom/oplus/channel/server/factory/SystemApiClient;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    goto :goto_20

    :cond_f
    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v4}, Lcom/oplus/channel/server/ClientConfig;->getClientPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/oplus/channel/server/factory/SystemApiClient;->unfreezeClientPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_20

    move v1, v2

    :cond_20
    :goto_20
    if-eqz v1, :cond_25

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->changeProviderClient()V

    :cond_25
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getClientName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientName:Ljava/lang/String;

    return-object p0
.end method

.method public pullClient(Z)Z
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "fetchClient:ALIVE_TYPE_CALL shouldForceFetch = ["

    const-string v1, "] clientName = ["

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] clientConfig = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallPuller"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_8e

    iget-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {p1}, Lcom/oplus/channel/server/ClientConfig;->getNeedNotify()Z

    move-result p1

    if-eqz p1, :cond_8c

    iget-object p1, p0, Lcom/oplus/channel/server/factory/CallPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const v0, 0x8000

    const-string v1, "/pull/"

    const/4 v2, 0x0

    if-nez p1, :cond_3d

    move-object p1, v2

    goto :goto_63

    :cond_3d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->contentUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "parse(\"$contentUrl/$METHOD_PULL/$clientName\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3, v2, v0}, Lcom/oplus/channel/server/IUserContext;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    :goto_63
    if-nez p1, :cond_8c

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oplus/channel/server/factory/CallPuller;->contentUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/CallPuller;->getClientName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    :cond_8c
    const/4 p0, 0x0

    return p0

    :cond_8e
    invoke-direct {p0}, Lcom/oplus/channel/server/factory/CallPuller;->asyncCallPull()V

    const/4 p0, 0x1

    return p0
.end method
