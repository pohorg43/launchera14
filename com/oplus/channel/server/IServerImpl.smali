.class public final Lcom/oplus/channel/server/IServerImpl;
.super Lcom/oplus/channel/server/IServerBusiness;
.source ""

# interfaces
.implements Lcom/oplus/channel/server/provider/IServerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/IServerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 &2\u00020\u00012\u00020\u0002:\u0001&B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0003¢\u0006\u0004\b$\u0010%J\"\u0010\n\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J \u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0016\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0016\u001a\u00020\u0010H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016J\u0006\u0010\u0018\u001a\u00020\u0010R\u0016\u0010\u0019\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\"\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0\u001e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u001b8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006)²\u0006\u000e\u0010(\u001a\u00020\'8\n@\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/oplus/channel/server/IServerImpl;",
        "Lcom/oplus/channel/server/IServerBusiness;",
        "Lcom/oplus/channel/server/provider/IServerProvider;",
        "",
        "clientName",
        "Lcom/oplus/channel/server/ClientConfig;",
        "config",
        "Lcom/oplus/channel/server/ICommandHandler;",
        "commandHandler",
        "Lcom/oplus/channel/server/ClientProxy;",
        "createClientProxy",
        "",
        "destroyClientProxy",
        "callbackId",
        "",
        "data",
        "Lh4/z;",
        "runCallback",
        "",
        "Lcom/oplus/channel/server/data/Command;",
        "pullCommand",
        "getCommandList",
        "markIdle",
        "unMarkIdle",
        "destroy",
        "serverAuthority",
        "Ljava/lang/String;",
        "",
        "_idleState",
        "I",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "clientMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "getIdleState",
        "()I",
        "idleState",
        "<init>",
        "(Ljava/lang/String;)V",
        "Companion",
        "Lcom/oplus/channel/server/IClientPuller;",
        "puller",
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
.field public static final synthetic $$delegatedProperties:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/oplus/channel/server/IServerImpl$Companion;

.field public static final TAG:Ljava/lang/String; = "IServerImpl"


# instance fields
.field private volatile _idleState:I

