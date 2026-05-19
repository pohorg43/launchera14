.class final Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/ServerChannel;->initChannelWithContext(Lcom/oplus/channel/server/factory/SystemApiClient;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/oplus/channel/server/IClientPuller;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u00020\u00032\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n"
    }
    d2 = {
        "",
        "",
        "it",
        "Lcom/oplus/channel/server/IClientPuller;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;

    invoke-direct {v0}, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;-><init>()V

    sput-object v0, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;->INSTANCE:Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lcom/oplus/channel/server/IClientPuller;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/channel/server/IClientPuller;"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ServerChannel"

    const-string v0, "initChannelWithContext,factory<IClientPuller>"

    invoke-static {p0, v0}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/channel/server/factory/PullerFactory;->INSTANCE:Lcom/oplus/channel/server/factory/PullerFactory;

    sget-object v0, Lcom/oplus/channel/server/utils/ServerDI;->INSTANCE:Lcom/oplus/channel/server/utils/ServerDI;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.oplus.channel.server.ClientConfig"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/oplus/channel/server/ClientConfig;

    invoke-virtual {p0, v0, v2, p1}, Lcom/oplus/channel/server/factory/PullerFactory;->createPuller(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)Lcom/oplus/channel/server/IClientPuller;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oplus/channel/server/ServerChannel$initChannelWithContext$1$1$2;->invoke(Ljava/util/List;)Lcom/oplus/channel/server/IClientPuller;

    move-result-object p0

    return-object p0
.end method
