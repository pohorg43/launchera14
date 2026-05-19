.class final Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/SuperChannelProxyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Lcom/oplus/channel/server/ClientProxy;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;

    invoke-direct {v0}, Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;-><init>()V

    sput-object v0, Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;->INSTANCE:Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/SuperChannelProxyManager$clientProxyMap$2;->invoke()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/concurrent/ConcurrentHashMap;
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

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method
