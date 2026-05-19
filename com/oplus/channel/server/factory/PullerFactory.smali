.class public final Lcom/oplus/channel/server/factory/PullerFactory;
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
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005R\u0016\u0010\t\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/channel/server/factory/PullerFactory;",
        "",
        "",
        "serverAuthority",
        "clientName",
        "Lcom/oplus/channel/server/ClientConfig;",
        "clientConfig",
        "Lcom/oplus/channel/server/IClientPuller;",
        "createPuller",
        "TAG",
        "Ljava/lang/String;",
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
.field public static final INSTANCE:Lcom/oplus/channel/server/factory/PullerFactory;

.field private static final TAG:Ljava/lang/String; = "PullerFactory"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/factory/PullerFactory;

    invoke-direct {v0}, Lcom/oplus/channel/server/factory/PullerFactory;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/factory/PullerFactory;->INSTANCE:Lcom/oplus/channel/server/factory/PullerFactory;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPuller(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)Lcom/oplus/channel/server/IClientPuller;
    .registers 5

    const-string p0, "serverAuthority"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientConfig"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createPuller serverAuthority = ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], clientName = ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], clientConfig = ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PullerFactory"

    invoke-static {v0, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/oplus/channel/server/ClientConfig;->getAliveType()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_53

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4d

    new-instance p0, Lcom/oplus/channel/server/factory/DefaultPuller;

    invoke-direct {p0, p1, p2}, Lcom/oplus/channel/server/factory/DefaultPuller;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_4d
    new-instance p0, Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/channel/server/factory/AlwaysPuller;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V

    goto :goto_58

    :cond_53
    new-instance p0, Lcom/oplus/channel/server/factory/CallPuller;

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/channel/server/factory/CallPuller;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V

    :goto_58
    return-object p0
.end method
