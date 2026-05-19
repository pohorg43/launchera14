.class public final Lcom/oplus/channel/server/factory/AlwaysPuller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/channel/server/IClientPuller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000W\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t*\u0001$\u0018\u0000 /2\u00020\u0001:\u0001/B\u001f\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b-\u0010.J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0017R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\f\u001a\u00020\t8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\u000b\u001a\u0004\b\r\u0010\u000eR\u0019\u0010\u0010\u001a\u00020\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u000bR\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0016\u0010!\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010\"R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u001d\u0010,\u001a\u00020\'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+¨\u00060"
    }
    d2 = {
        "Lcom/oplus/channel/server/factory/AlwaysPuller;",
        "Lcom/oplus/channel/server/IClientPuller;",
        "Lh4/z;",
        "rebindClient",
        "checkRebindClient",
        "destroy",
        "",
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
        "getClientConfig",
        "()Lcom/oplus/channel/server/ClientConfig;",
        "Lcom/oplus/channel/server/IUserContext;",
        "userContext",
        "Lcom/oplus/channel/server/IUserContext;",
        "contentUrl",
        "Landroid/os/Handler;",
        "handler",
        "Landroid/os/Handler;",
        "Landroid/os/HandlerThread;",
        "handlerThread",
        "Landroid/os/HandlerThread;",
        "isDestroyed",
        "Z",
        "",
        "rebindCount",
        "I",
        "checkRebindCount",
        "com/oplus/channel/server/factory/AlwaysPuller$connection$1",
        "connection",
        "Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;",
        "Landroid/content/Context;",
        "context$delegate",
        "Lh4/f;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
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
.field public static final Companion:Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;

.field public static final INTERVAL_REBIND:J = 0x7d0L

.field public static final MAX_REBIND_COUNT:I = 0x5

.field public static final NOTIFY_NO_DELAY:I = 0x8000

.field public static final TAG:Ljava/lang/String; = "AlwaysPuller"


# instance fields
.field private volatile checkRebindCount:I

.field private final clientConfig:Lcom/oplus/channel/server/ClientConfig;

.field private final clientName:Ljava/lang/String;

.field private final connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

.field private final contentUrl:Ljava/lang/String;

.field private final context$delegate:Lh4/f;

.field private handler:Landroid/os/Handler;

.field private final handlerThread:Landroid/os/HandlerThread;

.field private volatile isDestroyed:Z

.field private volatile rebindCount:I

.field private final serverAuthority:Ljava/lang/String;

.field private final userContext:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/factory/AlwaysPuller;->Companion:Lcom/oplus/channel/server/factory/AlwaysPuller$Companion;

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

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->serverAuthority:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    sget-object p1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class p3, Landroid/content/Context;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "the class are not injected"

    if-eqz p2, :cond_b2

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

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->context$delegate:Lh4/f;

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

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->serverAuthority:Ljava/lang/String;

    const-string p2, "content://"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->contentUrl:Ljava/lang/String;

    new-instance p1, Lcom/oplus/channel/server/factory/AlwaysPuller$handlerThread$1;

    invoke-direct {p1, p0}, Lcom/oplus/channel/server/factory/AlwaysPuller$handlerThread$1;-><init>(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handlerThread:Landroid/os/HandlerThread;

    new-instance p2, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-direct {p2, p0}, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;-><init>(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    iput-object p2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindClient()V

    return-void

    :cond_b2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindClient$lambda-0(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    return-void
.end method

.method public static final synthetic access$checkRebindClient(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindClient()V

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$getRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    return p0
.end method

.method public static final synthetic access$isDestroyed$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->isDestroyed:Z

    return p0
.end method

.method public static final synthetic access$rebindClient(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindClient()V

    return-void
.end method

.method public static final synthetic access$setCheckRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    return-void
.end method

.method public static final synthetic access$setHandler$p(Lcom/oplus/channel/server/factory/AlwaysPuller;Landroid/os/Handler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static final synthetic access$setRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V
    .registers 2

    iput p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    return-void
.end method

.method private final checkRebindClient()V
    .registers 7

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_20

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    if-nez v0, :cond_a

    goto :goto_20

    :cond_a
    iget-object v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    if-nez v0, :cond_f

    goto :goto_1f

    :cond_f
    new-instance v1, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    iget p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    add-int/lit8 p0, p0, 0x1

    int-to-long v2, p0

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1f
    return-void

    :cond_20
    :goto_20
    const-string p0, "AlwaysPuller"

    const-string v0, "checkRebindClient: reach the max rebind count, return"

    invoke-static {p0, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final checkRebindClient$lambda-0(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "checkRebindClient, checkRebindCount="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysPuller"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->isDestroyed:Z

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientConfig()Lcom/oplus/channel/server/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/channel/server/ClientConfig;->getNeedKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindCount:I

    if-lez v0, :cond_34

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->rebindClient()V

    iget v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindCount:I

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->checkRebindClient()V

    :cond_34
    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->context$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private final rebindClient()V
    .registers 5

    const-string v0, "rebindClient, clientName="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aliveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v1}, Lcom/oplus/channel/server/ClientConfig;->getAliveType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needKeepAlive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v1}, Lcom/oplus/channel/server/ClientConfig;->getNeedKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysPuller"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v2}, Lcom/oplus/channel/server/ClientConfig;->getClientPackage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v3}, Lcom/oplus/channel/server/ClientConfig;->getServiceComponent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v1}, Lcom/oplus/channel/server/ClientConfig;->getAliveType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6e

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const/4 v3, 0x1

    if-nez v1, :cond_5b

    goto :goto_62

    :cond_5b
    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-interface {v1, v0, v2, v3}, Lcom/oplus/channel/server/IUserContext;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :goto_62
    if-nez v2, :cond_87

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_87

    :cond_6e
    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const/16 v3, 0x21

    if-nez v1, :cond_75

    goto :goto_7c

    :cond_75
    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-interface {v1, v0, v2, v3}, Lcom/oplus/channel/server/IUserContext;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :goto_7c
    if-nez v2, :cond_87

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_87
    :goto_87
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 5

    const-string v0, "AlwaysPuller"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->isDestroyed:Z

    const/4 v1, 0x0

    :try_start_b
    iget-object v2, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->connection:Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;

    iget-object v3, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v3, :cond_13

    move-object v3, v1

    goto :goto_18

    :cond_13
    invoke-interface {v3, v2}, Lcom/oplus/channel/server/IUserContext;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v3, Lh4/z;->a:Lh4/z;

    :goto_18
    if-nez v3, :cond_27

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-static {v2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "destroy, unbindService error:"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    iget-object v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3f

    goto :goto_42

    :cond_3f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_42
    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public final getClientConfig()Lcom/oplus/channel/server/ClientConfig;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    return-object p0
.end method

.method public getClientName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientName:Ljava/lang/String;

    return-object p0
.end method

.method public pullClient(Z)Z
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "fetchClient:ALIVE_TYPE_ALWAYS shouldForceFetch = ["

    const-string v1, "] clientName = ["

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], clientConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlwaysPuller"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_69

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->contentUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pull/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const v3, 0x8000

    if-nez v1, :cond_49

    move-object v1, v2

    goto :goto_57

    :cond_49
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "parse(uri)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4, v2, v3}, Lcom/oplus/channel/server/IUserContext;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :goto_57
    if-nez v1, :cond_68

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    :cond_68
    return v0

    :cond_69
    const/16 p1, 0x5d

    const/4 v3, 0x0

    :try_start_6c
    iget-object v4, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    if-nez v4, :cond_72

    move-object v4, v2

    goto :goto_7c

    :cond_72
    iget-object v5, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v5}, Lcom/oplus/channel/server/ClientConfig;->getProviderAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/oplus/channel/server/IUserContext;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4

    :goto_7c
    if-nez v4, :cond_91

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/channel/server/factory/AlwaysPuller;->clientConfig:Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {v5}, Lcom/oplus/channel/server/ClientConfig;->getProviderAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2

    goto :goto_92

    :cond_91
    move-object v2, v4

    :goto_92
    if-nez v2, :cond_b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pullClient:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " == null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b2
    sget-object v4, Lcom/oplus/channel/server/data/CommandDataManager;->INSTANCE:Lcom/oplus/channel/server/data/CommandDataManager;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oplus/channel/server/data/CommandDataManager;->queryCachedCommandData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_bf

    goto :goto_c4

    :cond_bf
    const-string v6, "RESULT_BATCH_CALLBACK_SUPPORT"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_c4
    const-string v6, "pull"

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7, v5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_d1

    goto :goto_db

    :cond_d1
    const-string v6, "consumed"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v0, :cond_db

    move v6, v0

    goto :goto_dc

    :cond_db
    :goto_db
    move v6, v3

    :goto_dc
    if-eqz v6, :cond_e5

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/oplus/channel/server/data/CommandDataManager;->removeCachedCommandData(Ljava/lang/String;)Landroid/os/Bundle;

    :cond_e5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchClient:ALIVE_TYPE_ALWAYS clientName = ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] result = ["

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_108} :catch_113
    .catchall {:try_start_6c .. :try_end_108} :catchall_111

    if-eqz v5, :cond_10b

    goto :goto_10c

    :cond_10b
    move v0, v3

    :goto_10c
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    move v3, v0

    goto :goto_131

    :catchall_111
    move-exception p0

    goto :goto_132

    :catch_113
    move-exception p0

    :try_start_114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pullClient error e = ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/channel/server/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_114 .. :try_end_12b} :catchall_111

    if-nez v2, :cond_12e

    goto :goto_131

    :cond_12e
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :goto_131
    return v3

    :goto_132
    if-nez v2, :cond_135

    goto :goto_138

    :cond_135
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :goto_138
    throw p0
.end method
