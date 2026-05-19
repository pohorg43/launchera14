.class final Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $observerKey:Ljava/lang/String;

.field public final synthetic this$0:Lpantanal/app/manager/ServiceManagerProxy;


# direct methods
.method public constructor <init>(Lpantanal/app/manager/ServiceManagerProxy;Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;)V
    .registers 4

    iput-object p1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->$observerKey:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 14

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v0}, Lpantanal/app/manager/ServiceManagerProxy;->getObserveMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->$observerKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    invoke-virtual {v0}, Lpantanal/app/manager/ServiceManagerProxy;->getObserveMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->$observerKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_54

    iget-object v1, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->this$0:Lpantanal/app/manager/ServiceManagerProxy;

    iget-object v2, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iget-object p0, p0, Lpantanal/app/manager/ServiceManagerProxy$unObserveWithObserverKey$2$1;->$observerKey:Ljava/lang/String;

    invoke-virtual {v1}, Lpantanal/app/manager/ServiceManagerProxy;->getClientProxyManager()Lpantanal/app/manager/ClientProxyManager;

    move-result-object v1

    if-eqz v1, :cond_33

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpantanal/app/manager/ClientProxyManager;->getOrCreateClientProxyByEntrance(Lpantanal/app/bean/Entrance;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v1

    goto :goto_34

    :cond_33
    const/4 v1, 0x0

    :goto_34
    if-nez v1, :cond_4e

    sget-object v2, Ly8/c;->a:Ly8/c;

    const-string v3, "unObserveWithObserverKey failed,key = "

    const-string v4, ",clientProxy is null."

    invoke-static {v3, p0, v4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "CardServiceProxyImpl"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_4e
    if-eqz v1, :cond_54

    const/4 p0, 0x1

    invoke-interface {v1, v0, p0}, Lcom/oplus/channel/server/ClientProxy;->unObserve(Lkotlin/jvm/functions/Function1;Z)V

    :cond_54
    return-void
.end method
