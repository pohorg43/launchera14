.class public abstract Lcom/oplus/channel/server/IServerBusiness;
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011J$\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\r\u001a\u00020\fH&J\b\u0010\u000e\u001a\u00020\fH&J\u0006\u0010\u000f\u001a\u00020\f¨\u0006\u0012"
    }
    d2 = {
        "Lcom/oplus/channel/server/IServerBusiness;",
        "",
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
        "Lh4/z;",
        "unMarkIdle",
        "markIdle",
        "startServer",
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


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic createClientProxy$default(Lcom/oplus/channel/server/IServerBusiness;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;ILjava/lang/Object;)Lcom/oplus/channel/server/ClientProxy;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/channel/server/IServerBusiness;->createClientProxy(Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createClientProxy"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract createClientProxy(Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;Lcom/oplus/channel/server/ICommandHandler;)Lcom/oplus/channel/server/ClientProxy;
.end method

.method public abstract destroyClientProxy(Ljava/lang/String;)Z
.end method

.method public abstract markIdle()V
.end method

.method public final startServer()V
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/channel/server/IServerBusiness;->unMarkIdle()V

    return-void
.end method

.method public abstract unMarkIdle()V
.end method