.field private final clientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/channel/server/ClientProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final serverAuthority:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lz4/n;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference0Impl;

    const-class v2, Lcom/oplus/channel/server/IServerImpl;

    const-string v3, "puller"

    const-string v4, "<v#0>"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lz4/o;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/oplus/channel/server/IServerImpl;->$$delegatedProperties:[Lz4/n;

    new-instance v0, Lcom/oplus/channel/server/IServerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/IServerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/IServerImpl;->Companion:Lcom/oplus/channel/server/IServerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "serverAuthority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/channel/server/IServerBusiness;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/IServerImpl;->serverAuthority:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oplus/channel/server/IServerImpl;->_idleState:I

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static final createClientProxy$lambda-1$lambda-0(Lcom/oplus/channel/server/utils/DIValue;)Lcom/oplus/channel/server/IClientPuller;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/channel/server/utils/DIValue<",
            "Lcom/oplus/channel/server/IClientPuller;",
            ">;)",
            "Lcom/oplus/channel/server/IClientPuller;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/channel/server/IServerImpl;->$$delegatedProperties:[Lz4/n;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/channel/server/utils/DIValue;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/IClientPuller;

    return-object p0
.end method


# virtual methods
.method public createClientProxy(Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;)Lcom/oplus/channel/server/ClientProxy;
    .registers 10

    const-class v0, Lcom/oplus/channel/server/IClientPuller;

    const-string v1, "clientName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "config"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "IServerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createClientProxy clientName = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], config = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_32
    iget-object v2, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string v2, "IServerImpl"

    const-string v3, "createClientProxy,injectFactory<IClientPuller>,serverAuthority:"

    iget-object v4, p0, Lcom/oplus/channel/server/IServerImpl;->serverAuthority:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/oplus/channel/server/IServerImpl;->serverAuthority:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v2}, Lcom/oplus/channel/server/utils/ServerDI;->getFactoryInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a5

    const-string v4, "ServerDI"

    const-string v5, "injectFactory, args:"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oplus/channel/server/utils/ServerDI;->getFactoryInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_9d

    new-instance v2, Lcom/oplus/channel/server/utils/DIValue;

    invoke-static {v3}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oplus/channel/server/utils/DIValue;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/oplus/channel/server/ClientProxyImpl;

    invoke-static {v2}, Lcom/oplus/channel/server/IServerImpl;->createClientProxy$lambda-1$lambda-0(Lcom/oplus/channel/server/utils/DIValue;)Lcom/oplus/channel/server/IClientPuller;

    move-result-object v2

    invoke-direct {v0, p1, v2, p2, p3}, Lcom/oplus/channel/server/ClientProxyImpl;-><init>(Ljava/lang/String;Lcom/oplus/channel/server/IClientPuller;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;)V

    iget-object p0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catchall {:try_start_32 .. :try_end_9b} :catchall_da

    monitor-exit v1

    return-object v0

    :cond_9d
    :try_start_9d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "the factory are not injected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "the class are not injected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ad
    const-string p2, "IServerImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createClientProxy error! We\'ve created it ! clientName = ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "],"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p1, "clientMap[clientName]!!"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/oplus/channel/server/ClientProxy;
    :try_end_d8
    .catchall {:try_start_9d .. :try_end_d8} :catchall_da

    monitor-exit v1

    return-object p0

    :catchall_da
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final destroy()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    const-string v1, "IServerImpl"

    const-string v2, "destroy"

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const-string v2, "clientMap.keys()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "java.util.Collections.list(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "it"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/oplus/channel/server/IServerImpl;->destroyClientProxy(Ljava/lang/String;)Z
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_39

    goto :goto_22

    :cond_37
    monitor-exit v0

    return-void

    :catchall_39
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public destroyClientProxy(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "clientName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_8
    const-string v1, "IServerImpl"

    const-string v2, "destroyClientProxy, clientName="

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/ClientProxy;

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_21

    move p1, v1

    goto :goto_25

    :cond_21
    const/4 v2, 0x0

    invoke-static {p0, v1, p1, v2}, Lcom/oplus/channel/server/ClientProxy$DefaultImpls;->destroy$default(Lcom/oplus/channel/server/ClientProxy;ZILjava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_27

    :goto_25
    monitor-exit v0

    return p1

    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public getCommandList(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    const-string v0, "clientName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/ClientProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommandList, clientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clientProxy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IServerImpl"

    invoke-static {v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2f

    const/4 p0, 0x0

    goto :goto_33

    :cond_2f
    invoke-interface {p0}, Lcom/oplus/channel/server/ClientProxy;->getCommandList()Ljava/util/List;

    move-result-object p0

    :goto_33
    if-nez p0, :cond_37

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_37
    return-object p0
.end method

.method public getIdleState()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/IServerImpl;->_idleState:I

    return p0
.end method

.method public markIdle()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/channel/server/IServerImpl;->_idleState:I

    return-void
.end method

.method public pullCommand(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/channel/server/data/Command;",
            ">;"
        }
    .end annotation

    const-string v0, "clientName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/ClientProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pullCommand, clientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clientProxy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IServerImpl"

    invoke-static {v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_2f

    const/4 p0, 0x0

    goto :goto_33

    :cond_2f
    invoke-interface {p0}, Lcom/oplus/channel/server/ClientProxy;->pullCommand()Ljava/util/List;

    move-result-object p0

    :goto_33
    if-nez p0, :cond_37

    sget-object p0, Li4/y;->a:Li4/y;

    :cond_37
    return-object p0
.end method

.method public runCallback(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    const-string v0, "clientName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callbackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/channel/server/IServerImpl;->clientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/channel/server/ClientProxy;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runCallback, clientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", clientProxy="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IServerImpl"

    invoke-static {v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_38

    goto :goto_3b

    :cond_38
    invoke-interface {p0, p2, p3}, Lcom/oplus/channel/server/ClientProxy;->runCallback(Ljava/lang/String;[B)V

    :goto_3b
    return-void
.end method

.method public unMarkIdle()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/channel/server/IServerImpl;->_idleState:I

    return-void
.end method
