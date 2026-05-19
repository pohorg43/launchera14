.class public final Lcom/oplus/channel/server/ServerChannel;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b%\u0010&J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0006\u0010\t\u001a\u00020\bJ\b\u0010\n\u001a\u0004\u0018\u00010\u0002J\u001a\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u001a\u0010\u000b\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u000eJ\u0006\u0010\u0016\u001a\u00020\u0006R\u0016\u0010\u0017\u001a\u00020\u000e8\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0019\u0010\u001a\u001a\u00020\u00198\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\"\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u001f0\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010$¨\u0006\'"
    }
    d2 = {
        "Lcom/oplus/channel/server/ServerChannel;",
        "",
        "Lcom/oplus/channel/server/factory/SystemApiClient;",
        "systemApiClient",
        "Landroid/content/Context;",
        "context",
        "Lh4/z;",
        "initChannelWithContext",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isChannelInitialed",
        "getSystemApiClient",
        "initChannel",
        "Lcom/oplus/channel/server/IUserContext;",
        "userContext",
        "",
        "serverAuthority",
        "Lcom/oplus/channel/server/IServerBusiness;",
        "createBusinessServer",
        "Lcom/oplus/channel/server/provider/IServerProvider;",
        "getServerProviderByAuthority",
        "",
        "destroyBusinessServer",
        "destroyServer",
        "TAG",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "seqInt",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getSeqInt",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/oplus/channel/server/IServerImpl;",
        "serverMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "isInitialed",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lcom/oplus/channel/server/factory/SystemApiClient;",
        "<init>",
        "()V",
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
.field public static final INSTANCE:Lcom/oplus/channel/server/ServerChannel;

.field public static final TAG:Ljava/lang/String; = "ServerChannel"

.field private static final isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final seqInt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final serverMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/channel/server/IServerImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static systemApiClient:Lcom/oplus/channel/server/factory/SystemApiClient;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/ServerChannel;

    invoke-direct {v0}, Lcom/oplus/channel/server/ServerChannel;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/oplus/channel/server/ServerChannel;->seqInt:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/channel/server/ServerChannel;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic initChannel$default(Lcom/oplus/channel/server/ServerChannel;Landroid/content/Context;Lcom/oplus/channel/server/factory/SystemApiClient;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/channel/server/ServerChannel;->initChannel(Landroid/content/Context;Lcom/oplus/channel/server/factory/SystemApiClient;)V

    return-void
.end method

.method public static synthetic initChannel$default(Lcom/oplus/channel/server/ServerChannel;Lcom/oplus/channel/server/IUserContext;Lcom/oplus/channel/server/factory/SystemApiClient;ILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/channel/server/ServerChannel;->initChannel(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/channel/server/factory/SystemApiClient;)V

    return-void
.end method

.method private final initChannelWithContext(Lcom/oplus/channel/server/factory/SystemApiClient;Landroid/content/Context;)V
    .registers 8

    const-class p0, Lcom/oplus/channel/server/IClientPuller;

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_5
    const-string v1, "ServerChannel"

    const-string v2, "initChannelWithContext"

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_ab

    :try_start_c
    sput-object p1, Lcom/oplus/channel/server/ServerChannel;->systemApiClient:Lcom/oplus/channel/server/factory/SystemApiClient;

    sget-object p1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    new-instance v1, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$1;

    invoke-direct {v1, p2}, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$1;-><init>(Landroid/content/Context;)V

    const-string v2, "ServerDI"

    const-string v3, "single start, provider:"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_87

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    new-instance v4, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$lambda-7$lambda-5$$inlined$single$1;

    invoke-direct {v4, v1}, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$lambda-7$lambda-5$$inlined$single$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v4}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;->INSTANCE:Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;

    const-string v2, "ServerDI"

    const-string v3, "factory, provider:"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getFactoryInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7f

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getFactoryInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->Companion:Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;

    invoke-virtual {p0}, Lcom/oplus/channel/server/utils/AsyncCallExecutor$Companion;->getINSTANCE()Lcom/oplus/channel/server/utils/AsyncCallExecutor;

    move-result-object p0

    const-string p1, "ServerChannel"

    new-instance v1, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$3;

    invoke-direct {v1, p2}, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v1}, Lcom/oplus/channel/server/utils/AsyncCallExecutor;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_94

    :cond_7f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Factory of the same class type are injected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_87
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Object of the same class type are injected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8f
    .catchall {:try_start_c .. :try_end_8f} :catchall_8f

    :catchall_8f
    move-exception p0

    :try_start_90
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_94
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a9

    const-string p1, "ServerChannel"

    const-string p2, "initChannelWithContext e:"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_90 .. :try_end_a9} :catchall_ab

    :cond_a9
    monitor-exit v0

    return-void

    :catchall_ab
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final createBusinessServer(Ljava/lang/String;)Lcom/oplus/channel/server/IServerBusiness;
    .registers 4

    const-string p0, "serverAuthority"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p0

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "ServerChannel"

    const-string v1, "createBusinessServer, serverAuthority="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/channel/server/IServerImpl;

    invoke-direct {v0, p1}, Lcom/oplus/channel/server/IServerImpl;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2b

    monitor-exit p0

    return-object v0

    :cond_23
    :try_start_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot create a same name Server!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final destroyBusinessServer(Ljava/lang/String;)Z
    .registers 4

    const-string p0, "serverAuthority"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p0

    :try_start_8
    const-string v0, "ServerChannel"

    const-string v1, "destroyBusinessServer, serverAuthority="

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/channel/server/IServerImpl;

    if-nez p1, :cond_1c

    goto :goto_1f

    :cond_1c
    invoke-virtual {p1}, Lcom/oplus/channel/server/IServerImpl;->destroy()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_26

    :goto_1f
    if-eqz p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    :goto_24
    monitor-exit p0

    return p1

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final destroyServer()V
    .registers 5

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "ServerChannel"

    const-string v1, "destroyServer"

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/WorkHandler;->quitSafely()V

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    const-string v1, "serverMap.keys()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "java.util.Collections.list(this)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    const-string v3, "it"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/oplus/channel/server/ServerChannel;->destroyBusinessServer(Ljava/lang/String;)Z

    goto :goto_33

    :cond_4a
    sget-object v0, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/ServerDI;->destroy()V

    goto :goto_57

    :cond_50
    const-string v0, "ServerChannel"

    const-string v1, "destroyServer, not need to destroy"

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_59

    :goto_57
    monitor-exit p0

    return-void

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSeqInt()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->seqInt:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final getServerProviderByAuthority(Ljava/lang/String;)Lcom/oplus/channel/server/provider/IServerProvider;
    .registers 5

    const-string p0, "serverAuthority"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/channel/server/IServerImpl;

    if-nez v0, :cond_33

    const-string v1, "getServerProviderByAuthority, server == null, serverAuthority="

    const-string v2, ", serverMap="

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li4/k0;->m(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ServerChannel"

    invoke-static {p1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    return-object v0
.end method

.method public final getSystemApiClient()Lcom/oplus/channel/server/factory/SystemApiClient;
    .registers 1

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->systemApiClient:Lcom/oplus/channel/server/factory/SystemApiClient;

    return-object p0
.end method

.method public final initChannel(Landroid/content/Context;Lcom/oplus/channel/server/factory/SystemApiClient;)V
    .registers 6

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p0

    :try_start_8
    const-string v0, "ServerChannel"

    const-string v1, "initChannel by Context"

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-direct {v0, p2, p1}, Lcom/oplus/channel/server/ServerChannel;->initChannelWithContext(Lcom/oplus/channel/server/factory/SystemApiClient;Landroid/content/Context;)V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final initChannel(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/channel/server/factory/SystemApiClient;)V
    .registers 9

    const-class p0, Lcom/oplus/channel/server/IUserContext;

    const-string v0, "userContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/ServerChannel;->serverMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_a
    const-string v1, "ServerChannel"

    const-string v2, "initChannel by IUserContext"

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_ca

    :try_start_11
    sget-object v1, Lcom/oplus/channel/server/ServerChannel;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_61

    sget-object v1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    new-instance v2, Lcom/oplus/channel/server/ServerChannel$initChannel$2$1$1;

    invoke-direct {v2, p1}, Lcom/oplus/channel/server/ServerChannel$initChannel$2$1$1;-><init>(Lcom/oplus/channel/server/IUserContext;)V

    const-string v3, "ServerDI"

    const-string v4, "single start, provider:"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_59

    invoke-virtual {v1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v3

    new-instance v4, Lcom/oplus/channel/server/ServerChannel$initChannel$lambda-4$lambda-1$$inlined$single$1;

    invoke-direct {v4, v2}, Lcom/oplus/channel/server/ServerChannel$initChannel$lambda-4$lambda-1$$inlined$single$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v4}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-interface {p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/oplus/channel/server/ServerChannel;->initChannelWithContext(Lcom/oplus/channel/server/factory/SystemApiClient;Landroid/content/Context;)V

    goto :goto_61

    :cond_59
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Object of the same class type are injected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_61
    :goto_61
    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_63
    .catchall {:try_start_11 .. :try_end_63} :catchall_64

    goto :goto_69

    :catchall_64
    move-exception v1

    :try_start_65
    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_69
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_ca

    if-eqz v1, :cond_c8

    :try_start_6f
    sget-object v2, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    new-instance v3, Lcom/oplus/channel/server/ServerChannel$initChannel$2$2$1$1;

    invoke-direct {v3, p1}, Lcom/oplus/channel/server/ServerChannel$initChannel$2$2$1$1;-><init>(Lcom/oplus/channel/server/IUserContext;)V

    const-string v4, "ServerDI"

    const-string v5, "single start, provider:"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_ad

    invoke-virtual {v2}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    new-instance v4, Lcom/oplus/channel/server/ServerChannel$initChannel$lambda-4$lambda-3$lambda-2$$inlined$single$1;

    invoke-direct {v4, v3}, Lcom/oplus/channel/server/ServerChannel$initChannel$lambda-4$lambda-3$lambda-2$$inlined$single$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-static {v4}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-interface {p1}, Lcom/oplus/channel/server/IUserContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/channel/server/ServerChannel;->initChannelWithContext(Lcom/oplus/channel/server/factory/SystemApiClient;Landroid/content/Context;)V

    goto :goto_b9

    :cond_ad
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Object of the same class type are injected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_b5
    .catchall {:try_start_6f .. :try_end_b5} :catchall_b5

    :catchall_b5
    move-exception p0

    :try_start_b6
    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :goto_b9
    const-string p0, "ServerChannel"

    const-string p1, "initChannel e:"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_b6 .. :try_end_c8} :catchall_ca

    :cond_c8
    monitor-exit v0

    return-void

    :catchall_ca
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final isChannelInitialed()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/oplus/channel/server/ServerChannel;->isInitialed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method
