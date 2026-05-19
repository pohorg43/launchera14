.class public final Lcom/oplus/channel/server/factory/DefaultPuller;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/channel/server/IClientPuller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/factory/DefaultPuller$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016R\u0016\u0010\b\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u00020\u00078\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\t\u001a\u0004\b\u000b\u0010\fR\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0010\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\tR\u001d\u0010\u0016\u001a\u00020\u00118B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"
    }
    d2 = {
        "Lcom/oplus/channel/server/factory/DefaultPuller;",
        "Lcom/oplus/channel/server/IClientPuller;",
        "Lh4/z;",
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
        "Lcom/oplus/channel/server/IUserContext;",
        "userContext",
        "Lcom/oplus/channel/server/IUserContext;",
        "contentUrl",
        "Landroid/content/Context;",
        "context$delegate",
        "Lh4/f;",
        "getContext",
        "()Landroid/content/Context;",
        "context",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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
.field public static final Companion:Lcom/oplus/channel/server/factory/DefaultPuller$Companion;

.field private static final TAG:Ljava/lang/String; = "DefaultPuller"


# instance fields
.field private final clientName:Ljava/lang/String;

.field private final contentUrl:Ljava/lang/String;

.field private final context$delegate:Lh4/f;

.field private final serverAuthority:Ljava/lang/String;

.field private final userContext:Lcom/oplus/channel/server/IUserContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/factory/DefaultPuller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/factory/DefaultPuller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/factory/DefaultPuller;->Companion:Lcom/oplus/channel/server/factory/DefaultPuller$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-class v0, Lcom/oplus/channel/server/IUserContext;

    const-string v1, "serverAuthority"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "clientName"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->serverAuthority:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->clientName:Ljava/lang/String;

    sget-object p1, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "the class are not injected"

    if-eqz p2, :cond_97

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p2

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v2, "null cannot be cast to non-null type kotlin.Lazy<T of com.oplus.channel.server.utils.ServerDI.injectSingle>"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lh4/f;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->context$delegate:Lh4/f;

    const/4 p2, 0x0

    :try_start_3f
    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_68

    invoke-virtual {p1}, Lcom/oplus/channel/server/utils/ServerDI;->getSingleInstanceMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_62

    check-cast p1, Lh4/f;

    invoke-static {p1}, Lcom/oplus/channel/server/utils/ServerDI;->access$injectNullable$lambda-1$lambda-0(Lh4/f;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_88

    :cond_62
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6e
    .catchall {:try_start_3f .. :try_end_6e} :catchall_6e

    :catchall_6e
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_88

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "injectNullable：iUserContext exception "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerDI"

    invoke-static {v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_88
    :goto_88
    check-cast p2, Lcom/oplus/channel/server/IUserContext;

    iput-object p2, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->serverAuthority:Ljava/lang/String;

    const-string p2, "content://"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->contentUrl:Ljava/lang/String;

    return-void

    :cond_97
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->context$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public getClientName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->clientName:Ljava/lang/String;

    return-object p0
.end method

.method public pullClient(Z)Z
    .registers 7

    const-string v0, "fetchClient:NONE shouldForceFetch = ["

    const-string v1, "] clientName = ["

    invoke-static {v0, p1, v1}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/DefaultPuller;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultPuller"

    invoke-static {v1, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->contentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/pull/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/DefaultPuller;->getClientName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/factory/DefaultPuller;->userContext:Lcom/oplus/channel/server/IUserContext;

    const/4 v2, 0x0

    if-nez v1, :cond_3e

    move-object v1, v2

    goto :goto_4c

    :cond_3e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "parse(uri)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Lcom/oplus/channel/server/IUserContext;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lh4/z;->a:Lh4/z;

    :goto_4c
    if-nez v1, :cond_5d

    invoke-direct {p0}, Lcom/oplus/channel/server/factory/DefaultPuller;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5d
    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
